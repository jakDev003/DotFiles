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
		additional_vim_regex_highlighting = true,
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
