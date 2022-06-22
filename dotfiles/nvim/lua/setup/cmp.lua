-- Set completeopt to have a better completion experience
vim.opt.completeopt = 'menuone,noselect'

-- nvim-cmp setup
local cmp = require('cmp')
cmp.setup {
  mapping = {
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'calc' },
    { name = 'path' },
    { name = 'spell' },
  },
  formatting = {
      format = function(entry, vim_item)
        vim_item.menu = ({
          nvim_lsp = '[LSP]',
          buffer = '[Buffer]',
          calc = '[Calc]',
          path = '[Path]',
          spell = '[Spell]',
        })[entry.source.name]
        return vim_item
      end,
  },
}

-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- local lspkind = require('lspkind')
-- local cmp = require('cmp')
-- cmp.setup {
--     -- As currently, i am not using any snippet manager, thus disabled it.
--        -- snippet = {
--           --   expand = function(args)
--              --     require("luasnip").lsp_expand(args.body)
--              --   end,
--           -- },
 
--        mapping = {
--           ["<C-d>"] = cmp.mapping.scroll_docs(-4),
--           ["<C-f>"] = cmp.mapping.scroll_docs(4),
--           ["<C-e>"] = cmp.mapping.close(),
--           ["<c-y>"] = cmp.mapping.confirm {
--              behavior = cmp.ConfirmBehavior.Insert,
--              select = true,
--           },
--           ["<Tab>"] = cmp.mapping.confirm {
--             behavior = cmp.ConfirmBehavior.Insert,
--             select = true,
--          },
--        },
--        formatting = {
--           format = lspkind.cmp_format {
--              with_text = true,
--              menu = {
--                 buffer   = "[buf]",
--                 nvim_lsp = "[LSP]",
--                 path     = "[path]",
--              },
--           },
--        },
 
--        sources = {
--           { name = "nvim_lsp"},
--           { name = "path" },
--           { name = "buffer" , keyword_length = 5},
--        },
--        experimental = {
--           ghost_text = true
--        }
--  }