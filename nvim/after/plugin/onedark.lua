local ok, plug = pcall(require, 'onedark')
if not ok then return end

plug.setup {
	toggle_style_key = '<leader>t',
	toggle_style_list = {'dark', 'darker', 'cool', 'warm', 'warmer'},
	style = 'warmer' -- dark, darker, deep, warm, warmer
}

--plug.load()
