return {
    "famiu/bufdelete.nvim",
    config = function()
        local wk = require("which-key")

        vim.keymap.set("n", "<leader>bd", "<CMD>Bdelete<CR>")
        wk.register({ ["<leader>bd"] = "Delete current buffer" })

        -- Lua function to delete all buffers except the current one
        local delete_other_buffers = function()
            local all_buffers = vim.api.nvim_list_bufs()
            local current_buffer = vim.api.nvim_get_current_buf()
            local buffers_to_delete = {}

            for _, buf in ipairs(all_buffers) do
                if buf ~= current_buffer and vim.api.nvim_buf_is_loaded(buf) then
                    table.insert(buffers_to_delete, buf)
                end
            end

            -- Requires the 'bufdelete.nvim' plugin
            if #buffers_to_delete > 0 then
                require("bufdelete").bufdelete(buffers_to_delete, true)
            end
        end

        vim.keymap.set("n", "<leader>bo", delete_other_buffers, { silent = true, noremap = true })
        wk.register({ ["<leader>bo"] = "Delete all other buffers" })
    end
}
