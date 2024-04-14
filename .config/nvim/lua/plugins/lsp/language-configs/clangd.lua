return {
    cmd = {
        "clangd",
        "--all-scopes-completion",
        "--background-index",
        "--clang-tidy",
        "--compile_args_from=filesystem",
        "--completion-style=detailed",
        "--fallback-style=llvm",
        "--function-arg-placeholders",
        "--header-insertion=iwyu",
    }
}
