local treesitter = require('nvim-treesitter.configs')

if not treesitter then
	vim.cmd([[ echom 'Cannot load `nvim-treesitter.configs`' ]])
	return
end

treesitter.setup({
    disable = {},
    ensure_installed = {'bash', 'c', 'cpp', 'go', 'java', 'javascript', 'json', 'lua', 'python'},

    highlight = {
		enable = true,
		use_languagetree = true,
		-- disable = { "java" },  -- list of language that will be disabled
		custom_captures = {},
	}
})
