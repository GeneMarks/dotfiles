return {
    "rmagatti/auto-session",
    opts = {
        log_level = "error",
        auto_session_suppress_dirs = {
            "~/",
            "~/Projects",
            "~/Desktop",
            "~/Downloads",
            "/",
        },
        bypass_session_save_file_types = {
            "fugitive",
        },
    },
}
