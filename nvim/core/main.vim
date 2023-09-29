" Set leader key
let mapleader = ","

" Theme
colorscheme gruvbox-material


"   Line numbers
set number relativenumber

let g:coc_global_extensions = [
	\'coc-kotlin',
	\'coc-java',
	\'coc-zig',
	\'coc-rust-analyzer',
	\'coc-go',
	\'coc-sumneko-lua',
	\]

"   Treesitter
silent! lua << EOF
require 'nvim-treesitter.install'.compilers = {"clang"} -- Must use llvm `scoop install llvm` https://github.com/nvim-treesitter/nvim-treesitter/issues/1897

require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "c",
    "lua",
    "vim",
    "vimdoc",
    "query",
    "javascript",
    "typescript",
    "vue",
    "java",
    "php",
    "html",
    "css",
    "scss",
    "json",
    "yaml",
    "toml",
    "bash",
    "python",
    "rust",
    "dockerfile",
    "latex",
  },

  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },

  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
EOF



