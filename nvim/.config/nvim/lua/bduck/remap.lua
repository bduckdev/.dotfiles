vim.g.mapleader = " "
--vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- search and replace

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- search and replace

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- tmux-sessionizer

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- make executable and run
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

---- live server (need to decide how i want to implement
--vim.api.nvim_create_user_command("LSS", "LiveServerStart", {})
--vim.api.nvim_create_user_command("LSX", "LiveServerStop", {})

-- go to global todos
vim.keymap.set("n", "gt", ":e ~/Documents/GLOBAL_TODOS.md<CR>")

-- go back + go foward
vim.keymap.set("n", "gb", ":bprev<CR>")
vim.keymap.set("n", "gf", ":bnext<CR>")
