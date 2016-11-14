set number                "enable line number
set expandtab             "change tab from \t to space
set tabstop=4             "tab lenght
set hlsearch              "enable highlighting resultats of search
set incsearch             "enable increment search (highlighting resoults when typeing search request)
syntax on                 "enable syntax highlighting
set mouse=a               "enable mouse click 
set colorcolumn=85

"Plugin Manager"
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jiangmiao/auto-pairs'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'PotatoesMaster/i3-vim-syntax'
"[PHP]"
Plug 'StanAngeloff/php.vim'
"[CSS]"
Plug 'JulesWang/css.vim'
"[HTML]"
Plug 'othree/html5.vim'
Plug 'lumiliet/vim-twig'
"[JS]"
Plug 'pangloss/vim-javascript'
call plug#end()


"Plugin Config"
"[PHP]"
"g:php_syntax_extensions_enabled
"b:php_syntax_extensions_enabled
function! PhpSyntaxOverride()
        hi! def link phpDocTags  phpDefine
        hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
        autocmd!
        autocmd FileType php call PhpSyntaxOverride()
augroup END

"Apperence"
colorscheme onedark
"set background=dark
"let g:onedark_termcolors=256
"Key Map"
map <C-e> :NERDTreeToggle<CR>
