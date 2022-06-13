local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Map leader to space
vim.g.mapleader = " "

-- Open file explorer
map("n", "<Leader>f", ":E<CR>", { silent = true }) -- Open File Explorer

-- Window mappings
map("n", "<Leader>k", ":vsp<CR>", { silent = true }) -- vertical split
map("n", "<Leader>l", ":sp<CR>", { silent = true }) -- horizontal split

map("n", "<Leader>+", ":res +2<CR>", { silent = true }) -- increase window size by 2
map("n", "<Leader>-", ":res -2<CR>", { silent = true }) -- decrease window size by 2
map("n", "<Leader>v+", ":vert res +2<CR>", { silent = true }) -- increase vertical window size by 2
map("n", "<Leader>v-", ":vert res -2<CR>", { silent = true }) -- decrease vertical window size by 2

map("n", "<Leader><Down>", "<C-W><C-J><CR>", { silent = true }) -- move to bottom buffer
map("n", "<Leader><Up>", "<C-W><C-K><CR>", { silent = true }) -- move to top buffer
map("n", "<Leader><Right>", "<C-W><C-L><CR>", { silent = true }) -- move to right buffer
map("n", "<Leader><Left>", "<C-W><C-H><CR>", { silent = true }) -- move to left buffer

map("n", "<Leader>qb", ":bd<CR>", { silent = true }) -- Close current buffer without closing window
