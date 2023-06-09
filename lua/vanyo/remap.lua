-- Window movement
vim.keymap.set("n", "<C-J>", "<C-W><C-J>", { noremap = true, desc = "Move to lower panel" })
vim.keymap.set("n", "<C-K>", "<C-W><C-K>", { noremap = true, desc = "Move to upper panel" })
vim.keymap.set("n", "<C-L>", "<C-W><C-L>", { noremap = true, desc = "Move to right panel" })
vim.keymap.set("n", "<C-H>", "<C-W><C-H>", { noremap = true, desc = "Move to left panel" })

-- Moving between terminal and non-terminal windows
-- Source: https://github.com/akinsho/toggleterm.nvim
vim.keymap.set("n", "tt", ":ToggleTerm<CR>", { noremap = true, desc = "toggle terminal" })
function _G.set_terminal_keymaps()
	local opts = { buffer = 0 }
	-- Want to keep <esc> for vim mode in terminal, so need to use 'jk'
	--vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
	vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
	vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
	vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
	vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
	vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
	vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
end
-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd("autocmd! TermOpen term://*toggleterm#* lua set_terminal_keymaps()")

-- Yanking that makes sense to me
vim.keymap.set("n", "Y", "yy", { noremap = true, desc = "yank entire line" })
vim.keymap.set("n", "yy", "y$", { noremap = true, desc = "yank to end of line" })

-- accessing marks
vim.keymap.set("n", "`", "'", { noremap = true })
vim.keymap.set("n", "'", "`", { noremap = true })

-- vertical movement
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true })
vim.keymap.set("i", ";t", "<esc>gg", { noremap = true })
vim.keymap.set("i", ";b", "<esc>G", { noremap = true })
vim.keymap.set("n", "<leader>t", "<esc>gg", { noremap = true })
vim.keymap.set("n", "<leader>b", "<esc>G", { noremap = true })
vim.keymap.set("v", "<leader>t", "<esc>gg", { noremap = true })
vim.keymap.set("v", "<leader>b", "<esc>G", { noremap = true })

-- Just save damn it
vim.keymap.set("i", ":w", "<esc>:w<CR>", { noremap = true })

-- search stuff
vim.keymap.set("n", "<leader>/", ":noh<CR>", { noremap = true, desc = "turn off highlighting" })
