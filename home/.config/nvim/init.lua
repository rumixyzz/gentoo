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
	default_scheme = "base16-brewer",
	highlights = {
		overrides = function(palette)
			return {
				StatusLine = { bg = "NONE" }
			}
		end,
	},
})


