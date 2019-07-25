" Include Vundle {
    set nocompatible              " be iMproved, required
    filetype off                  " required

    set rtp+=~/.dotfiles/vim/bundle/Vundle.vim
    call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'tarekbecker/vim-yaml-formatter'
    Plugin 'plasticboy/vim-markdown'
    Plugin 'Valloric/YouCompleteMe'
    call vundle#end()            " required
    filetype plugin indent on    " required
" }


" Disable folding {
    let g:vim_markdown_folding_disabled=1
    set nofoldenable
" }


" Include Pathogen {
    source ~/.vim/bundle/vim-pathogen/autoload/pathogen.vim
    call pathogen#infect()
    call pathogen#helptags()
" }


" Include Syntastic {
    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_check_on_open = 1
" }


" Enable Jenkins Syntax {
    au BufNewFile,BufRead Jenkinsfile setf groovy
" }

" Enable Relative Numbering {
    set number relativenumber
    augroup numbertoggle
        autocmd!
        autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu | set rnu   | endif
        autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu | set nornu | endif
    augroup END
" }


" Trim Whitespaces on Save {
    function! TrimWhiteSpace()
           %s/\s\+$//e
    endfunction

    nnoremap <silent> <Leader>rts   :call TrimWhiteSpace()<CR>

    autocmd FileWritePre    * :call TrimWhiteSpace()
    autocmd FileAppendPre   * :call TrimWhiteSpace()
    autocmd FilterWritePre  * :call TrimWhiteSpace()
    autocmd BufWritePre     * :call TrimWhiteSpace()
" }

" Pretty Print JSON {
    imap jj <esc>:%!python -m json.tool<CR>
" }

" General Vim Settings "
	syntax on
	set number

    map <Up> <Nop>
    map <Left> <Nop>
    map <Right> <Nop>
    map <Down> <Nop>
    imap jk <Esc>
    syntax on
    set background=dark
    set shiftwidth=4 tabstop=4 expandtab
    set laststatus=2
    set number
    set hidden
    set tags=./tags;,tags;$HOME
    set colorcolumn=80

    map <C-n> <Esc>:tab sp<Cr>

    autocmd Filetype html setlocal tabstop=2 shiftwidth=2
    autocmd Filetype python setlocal tabstop=2 shiftwidth=2
    autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2
    autocmd Filetype ruby setlocal tabstop=2 shiftwidth=2
    autocmd Filetype eruby setlocal tabstop=2 shiftwidth=2
    autocmd Filetype css setlocal tabstop=2 shiftwidth=2
    autocmd Filetype scss setlocal tabstop=2 shiftwidth=2

    autocmd Filetype make setlocal noexpandtab shiftwidth=8 softtabstop=0
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
