local ok, tel = pcall(require, 'telescope')
if not ok then return end

tel.setup {
	defaults = {
		preview = {
			hide_on_startup = true
		}
	}
}

local tel_api = require("telescope.builtin")
local key = vim.keymap.set

key('n', '<leader>f', tel_api.find_files, {})
key('n', '<leader>g', tel_api.live_grep, {})
key('n', '<leader>b', tel_api.buffers, {})
key('n', '<leader>l', function() return tel_api.live_grep { search_dirs={"%:p"} } end, {})
