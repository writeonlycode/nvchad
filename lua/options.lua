require "nvchad.options"

-- Hide command line at the bottom
vim.opt.cmdheight = 0

-- LuaSnip with vscode extensions. i.e ~/.vscode/extensions/deinsoftware.vitest-snippets-1.8.0
vim.g.vscode_snippets_path = vim.fn.stdpath "config" .. "/lua/snippets"
