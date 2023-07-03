local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.keymap.set

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)


keymap("v", "<", "<gv^", opts)
keymap("v", ">", ">gv^", opts)

keymap("n", "<S-l>", ":tabnext<CR>", opts)
keymap("n", "<S-h>", ":tabprevious<CR>", opts)

keymap("n", "<leader>q", ":q<CR>", opts)


local open_or_move_to_tab = function()
    local term = "terminal"
    if vim.fn.bufexists(term) then
        vim.cmd(":drop " .. term)
    else
        vim.cmd(":tabnew + " .. term .. "<CR>")
    end
end

keymap("n", "<leader>t", open_or_move_to_tab, opts)
vim.cmd("tnoremap <esc> <C-\\><C-N>")
