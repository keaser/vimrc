" VIM Configuration - Keaser

" Annule la compatibilité avec vi 
set nocompatible

" Coloration automatique
syntax on

" Numérotation des lignes
set number

" obligatoire pour utiliser Vundle
filetype off

" activation du retour à la ligne
" set nowrap pour le désactiver
set wrap

" affiche la position actuelle du curseur
set ruler

" affiche le nom du fichier
set title

" Active le comportement habituel de la touche 'backspacee'
set backspace=indent,eol,start

" Indentation' de 4 espaces, y compris pour tab
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

" Indentation automatique
set autoindent

" Recherche sans respecter la casse
set ignorecase

" Pas d'alerte
set novisualbell
set noerrorbells

" Pas de backup, fichier temp
set nobackup
set nowritebackup
set noswapfile

" Affiche un minimum de 5 lignes autour du curseur 
set scrolloff=5

" Indication du chemin de gestion de plugin
" Creation de doosier ~/.vim/bundle/ mkdir -p ~/.vim/bundle/
" Puis git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" chargement des plugins Vundle doit être en premier
Plugin 'VundleVim/Vundle.vim'

" ALE, plugin permettant l'analyse en direct de ce que l'on rentre dans
" l'éditeur. Il mettra en évidence les erreurs
Plugin 'w0rp/ale'

" Sert a fournir l'autocompletion dans vim
" après l'installation du plugin avec la commande ":PluginInstall" dans vim
" aller dans le dosser cd ~/.vim/bundle/YouCompleteMe  et lancer la commande
" suivante :
" ./install.py --clang-completer
Plugin 'ycm-core/YouCompleteMe'

"auto indentation pour Python conforme à la norme PEP8
Plugin 'Vimjas/vim-python-pep8-indent'

" sert à chercher des fichiers
Plugin 'ctrlpvim/ctrlp.vim.git'  

" Tous les plugins doivent être définis avant cette ligne
call vundle#end()
filetype plugin indent on

""" ALE
" Options servant a activer l'analyse lint seulement quand on sauvegarde et de
" désactiver le fix automatique.
let g:ale_completion_enabled=1
let g:ale_lint_on_save=1
let g:ale_fix_on_save=0

" Il faut installer autopep8
" pip3 install autopep8
let g:ale_fixers={'python':['autopep8']}

" Il faut installer pylint
" pip3 install pylint
let b:ale_linters={'python':['pylint']}

"executer python sur le fichier
filetype on
autocmd FileType python nnoremap <buffer> <F9> :exec '!clear; python' shelle    scape(@%, 1)<cr>
