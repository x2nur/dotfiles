local ok, lsp = pcall(require, 'lsp-zero')
if not ok then return end

lsp.preset('recommended')

lsp.setup()
