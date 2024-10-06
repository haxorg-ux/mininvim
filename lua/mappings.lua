local map = vim.keymap.set

-- mapeos generales
map("n", "<C-s>", "<cmd> w <CR>")
map("i", "jk", "<ESC>")
map("n", "<C-c>", "<cmd> %y+ <CR>")
map("n", "<C-q>", ":q<CR>")

map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

-- vim.keymap.set("n", "<leader>rn", ":set relativenumber!<CR>")
map("n", "<leader>n", "<cmd>set nu!<CR>", { desc = "Toggle line number" })
map("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "Toggle relative number" })

-- nvimtree
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })
map("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "nvimtree focus window" })

-- telescope
map("n", "<leader>ff", "<cmd> Telescope find_files <CR>")
map("n", "<leader>fo", "<cmd> Telescope oldfiles <CR>")
map("n", "<leader>fw", "<cmd> Telescope live_grep <CR>")
map("n", "<leader>gt", "<cmd> Telescope git_status <CR>")

-- bufferline, cycle buffers
map("n", "<Tab>", "<cmd> BufferLineCycleNext <CR>")
map("n", "<S-Tab>", "<cmd> BufferLineCyclePrev <CR>")
map("n", "<C-q>", "<cmd> bd <CR>", { desc = "close buffer" })
map("n", "<leader>b", "<cmd>enew<CR>", { desc = "buffer new" })

-- comment.nvim
map("n", "<leader>/", "gcc", { remap = true })
map("v", "<leader>/", "gc", { remap = true })

-- terminal
map("t", "<C-x>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })

-- new terminals
map("n", "<leader>h", function()
	require("nvterm.terminal").toggle("horizontal")
end, { desc = "terminal new horizontal term" })

map("n", "<leader>v", function()
	require("nvterm.terminal").toggle("vertical")
end, { desc = "terminal new vertical window" })

map({ "n", "t" }, "<A-i>", function()
	require("nvterm.terminal").toggle("float")
end, { desc = "terminal toggle floating term" })

-- format
map("n", "<leader>fm", function()
	require("conform").format()
end)
