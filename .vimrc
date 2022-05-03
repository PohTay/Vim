source $VIMRUNTIME/vimrc_example.vim


syntax enable
"set
set number

"Setting fonts
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=HACK_NF:h12:cANSI
  endif
endif


"Setting colorscheme
colorscheme base16-gruvbox-dark-hard

"autoclose
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}

filetype on
filetype indent on
syntax enable
autocmd filetype cpp nnoremap <F10> :w <bar>!g++ -std=c++14 -O2 -Wall % -o %:r && %:r.exe <CR>
map <F2> :w <CR>

"cd
cd C:\Users\PohTay\Documents\GitHub\CompetitiveProgramming


"Setting nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

call plug#begin()

"Discord
Plug 'vimsence/vimsence'

"Youcompleteme
Plug 'oblitum/youcompleteme'

" Corlosheme gruvbox
Plug 'morhetz/gruvbox'

" Discord
Plug 'vimsence/vimsence'

" Dev-icons
Plug 'ryanoasis/vim-devicons'

"besa 16
Plug 'chriskempson/base16-vim'

"TheNERDtree
Plug 'scrooloose/nerdtree'

"autorepair
Plug 'chun-yang/auto-pairs'

call plug#end()
