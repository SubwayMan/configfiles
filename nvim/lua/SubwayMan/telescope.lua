local telescope = require('telescope')

telescope.setup {
    defaults = {
        mappings = {

        },
        file_ignore_patterns = {'node_modules', '%.out', '%.exe', '.git/'}
    }
}

telescope.load_extension('fzf')
local opts = { noremap = true, silent = true }





