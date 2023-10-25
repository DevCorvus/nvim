local telescope = require("telescope")
local builtin = require("telescope.builtin")

telescope.setup({
    defaults = {
        file_ignore_patterns = {
            ".git/",
            "node_modules",
            "build",
            "dist",
            "%.lock",
        },
        layout_config = {
            horizontal = {
                preview_cutoff = 0,
            },
        },
    },
    pickers = {
        find_files = {
            hidden = true,
        },
    },
})

vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
vim.keymap.set("n", "<leader>ps", function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set("n", "<leader>vh", builtin.help_tags, {})
