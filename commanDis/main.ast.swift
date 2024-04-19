(source_file "main.swift"
  (import_decl range=[main.swift:8:1 - line:8:8] 'Foundation')
  (func_decl range=[main.swift:9:1 - line:11:1] "runtime()" interface type='() -> ()' access=internal
    (parameter_list range=[main.swift:9:13 - line:9:14])
    (call_expr type='()' location=main.swift:10:5 range=[main.swift:10:5 - line:10:23] nothrow
      (declref_expr type='(Any..., String, String) -> ()' location=main.swift:10:5 range=[main.swift:10:5 - line:10:5] decl=Swift.(file).print(_:separator:terminator:) function_ref=single)
      (argument_list labels=_:separator:terminator:
        (argument
          (vararg_expansion_expr implicit type='Any...' location=main.swift:10:11 range=[main.swift:10:11 - line:10:11]
            (array_expr implicit type='Any...' location=main.swift:10:11 range=[main.swift:10:11 - line:10:11] initializer=**NULL**
              (erasure_expr implicit type='Any' location=main.swift:10:11 range=[main.swift:10:11 - line:10:11]
                (string_literal_expr type='String' location=main.swift:10:11 range=[main.swift:10:11 - line:10:11] encoding=utf8 value="START Smth" builtin_initializer=Swift.(file).String extension.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:) initializer=**NULL**)))))
        (argument label=separator
          (default_argument_expr implicit type='String' location=main.swift:10:10 range=[main.swift:10:10 - line:10:10] default_args_owner=Swift.(file).print(_:separator:terminator:) param=1))
        (argument label=terminator
          (default_argument_expr implicit type='String' location=main.swift:10:10 range=[main.swift:10:10 - line:10:10] default_args_owner=Swift.(file).print(_:separator:terminator:) param=2)))))
  (top_level_code_decl range=[main.swift:13:1 - line:13:9]
    (brace_stmt implicit range=[main.swift:13:1 - line:13:9]
      (call_expr type='()' location=main.swift:13:1 range=[main.swift:13:1 - line:13:9] nothrow
        (declref_expr type='() -> ()' location=main.swift:13:1 range=[main.swift:13:1 - line:13:1] decl=main.(file).runtime()@main.swift:9:6 function_ref=single)
        (argument_list)))))