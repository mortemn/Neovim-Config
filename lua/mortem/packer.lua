return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Colorschemes
    use 'folke/tokyonight.nvim'
    use { "catppuccin/nvim", as = "catppuccin" }
    use("gruvbox-community/gruvbox")
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        tag = 'v1.*',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })

    -- Telescope
    use 'nvim-lua/plenary.nvim'
    use 'nvim-lua/popup.nvim'
    use 'nvim-telescope/telescope.nvim'

    -- Undotree
    use 'mbbill/undotree'

    -- Fugitive
    use 'tpope/vim-fugitive'

    -- Surround
    use 'tpope/vim-surround'

    -- Comments
    use 'tpope/vim-commentary'

    -- Treesitter
    use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate"
    })
    use("nvim-treesitter/playground")
    use("romgrk/nvim-treesitter-context")

    -- Status bar
    use {
        'glepnir/galaxyline.nvim', branch = 'main',
        requires = {'kyazdani42/nvim-web-devicons'}
	}
    use("kyazdani42/nvim-web-devicons")

    -- Harpoon
    use("ThePrimeagen/harpoon")

    use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {                                      -- Optional
          'williamboman/mason.nvim',
          run = function()
            pcall(vim.cmd, 'MasonUpdate')
          end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
    }
}
end)
