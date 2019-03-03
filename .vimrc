set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'valloric/YouCompleteMe'

" turn on syntax highlighting
syntax on 

" detect the filetype, plugin and indentation
filetype plugin indent on

"expand tabs to spaces 
set expandtab
" replace tab with 4 spaces 
set tabstop=4
" indentation = 4 spaces
set shiftwidth=4
" don't maintain compatibility with vi 
set nocompatible 
"working directory is set to the current directory for which the file is being
"edited
set autochdir
"indent    allow backspacing over autoindent
"eol    allow backspacing over line breaks (join lines)
"start    allow backspacing over the start of insert; CTRL-W and CTRL-U
"         stop once at the start of insert.
set backspace=indent,eol,start
" enables creating folds in files
set foldenable
" hides a buffer instead of closing it when opening a new file, so you are not
" prompted to save the file right away. 
set hidden
" shows the row and column position of the cursor 
set ruler
" run ctags recursviely 
set tags=./tags,tags;/
" command line completion operates in enhanced mode
set wildmenu
" print line number before starting of the line. 
set number
" setup to run the ctrlp extension 
set runtimepath^=~/.vim/bundle/ctrlp.vim

nnoremap gb: buffers<CR>:sb<Space>
"noremap <Up> <Nop> 
"noremap <Down> <Nop> 
"noremap <Left> <Nop> 
"noremap <Right> <Nop>

set clipboard=unnamed

" execute pathogen bundle
execute pathogen#infect()

" settings for the syntastic plugin
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" syntastic C++11 settings
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++14 -stdlib=libc++'
let g:syntastic_enable_highlighting = 1 
" hi SpellBad ctermfg=196 ctermbg=196 guifg=#yyyyyy guibg=#zzzzzz
" hi SpellCap ctermfg=196 ctermbg=196 guifg=#yyyyyy guibg=#zzzzzz

" settings for vim-airline plugin
set laststatus=2

" settings for tagbar plugin for vim 
nmap <F8> :TagbarToggle<CR>

" code to insert closing braces automatically
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

" copy paste code for a new cpp file
autocmd BufNewFile *.cpp r ~/.vim/cpp_template

"
" YouCompleteMe options
"

let g:ycm_register_as_syntastic_checker = 1
let g:ycm_global_ycm_extra_conf = '~/code/.ycm_extra_conf.py'

