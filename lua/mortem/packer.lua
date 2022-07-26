-- Only required if you have packer configured as `opt`
-- Plugins may slow vim down, so use carefully
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Colorschemes
    use 'folke/tokyonight.nvim'

    -- Telescope
    use 'nvim-lua/plenary.nvim'
    use 'nvim-lua/popup.nvim'
    use 'nvim-telescope/telescope.nvim'

    -- Start screen
    use 'mhinz/vim-startify'

    -- Cairo syntax highlighting
    use 'miguelmota/cairo.vim'
    
    -- Solidity syntax highlighting
    use 'tomlion/vim-solidity'

    -- Closings
    use 'rstacruz/vim-closer'

    -- Surround
    use 'tpope/vim-surround'

    -- Lsp
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/nvim-cmp'
    use("tzachar/cmp-tabnine", { run = "./install.sh" })
    use 'onsails/lspkind-nvim'
    use 'nvim-lua/lsp_extensions.nvim'
    use 'glepnir/lspsaga.nvim'
    use 'simrat39/symbols-outline.nvim'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
end)
