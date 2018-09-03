 " Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

 if &compatible
   set nocompatible               " Be iMproved
 endif

 " Required:
 set runtimepath+=~/.vim/bundle/neobundle.vim/

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'
 " My Bundles here:
 "NeoBundle 'altercation/vim-colors-solarized'
 "syntax enable
 "set background=dark    "または light
 NeoBundle 'scrooloose/nerdtree'
 NeoBundle 'Shougo/unite.vim'
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck

 "open nerdtree
 nnoremap <silent><C-e> :NERDTreeToggle<CR>
 "easy copipe
 nnoremap <silent><C-v> :r !pbpaste<CR>
 
 "colorscheme solarized
