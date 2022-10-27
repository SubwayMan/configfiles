local whichkey = require('which-key')

local telescope = require('telescope.builtin')
local telescope_themes = require('telescope.themes')
local dropdown = telescope_themes.get_dropdown({winblend=10})
local dropdownhidden = dropdown
dropdownhidden.hidden = true

whichkey.register({
    f = {
        name = "telescope",
        f = { function() telescope.find_files(dropdownhidden) end, 'Search Files'},
        l = { function() telescope.live_grep(dropdownhidden) end, 'Live Grep'},
        g = { function() telescope.git_files(dropdownhidden) end, 'Search Git Files'},
        s = { function() telescope.grep_string(dropdownhidden) end, 'Find String Under Cursor'},
        b = { function() telescope.buffers(dropdown) end, 'Search Buffers'},
        c = { function() telescope.command_history(dropdown) end, 'Search History'},
        r = { function() telescope.lsp_references(dropdown) end, 'Search LSP'},
        h = { function() telescope.git_commits(dropdown) end, 'Search Git History'},
        t = { function() telescope.treesitter(dropdown) end, 'Search Treesitter'},
    },
}, { prefix = '<Leader>' })

