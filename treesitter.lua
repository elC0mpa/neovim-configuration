require'nvim-treesitter.configs'.setup {
  ensure_installed = { "html", "css", "scss", "vue", "javascript", "typescript", "tsx", "svelte", "json" },
  highlight = {
    enable = true,
    use_languagetree = true,
  },
  indent = {
    enable = false
  },
  rainbow = {
    enable = true,
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
  }
}
