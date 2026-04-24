return {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        build = ':TSUpdate',
        config = function()
                require('nvim-treesitter').setup {
                        install_dir = vim.fn.stdpath('data') .. '/site'
                }
                require('nvim-treesitter').install({ 'c', 'lua', 'go' })
                vim.api.nvim_create_autocmd('FileType', {
                        pattern = { 'c','lua','go' },
                        callback = function() vim.treesitter.start() end,
                })
        end
}
