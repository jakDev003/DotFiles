local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local previewers = require("telescope.previewers")
local action_state = require("telescope.actions.state")
local conf = require("telescope.config").values
local actions = require("telescope.actions")

require("telescope").setup({
	defaults = {
		file_sorter = require("telescope.sorters").get_fzy_sorter,
		prompt_prefix = " >",
		color_devicons = true,

		file_previewer = require("telescope.previewers").vim_buffer_cat.new,
		grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
		qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,

		mappings = {
			i = {
				["<C-x>"] = false,
				["<C-q>"] = actions.send_to_qflist,
			},
		},
	},
    pickers = {
        find_files = {
          theme = "dropdown",
        }
      },
})

local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<CR>", opts)
vim.keymap.set('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<CR>", opts)
vim.keymap.set('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<CR>", opts)
vim.keymap.set('n', '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<CR>", opts)

vim.keymap.set('n', '<leader>fgf', "<cmd>lua require('telescope.builtin').git_files()<CR>", opts)

vim.keymap.set('n', '<leader>ps', "<cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.input('Grep For > ')})<CR>", opts)