" VIM Configuration - Keaser

" Annule la compatibilité avec vi 
set nocompatible

" Coloration automatique
syntax on

" Numérotation des lignes
set number

" obligatoire pour utiliser Vundle
" filetype off

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
