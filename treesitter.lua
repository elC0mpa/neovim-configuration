require'nvim-treesitter.configs'.setup {
  ensure_installed = { "html", "css", "scss", "vue", "javascript", "typescript", "svelte", "json" },
  highlight = {
    enable = true,
    use_languagetree = true,
  },
}
