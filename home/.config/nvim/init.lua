vim.g.mapleader = "`"
local opt = vim.opt

opt.nu = true
opt.rnu = true
opt.udf = true
opt.undodir = vim.fn.expand("~/.config/nvim/undodir")
opt.cb = "unnamedplus"
opt.fcs = { eob = " " }

vim.keymap.set("n","-",":Ex<CR>")
vim.keymap.set("n","<Esc>",":nohls<CR>")
vim.keymap.set("i","jj","<Esc>")

vim.keymap.set("n","<leader>c",":e $MYVIMRC<CR>")

vim.pack.add({
	"https://github.com/tinted-theming/tinted-nvim",
	"https://github.com/nvim-treesitter/nvim-treesitter"
})


require("nvim-treesitter").setup()
require("nvim-treesitter").install({'lua','c','go'})

vim.api.nvim_create_autocmd('FileType', {
	pattern = {'lua','c','go'},
	callback = function() vim.treesitter.start() end,
})

require("tinted-nvim").setup({
  schemes = {
    ["base16-heisenberg"] = {
      variant = "dark",
      base00 = "#121212",
      base01 = "#150d1f",
      base02 = "#1a1a1a",
      base03 = "#77788c",
      base04 = "#d9d9d9",
      base05 = "#ebebeb",
      base06 = "#e2e2e2",
      base07 = "#ffffff",
      base08 = "#de4a29",
      base09 = "#df8d21",
      base0A = "#df8d21",
      base0B = "#1ec68e",
      base0C = "#2cb9be",
      base0D = "#39a6dd",
      base0E = "#976fee",
      base0F = "#de4a29",
    },
  },

  default_scheme = "base16-heisenberg",
  highlights = {
    overrides = function(p)
      return {
        CursorLine = { bg = p.base01 },
        Visual = { bg = p.base02 },
        Comment = { fg = p.base03, italic = true },
	LineNr = { fg = p.base03 },
      }
    end,
  },
})
