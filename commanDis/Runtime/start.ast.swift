(source_file "start.swift"
  (import_decl range=[start.swift:8:1 - line:8:8] 'Foundation')
  (func_decl range=[start.swift:10:1 - line:12:1] "runtime()" interface type='() -> ()' access=internal
    (parameter_list range=[start.swift:10:13 - line:10:14])
    (call_expr type='()' location=start.swift:11:5 range=[start.swift:11:5 - line:11:23] nothrow
      (declref_expr type='(Any..., String, String) -> ()' location=start.swift:11:5 range=[start.swift:11:5 - line:11:5] decl=Swift.(file).print(_:separator:terminator:) function_ref=single)
      (argument_list labels=_:separator:terminator:
        (argument
          (vararg_expansion_expr implicit type='Any...' location=start.swift:11:11 range=[start.swift:11:11 - line:11:11]
            (array_expr implicit type='Any...' location=start.swift:11:11 range=[start.swift:11:11 - line:11:11] initializer=**NULL**
              (erasure_expr implicit type='Any' location=start.swift:11:11 range=[start.swift:11:11 - line:11:11]
                (string_literal_expr type='String' location=start.swift:11:11 range=[start.swift:11:11 - line:11:11] encoding=utf8 value="START Smth" builtin_initializer=Swift.(file).String extension.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:) initializer=**NULL**)))))
        (argument label=separator
          (default_argument_expr implicit type='String' location=start.swift:11:10 range=[start.swift:11:10 - line:11:10] default_args_owner=Swift.(file).print(_:separator:terminator:) param=1))
        (argument label=terminator
          (default_argument_expr implicit type='String' location=start.swift:11:10 range=[start.swift:11:10 - line:11:10] default_args_owner=Swift.(file).print(_:separator:terminator:) param=2))))))