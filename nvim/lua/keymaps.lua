local key = vim.keymap.set

key('n', '\\', ':noh<CR>') -- clear search
key('n', 'U', '<C-R>') -- redo

-- Nvim-tree
key('n', '<leader>q', ':NvimTreeFindFile<CR>') -- Focus file
key('n', '<leader>w', ':NvimTreeToggle<CR>') -- Toggle 

-- Telescope
function telescope_keys()
	local ok, tel_api = pcall(require, 'telescope.builtin')
	if not ok then return end
	key('n', '<leader>f', tel_api.find_files, {})
	key('n', '<leader>g', tel_api.live_grep, {})
	key('n', '<leader>b', tel_api.buffers, {})
	key('n', '<leader>l', function() return tel_api.live_grep { search_dirs={"%:p"} } end, {})
end
telescope_keys()

-- go:
-- run
-- build
-- test
-- cover

