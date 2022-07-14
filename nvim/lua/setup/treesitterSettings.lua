-- Treesitter plugin
require('spellsitter').setup {
	-- Whether enabled, can be a list of filetypes, e.g. {'python', 'lua'}
	enable = true,
	debug = false
  }

require("nvim-treesitter.configs").setup({
	context_commentstring = {
		enable = true,
	},
	ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
	sync_install = false, -- install languages synchronously (only applied to 'ensure_installed')
	ignore_install = { "" }, -- List of parsers to ignore installing
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "html" }, -- FIX: disabled for now https://github.com/nvim-treesitter/nvim-treesitter/issues/1788
		--additional_vim_regex_highlighting = true,
	},indent = {
		enable = true,
	},

	-- nvim-ts-autotag
	autotag = { enable = true },

	-- nvim-ts-rainbow
	rainbow = {
		enable = true,
		-- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
		extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang => boolean
		max_file_lines = nil, -- Do not enable for files with more than n lines
		-- colors = {},-- table of hex strings
		-- termcolors = {} -- table of colour name strings
	}
})

-- FIX: for nvim-autotag - not actually working
local ts_utils = require("nvim-treesitter.ts_utils")
ts_utils.get_node_text = vim.treesitter.query.get_node_text

-- Detect astro files and set filetype
vim.api.nvim_create_autocmd("BufEnter", {
	pattern = { "*.astro" },
	callback = function()
		vim.cmd([[ set filetype=astro ]])
	end,
})


-- Code Folding using Treesitter
local vim = vim
local opt = vim.opt

opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"

-- Turn off default setting of all folds defaulting closed
local api = vim.api
local M = {}
-- function to create a list of commands and convert them to autocommands
-------- This function is taken from https://github.com/norcalli/nvim_utils
function M.nvim_create_augroups(definitions)
    for group_name, definition in pairs(definitions) do
        api.nvim_command('augroup '..group_name)
        api.nvim_command('autocmd!')
        for _, def in ipairs(definition) do
            local command = table.concat(vim.tbl_flatten{'autocmd', def}, ' ')
            api.nvim_command(command)
        end
        api.nvim_command('augroup END')
    end
end


local autoCommands = {
    -- other autocommands
    open_folds = {
        {"BufReadPost,FileReadPost", "*", "normal zR"}
    }
}

M.nvim_create_augroups(autoCommands)