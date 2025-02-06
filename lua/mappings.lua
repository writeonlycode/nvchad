require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")

-- nvimtree
map("n", "<leader>n", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })
map("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "nvimtree focus window" })

-- new terminals
map("n", "<leader>h", "", { desc = "terminal new horizontal term" })
map("n", "<leader>v", "", { desc = "terminal new vertical term" })

-- toggleable
map({ "n", "t" }, "<A-v>", "", { desc = "terminal toggleable vertical term" })
map({ "n", "t" }, "<A-h>", "", { desc = "terminal toggleable horizontal term" })

map({ "n", "t" }, "<A-i>", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
end, { desc = "terminal toggle floating term" })

map({ "n" }, "<leader>t", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
end, { desc = "terminal toggle floating term" })
