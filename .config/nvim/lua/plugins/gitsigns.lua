return {
    "lewis6991/gitsigns.nvim",
    config = function()
        require("gitsigns").setup({
            on_attach = function(bufnr)
                local gs = package.loaded.gitsigns

                local function map(mode, l, r, opts)
                    opts = opts or {}
                    opts.buffer = bufnr
                    vim.keymap.set(mode, l, r, opts)
                end

                local wk = require("which-key")

                -- Navigation
                map('n', ']c', function()
                    if vim.wo.diff then return ']c' end
                    vim.schedule(function() gs.next_hunk() end)
                    return '<Ignore>'
                end, {expr=true})
                wk.register({ ["]c"] = "Next hunk" })

                map('n', '[c', function()
                    if vim.wo.diff then return '[c' end
                    vim.schedule(function() gs.prev_hunk() end)
                    return '<Ignore>'
                end, {expr=true})
                wk.register({ ["[c"] = "Previous hunk" })

                -- Actions
                map('n', '<leader>hs', gs.stage_hunk)
                map('n', '<leader>hr', gs.reset_hunk)
                map('v', '<leader>hs', function() gs.stage_hunk { vim.fn.line('.'), vim.fn.line('v') } end)
                map('v', '<leader>hr', function() gs.reset_hunk { vim.fn.line('.'), vim.fn.line('v') } end)
                map('n', '<leader>hS', gs.stage_buffer)
                map('n', '<leader>hu', gs.undo_stage_hunk)
                map('n', '<leader>hR', gs.reset_buffer)
                map('n', '<leader>hp', gs.preview_hunk)
                map('n', '<leader>hb', gs.toggle_current_line_blame)
                map('n', '<leader>hd', gs.diffthis)
                map('n', '<leader>hl', gs.toggle_deleted)

                wk.register({
                    h = {
                        name = "Gitsigns",
                        s = "Stage hunk",
                        r = "Reset hunk",
                        S = "Stage buffer",
                        u = "Undo stage hunk",
                        R = "Reset buffer",
                        p = "Preview hunk",
                        b = "Toggle line blame",
                        l = "Toggle deleted",
                        d = "Diff this",
                    }
                }, { prefix = "<leader>" })
            end
        })
    end
}
