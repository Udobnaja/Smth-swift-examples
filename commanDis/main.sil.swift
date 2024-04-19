sil_stage canonical

import Builtin
import Swift
import SwiftShims

import Foundation

class Runtime {
  @objc deinit
  init()
}

func main()

// main
sil @main : $@convention(c) (Int32, UnsafeMutablePointer<Optional<UnsafeMutablePointer<Int8>>>) -> Int32 {
bb0(%0 : $Int32, %1 : $UnsafeMutablePointer<Optional<UnsafeMutablePointer<Int8>>>):
  // function_ref main()
  %2 = function_ref @$s4mainAAyyF : $@convention(thin) () -> () // user: %3
  %3 = apply %2() : $@convention(thin) () -> ()
  %4 = integer_literal $Builtin.Int32, 0          // user: %5
  %5 = struct $Int32 (%4 : $Builtin.Int32)        // user: %6
  return %5 : $Int32                              // id: %6
} // end sil function 'main'

// Runtime.deinit
sil hidden @$s4main7RuntimeCfd : $@convention(method) (@guaranteed Runtime) -> @owned Builtin.NativeObject {
// %0 "self"                                      // users: %2, %1
bb0(%0 : $Runtime):
  debug_value %0 : $Runtime, let, name "self", argno 1, implicit // id: %1
  %2 = unchecked_ref_cast %0 : $Runtime to $Builtin.NativeObject // user: %3
  return %2 : $Builtin.NativeObject               // id: %3
} // end sil function '$s4main7RuntimeCfd'

// Runtime.__deallocating_deinit
sil hidden @$s4main7RuntimeCfD : $@convention(method) (@owned Runtime) -> () {
// %0 "self"                                      // users: %3, %1
bb0(%0 : $Runtime):
  debug_value %0 : $Runtime, let, name "self", argno 1, implicit // id: %1
  // function_ref Runtime.deinit
  %2 = function_ref @$s4main7RuntimeCfd : $@convention(method) (@guaranteed Runtime) -> @owned Builtin.NativeObject // user: %3
  %3 = apply %2(%0) : $@convention(method) (@guaranteed Runtime) -> @owned Builtin.NativeObject // user: %4
  %4 = unchecked_ref_cast %3 : $Builtin.NativeObject to $Runtime // user: %5
  dealloc_ref %4 : $Runtime                       // id: %5
  %6 = tuple ()                                   // user: %7
  return %6 : $()                                 // id: %7
} // end sil function '$s4main7RuntimeCfD'

// Runtime.__allocating_init()
sil hidden [exact_self_class] @$s4main7RuntimeCACycfC : $@convention(method) (@thick Runtime.Type) -> @owned Runtime {
// %0 "$metatype"
bb0(%0 : $@thick Runtime.Type):
  %1 = alloc_ref $Runtime                         // user: %3
  // function_ref Runtime.init()
  %2 = function_ref @$s4main7RuntimeCACycfc : $@convention(method) (@owned Runtime) -> @owned Runtime // user: %3
  %3 = apply %2(%1) : $@convention(method) (@owned Runtime) -> @owned Runtime // user: %4
  return %3 : $Runtime                            // id: %4
} // end sil function '$s4main7RuntimeCACycfC'

// Runtime.init()
sil hidden @$s4main7RuntimeCACycfc : $@convention(method) (@owned Runtime) -> @owned Runtime {
// %0 "self"                                      // users: %2, %1
bb0(%0 : $Runtime):
  debug_value %0 : $Runtime, let, name "self", argno 1, implicit // id: %1
  return %0 : $Runtime                            // id: %2
} // end sil function '$s4main7RuntimeCACycfc'

// main()
sil hidden @$s4mainAAyyF : $@convention(thin) () -> () {
bb0:
  %0 = metatype $@thick Runtime.Type              // user: %2
  // function_ref Runtime.__allocating_init()
  %1 = function_ref @$s4main7RuntimeCACycfC : $@convention(method) (@thick Runtime.Type) -> @owned Runtime // user: %2
  %2 = apply %1(%0) : $@convention(method) (@thick Runtime.Type) -> @owned Runtime // users: %4, %3
  debug_value %2 : $Runtime, let, name "objc"     // id: %3
  strong_release %2 : $Runtime                    // id: %4
  %5 = tuple ()                                   // user: %6
  return %5 : $()                                 // id: %6
} // end sil function '$s4mainAAyyF'

sil_vtable Runtime {
  #Runtime.init!allocator: (Runtime.Type) -> () -> Runtime : @$s4main7RuntimeCACycfC	// Runtime.__allocating_init()
  #Runtime.deinit!deallocator: @$s4main7RuntimeCfD	// Runtime.__deallocating_deinit
}



// Mappings from '#fileID' to '#filePath':
//   'main/main.swift' => 'main.swift'


