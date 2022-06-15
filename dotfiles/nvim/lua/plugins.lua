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

    -- LSP
    use {
      "williamboman/nvim-lsp-installer",
      "neovim/nvim-lspconfig",
    }

    -- Prettier
    use({
      'nvim-lua/plenary.nvim',
      'jose-elias-alvarez/null-ls.nvim',
      'MunifTanjim/prettier.nvim'
    })

    -- NerdTree
    use({
      'preservim/nerdtree',
      'Xuyuanp/nerdtree-git-plugin',
      'ryanoasis/vim-devicons',
      'tiagofumo/vim-nerdtree-syntax-highlight',
    })

    -- Treesitter Plugins
    use ({'windwp/nvim-ts-autotag', 'p00f/nvim-ts-rainbow'})

    -- Treesitter
    use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
  }

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
