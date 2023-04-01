local ok, ntree = pcall(require, 'nvim-tree')
if not ok then return end


ntree.setup {
	view = {
		hide_root_folder = true,
	}
}


