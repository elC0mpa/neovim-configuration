require'nvim-treesitter.configs'.setup {
  ensure_installed = { "html", "css", "scss", "vue", "javascript", "typescript", "tsx", "svelte", "json" },
  highlight = {
    enable = true,
    use_languagetree = true,
  },
  indent = {
    enable = false
  }
}
