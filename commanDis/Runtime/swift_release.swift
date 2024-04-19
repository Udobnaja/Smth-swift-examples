//
//  swift_release.swift
//  commanDis
//
//  Created by Anna Udobnaja on 20.03.2024.
//

import Foundation

/*
We're demonstrating how names change with and without symbol mangling,
and how you can utilize Swift release.
 swiftc -dump-ast start.swift -o start.ast.swift
 swiftc -emit-sil start.swift -o start.sil.swift
 swiftc -emit-ir start.swift -o start.ll
*/

/*
func swift_release(_ object: AnyObject) {

}
*/

/* @_silgen_name("swift_release")
func swift_release(_ object: AnyObject) {

}
*/
