-- Predefined `pt` search command.
-- `pt {query} --nogroup --nocolor --smart-case`
runner = require('nvim-ripgrep.run').pt,

-- Or you can define your own search command.
runner = function(query)
    return require('nvim-ripgrep.run').run(
        'rg',
        {
            args = {
                '--vimgrep',
                '--smart-case',
                '--regexp',
                query
            },
        },
    )
end,
