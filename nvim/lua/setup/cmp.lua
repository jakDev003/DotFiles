local t = function(str)
   return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local lspkind = require('lspkind')
local cmp = require('cmp')
cmp.setup {
   snippet = {
       expand = function(args) vim.fn["UltiSnips#Anon"](args.body) end
   },
   mapping = {
       ["<Tab>"] = cmp.mapping({
           c = function()
               if cmp.visible() then
                   cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
               else
                   cmp.complete()
               end
           end,
           i = function(fallback)
               if cmp.visible() then
                   cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
               elseif vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
                   vim.api.nvim_feedkeys(t("<Plug>(ultisnips_jump_forward)"), 'm', true)
               else
                   fallback()
               end
           end,
           s = function(fallback)
               if vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
                   vim.api.nvim_feedkeys(t("<Plug>(ultisnips_jump_forward)"), 'm', true)
               else
                   fallback()
               end
           end
       }),
       ["<S-Tab>"] = cmp.mapping({
           c = function()
               if cmp.visible() then
                   cmp.select_prev_item({ behavior = cmp.SelectBehavior.Insert })
               else
                   cmp.complete()
               end
           end,
           i = function(fallback)
               if cmp.visible() then
                   cmp.select_prev_item({ behavior = cmp.SelectBehavior.Insert })
               elseif vim.fn["UltiSnips#CanJumpBackwards"]() == 1 then
                   return vim.api.nvim_feedkeys( t("<Plug>(ultisnips_jump_backward)"), 'm', true)
               else
                   fallback()
               end
           end,
           s = function(fallback)
               if vim.fn["UltiSnips#CanJumpBackwards"]() == 1 then
                   return vim.api.nvim_feedkeys( t("<Plug>(ultisnips_jump_backward)"), 'm', true)
               else
                   fallback()
               end
           end
       }),
       ['<Down>'] = cmp.mapping(cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }), {'i'}),
       ['<Up>'] = cmp.mapping(cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }), {'i'}),
       ['<C-n>'] = cmp.mapping({
           c = function()
               if cmp.visible() then
                   cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
               else
                   vim.api.nvim_feedkeys(t('<Down>'), 'n', true)
               end
           end,
           i = function(fallback)
               if cmp.visible() then
                   cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
               else
                   fallback()
               end
           end
       }),
       ['<C-p>'] = cmp.mapping({
           c = function()
               if cmp.visible() then
                   cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
               else
                   vim.api.nvim_feedkeys(t('<Up>'), 'n', true)
               end
           end,
           i = function(fallback)
               if cmp.visible() then
                   cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
               else
                   fallback()
               end
           end
       }),
       ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), {'i', 'c'}),
       ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), {'i', 'c'}),
       ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), {'i', 'c'}),
       ['<C-e>'] = cmp.mapping({ i = cmp.mapping.close(), c = cmp.mapping.close() }),
       ['<CR>'] = cmp.mapping({
           i = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false }),
           c = function(fallback)
               if cmp.visible() then
                   cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false })
               else
                   fallback()
               end
           end
       }),
   },
   formatting = {
      format = lspkind.cmp_format {
         with_text = true,
         menu = {
            buffer   = "[buf]",
            nvim_lsp = "[LSP]",
            path     = "[path]",
         },
      },
   },

   sources = {
      { name = "nvim_lsp"},
      { name = "path" },
      { name = "buffer" , keyword_length = 5},
   },
   experimental = {
      ghost_text = true
   }
}

-- Use buffer source for `/`.
cmp.setup.cmdline('/', {
   completion = { autocomplete = false },
   sources = {
       -- { name = 'buffer' }
       { name = 'buffer', opts = { keyword_pattern = [=[[^[:blank:]].*]=] } }
   }
})

-- Use cmdline & path source for ':'.
cmp.setup.cmdline(':', {
   completion = { autocomplete = false },
   sources = cmp.config.sources({
       { name = 'path' }
       }, {
       { name = 'cmdline' }
   })
})


-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
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