local ok, plug = pcall(require, 'nvim-treesitter.configs')
if not ok then return end

plug.setup {
    ensure_installed = {
      "go", 'help', 'lua', 'vim'
    },
    highlight = {
      enable = true,
      disable = {},
    },
}
