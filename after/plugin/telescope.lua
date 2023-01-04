local builtin = require('telescope.builtin')

pcall(require('telescope').load_extension, 'fzf')
pcall(require('telescope').load_extension, 'mapper')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>po', builtin.oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader>ph', builtin.help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>pg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>pds', builtin.lsp_document_symbols, { desc = '[S]earch [D]ocument [S]ymbols' })
vim.keymap.set('n', '<leader>pws', builtin.lsp_dynamic_workspace_symbols, { desc = '[S]earch [W]orkspace [S]ymbols' })
