local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup {
     defaults = {
        color_devicons = false,
        prompt_prefix = "$ ",
        file_ignore_patterns = { "^.git/", "vendor" },
        mappings = {
            i = {
                ['<esc>'] = actions.close
            },
            n = {
                ['<esc>'] = actions.close
            }
        }
    }
}

telescope.load_extension('fzf')

local M = {}

M.project_files = function()
    local opts = {}
    local ok = pcall(require('telescope.builtin').git_files, opts)
    if not ok then require('telescope.builtin').find_files(opts) end
end

vim.api.nvim_set_keymap('n', '<Leader>ff', ':lua require\'telescope.builtin\'.find_files()<Cr>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<Leader>fg', ':lua require\'telescope.builtin\'.live_grep()<Cr>', {noremap=true, silent=true})

return M
