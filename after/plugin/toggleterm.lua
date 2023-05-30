require("toggleterm").setup({
	start_in_insert = true,
})

vim.keymap.set("n", "<leader>t", ":ToggleTerm size=10 direction=horizontal<CR>")

function _G.set_terminal_keymaps()
	local opts = { buffer = 0 }
	vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
	vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
end

vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
