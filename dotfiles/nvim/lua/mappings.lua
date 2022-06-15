local function register_mappings(mappings, default_options)
  for mode, mode_mappings in pairs(mappings) do
    for _, mapping in pairs(mode_mappings) do
      local options = #mapping == 3 and table.remove(mapping) or default_options
      local prefix, cmd = unpack(mapping)
      pcall(vim.keymap.set, mode, prefix, cmd, options)
    end
  end
end

-- Map leader to space
vim.g.mapleader = " "

local mappings = {
  i = {},
  n = {
    -- Normal mode
    -- Find files using NetRw.
    { "<Leader>ex", ":e .<CR>" },

    -- Prettier
    { "<Leader>fmtP", ":Prettier<CR>" },
    { "<Leader>wf", ":Prettier w<CR>" },

    -- Window mappings
    { "<Leader>vsp", ":vsp<CR>" }, -- vertical split
    { "<Leader>sp", ":sp<CR>" }, -- vertical split

    { "<Leader>+", ":res +2<CR>" }, -- increase window size by 2
    { "<Leader>-", ":res -2<CR>" }, -- decrease window size by 2
    { "<Leader>v+", ":vert res +2<CR>" }, -- increase vertical window size by 2
    { "<Leader>v-", ":vert res -2<CR>" }, -- decrease vertical window size by 2

    { "<Leader><Down>", "<C-W><C-J><CR>" }, -- move to bottom buffer
    { "<Leader><Up>", "<C-W><C-K><CR>" }, -- move to top buffer
    { "<Leader><Right>", "<C-W><C-L><CR>" }, -- move to right buffer
    { "<Leader><Left>", "<C-W><C-H><CR>" }, -- move to left buffer

    { "<Leader>bq", ":bd<CR>" }, -- Close current buffer without closing window

    -- NerdTree
    { "<Leader>nF", ":NERDTreeFocus<CR>" },
    { "<Leader>nt", ":NERDTreeToggle<CR>" },
    { "<Leader>nf", ":NERDTreeFind<CR>" },
  },
  x = {},
}

register_mappings(mappings, { silent = true, noremap = true })

