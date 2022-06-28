local packer_group = vim.api.nvim_create_augroup("Packer", { clear = true })
vim.api.nvim_create_autocmd(
  "BufWritePost",
  { command = "source <afile> | PackerCompile", group = packer_group, pattern = "plugins.lua" }
)

local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
end
vim.api.nvim_command("packadd packer.nvim")
-- returns the require for use in `config` parameter of packer's use
-- expects the name of the config file
function get_setup(name)
  return string.format('require("setup/%s")', name)
end

return require("packer").startup({
  function(use)
    -- Packer can manage itself
    use({ "wbthomason/packer.nvim" })

    -- Theme
    use({ "EdenEast/nightfox.nvim", config = get_setup("nightfox") })

    -- Icons
    use({ "kyazdani42/nvim-web-devicons" })

    -- Dashboard
    use ({ "goolord/alpha-nvim", config = get_setup("alpha-nvim") })

    ---- LSP
    --use {
    --  "williamboman/nvim-lsp-installer",
    --  "neovim/nvim-lspconfig",
    --}

    ---- Prettier
    --use({
    --  'nvim-lua/plenary.nvim',
    --  'jose-elias-alvarez/null-ls.nvim',
    --  'MunifTanjim/prettier.nvim'
    --})

    -- Nvim-Tree
    use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icons
      },
      config = get_setup("nvim-tree")
    }

    -- Indent Blankline (Auto indenter)
    use ({ 'lukas-reineke/indent-blankline.nvim', config=get_setup("indent-blankline") })

    ---- Treesitter Plugins
    --use ({'windwp/nvim-ts-autotag', 'p00f/nvim-ts-rainbow', 'lewis6991/spellsitter.nvim'})

    ---- Treesitter
    --use {
    --  'nvim-treesitter/nvim-treesitter',
    --  run = ':TSUpdate'
    --}

    -- RipGrep
    use ({
        "rinx/nvim-ripgrep",
        config = get_setup("alpha-nvim")
    })

    ---- Snippet Engine (For autocomplete)
    --use {'SirVer/ultisnips',
    --  requires = {{'honza/vim-snippets', rtp = '.'}},
    --  config = get_setup('utilisnips')
    --}

    ---- Autocomplete (Requires LSP to be setup)
    --use ({
    --  'hrsh7th/cmp-nvim-lsp',
    --  'hrsh7th/cmp-buffer',
    --  'hrsh7th/nvim-cmp',
    --  'onsails/lspkind.nvim'
    --})

    -- Nvim Comment
    use({'terrortylor/nvim-comment', config = get_setup('nvim-comment')})

    -- Fugitive
    use({'tpope/vim-fugitive'})

    -- Syntastic
    use({'vim-syntastic/syntastic'})

    if packer_bootstrap then
      require("packer").sync()
    end
  end,
  config = {
    display = {
      open_fn = require("packer.util").float,
    },
    profile = {
      enable = true,
      threshold = 1, -- the amount in ms that a plugins load time must be over for it to be included in the profile
    },
  },
})
