vim.g.mapleader = " "

vim.keymap.set("n", "-", vim.cmd.Ex)

-- clear current search highlight by tapping //
vim.keymap.set("n", "//", vim.cmd.nohlsearch, { silent = true })

-- Moves Up/Down the highlighted selection
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Appends next line (Classical J on ViM) and add a space a the end.
vim.keymap.set("n", "J", "mzJ`z")

-- Keep cursor in the middle of the screen, please
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")


vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
-- Delete highlighted selection into the void register and the paste it over.
vim.keymap.set("x", "<leader>p", "\"_dP")

-- next greatest remap ever : asbjornHaland
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")


vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")


-- Capital Q is a NOOP
vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Jump to the end of the file
vim.keymap.set("n", "<CR>", "G")

-- Jump to the start of the file
vim.keymap.set("n", "<BS>", "gg")

-- Quickly select text you just pasted
vim.keymap.set("n", "gV", "`[v`]")

-- Reload current file in nViM
vim.keymap.set("n", "<leader>vr", ":so %<CR>")
