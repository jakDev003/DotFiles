-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = true
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\JKAGIW~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\JKAGIW~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\JKAGIW~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\JKAGIW~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\JKAGIW~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { 'require("setup/comment-nvim")' },
    loaded = true,
    path = "C:\\Users\\jkagiwada\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["alpha-nvim"] = {
    config = { 'require("setup/alpha-nvim")' },
    loaded = true,
    path = "C:\\Users\\jkagiwada\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "C:\\Users\\jkagiwada\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "C:\\Users\\jkagiwada\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "C:\\Users\\jkagiwada\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["indent-blankline.nvim"] = {
    config = { 'require("setup/indent-blankline")' },
    loaded = true,
    path = "C:\\Users\\jkagiwada\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lspkind.nvim"] = {
    loaded = true,
    path = "C:\\Users\\jkagiwada\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lspkind.nvim",
    url = "https://github.com/onsails/lspkind.nvim"
  },
  ["lualine.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\jkagiwada\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\lualine.nvim",
    url = "https://github.com/hoob3rt/lualine.nvim"
  },
  ["neovim-ayu"] = {
    config = { 'require("setup/ayu-vim")' },
    loaded = true,
    path = "C:\\Users\\jkagiwada\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neovim-ayu",
    url = "https://github.com/Shatur/neovim-ayu"
  },
  ["nightfox.nvim"] = {
    config = { 'require("setup/nightfox")' },
    loaded = true,
    path = "C:\\Users\\jkagiwada\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "C:\\Users\\jkagiwada\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "C:\\Users\\jkagiwada\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "C:\\Users\\jkagiwada\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "C:\\Users\\jkagiwada\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-ripgrep"] = {
    config = { 'require("setup/alpha-nvim")' },
    loaded = true,
    path = "C:\\Users\\jkagiwada\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-ripgrep",
    url = "https://github.com/rinx/nvim-ripgrep"
  },
  ["nvim-terminal"] = {
    config = { 'require("setup/nvim-terminal")' },
    loaded = true,
    path = "C:\\Users\\jkagiwada\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-terminal",
    url = "https://github.com/s1n7ax/nvim-terminal"
  },
  ["nvim-tree.lua"] = {
    config = { 'require("setup/nvim-tree")' },
    loaded = true,
    path = "C:\\Users\\jkagiwada\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "C:\\Users\\jkagiwada\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "C:\\Users\\jkagiwada\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "C:\\Users\\jkagiwada\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "C:\\Users\\jkagiwada\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\jkagiwada\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\jkagiwada\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["prettier.nvim"] = {
    loaded = true,
    path = "C:\\Users\\jkagiwada\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\prettier.nvim",
    url = "https://github.com/MunifTanjim/prettier.nvim"
  },
  ["spellsitter.nvim"] = {
    loaded = true,
    path = "C:\\Users\\jkagiwada\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\spellsitter.nvim",
    url = "https://github.com/lewis6991/spellsitter.nvim"
  },
  ["tabline.nvim"] = {
    config = { 'require("setup/tabline")' },
    loaded = true,
    path = "C:\\Users\\jkagiwada\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\tabline.nvim",
    url = "https://github.com/kdheepak/tabline.nvim"
  },
  ["telescope.nvim"] = {
    config = { 'require("setup/telescope")' },
    loaded = true,
    path = "C:\\Users\\jkagiwada\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ultisnips = {
    config = { 'require("setup/utilisnips")' },
    loaded = true,
    path = "C:\\Users\\jkagiwada\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\ultisnips",
    url = "https://github.com/SirVer/ultisnips"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "C:\\Users\\jkagiwada\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-snippets\\.",
    url = "https://github.com/honza/vim-snippets"
  }
}

time([[Defining packer_plugins]], false)
-- Runtimepath customization
time([[Runtimepath customization]], true)
vim.o.runtimepath = vim.o.runtimepath .. ",C:\\Users\\jkagiwada\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-snippets\\."
time([[Runtimepath customization]], false)
-- Config for: nightfox.nvim
time([[Config for nightfox.nvim]], true)
require("setup/nightfox")
time([[Config for nightfox.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
require("setup/indent-blankline")
time([[Config for indent-blankline.nvim]], false)
-- Config for: neovim-ayu
time([[Config for neovim-ayu]], true)
require("setup/ayu-vim")
time([[Config for neovim-ayu]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
require("setup/telescope")
time([[Config for telescope.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
require("setup/comment-nvim")
time([[Config for Comment.nvim]], false)
-- Config for: tabline.nvim
time([[Config for tabline.nvim]], true)
require("setup/tabline")
time([[Config for tabline.nvim]], false)
-- Config for: ultisnips
time([[Config for ultisnips]], true)
require("setup/utilisnips")
time([[Config for ultisnips]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
require("setup/alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
require("setup/nvim-tree")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-terminal
time([[Config for nvim-terminal]], true)
require("setup/nvim-terminal")
time([[Config for nvim-terminal]], false)
-- Config for: nvim-ripgrep
time([[Config for nvim-ripgrep]], true)
require("setup/alpha-nvim")
time([[Config for nvim-ripgrep]], false)
if should_profile then save_profiles(1) end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
