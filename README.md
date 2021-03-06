# Description

These are my dotfiles for various applications.

- Vim
  - These are barebones configs, with just enough to make it look pretty. :-)
- NeoVim
  - These are fully featured configs, making this basically an IDE with autocomplete, error checking, advanced file searching and more!

# Installation

## Vim

### Installation Location

To install copy everything from the 'dotfiles/vim' directory into the appropriate directory for your OS.

Linux:
"~/etc/vim/vimrc.local"

Windows:
"C:\Program Files\Vim_vimrc"

## Neovim

### Installation Location

To install copy everything from the 'dotfiles/nvim' directory into the appropriate directory for your OS.

Linux:
"~/.config/nvim/"

Windows:
"~\AppData\Local\nvim"

### Required external packages

- install language servers:
  - npm install -g vscode-languageserver
  - npm install -g ng-server
  - npm install -g typescript-language-server
  - npm install -g typescript-eslint-language-service
- install ripgrep:
  - Follow latest instructions here: https://github.com/BurntSushi/ripgrep

### Sometimes these might be useful

- :so $VIMRUNTIME/syntax/hitest.vim
  - This will show the color scheme colors (to edit the custom status line for example)

# Shortcuts

Note: \<Leader\> = "Space"

## General

- u
  - Undo
- 3yy
  - Copy 3 lines where cursor is
- 3dd
  - Cut 3 lines where cursor is
- p
  - Paste
- :wa
  - Write(Save) all changed files and keep working
- :xa
  - Write(Save) and Exit all files
- :qa
  - Quit all files (unless there are unsaved changes)
- :qa!
  - Quit all files and discard any unsaved changes
- \<Leader\>sq
  - Delete Session
- \<Leader\>ex OR :e .
  - Open Vim File Explorer
- 54G
  - Go to line '54' in file

### Code Folding

- zo
  - Opens a fold where the cursor is
- zO
  - Opens all folds where the cursor is
- zc
  - Closes fold where the cursor is
- zM
  - Closes all open folds
- zm
  - Increases the fold level by one
- zr
  - Decreases the fold level by one
- zR
  - Decreases the fold level to zero (opens all folds)

### Search for text in file

The basic steps to perform a search in Vim are as follows:

Press "/."
Type the search pattern.
Press "Enter" to perform the search.
Press "n" to find the next occurrence or "N" to find the previous occurrence.

### Find and replace

- :%s/\<search_term\>/\<replace_term\>/g
  - Open Vim File Explorer

### Multiline editing

- :\<line_from\>,\<line_to\>s/^/\<search_term\>/\<replace_term\>/
  - Change lines 1-4 from "" to "//" == ":1,4s/\\/\\///"

## Tabs

- \<Leader\>tn OR :tabnew
  - Open a new tab
- \<Leader\>tc OR :tabc
  - Close current tab
- \<Leader\>tn OR :tabn
  - Cycle to next tab
- \<Leader\>tp OR :tabp
  - Cycle to previous tab

## Windows

- \<Leader\>vs OR :vsp
  - Vertically split window
- \<Leader\>hs OR :sp
  - Horizontally split window
- \<Leader\>- OR :res +2
  - Decrease height of current window by 2
- \<Leader\>+ OR :res -2
  - Increase height of current window by 2
- \<Leader\>v+ OR :vert res +2
  - Increase height of current window by 2
- \<Leader\>v- OR :res -2
  - Decrease height of current window by 2
- \<Leader\>bq OR :bd
  - Close current buffer without closing the window
- \<Leader\>\<Down\> OR \<Ctrl W\>\<Ctrl J\>
  - Move to bottom buffer in current window
- \<Leader\>\<Up\> OR \<Ctrl W\>\<Ctrl K\>
  - Move to top buffer in current window
- \<Leader\>\<Right\> OR \<Ctrl W\>\<Ctrl L\>
  - Move to right buffer in current window
- \<Leader\>\<Left\> OR \<Ctrl W\>\<Ctrl H\>
  - Move to left buffer in current window

## (Nvim) LSP

- K
  - Hover
- gD
  - Go to Declaration
- gd
  - Go to Definition
- gt
  - Go to Type Definition
- \<Leader\>df
  - Diagnostic Go To Next
- \<Leader\>dp
  - Diagnostic Go To Previous
- \<Leader\>dl
  - Telescope Diagnostics List (Shows list of errors)
- \<Leader\>r
  - LSP will rename all occurrences of the variable, not just search and replace
    this will intelligently rename only variables in the scope you are in.
- \<Leader\>c
  - LSP will present you with options you can take such as remove unused imports.
- \<Leader\>o
  - Organize Imports (Typescript only)

## (Nvim) NvimTree

- \<Leader\>nF
  - NvimTree Focus
- \<Leader\>nt
  - NvimTree Toggle
- \<Leader\>nf
  - NvimTree Find
- \<C-x\>
  - Open the file in a horizontal split
- \<C-v\>
  - Open the file in a vertical split
- \<C-t\>
  - Open the file in a tab
- H
  - Toggle Dot Files
- R
  - Refresh
- d
  - Remove (Delete with confirmation)
- r
  - Rename
- a
  - New file; leaving a trailing `/` will add a directory

## (Nvim) Prettier

- \<Leader\>gp OR :Prettier
  - Format using Prettier
- \<Leader\>f OR :Prettier
  - Format using Prettier
- \<Leader\>wf OR :Prettier w
  - Format using Prettier and save

## RipGrep

- \<Leader\>rg
  - Find search by string

## (Nvim) Autocomplete

- \<C-d\>
  - Scroll down
- \<C-f\>
  - Scroll up
- \<C-e\>
  - Close
- \<C-y\>
  - Confirm

## (Nvim) Comment-Nvim

- gcc
  - Toggles the current line using linewise comment
- gbc
  - Toggles the current line using blockwise comment
- \[count\]gcc`
  - Toggles the number of line given as a prefix-count using linewise
- \[count\]gbc
  - Toggles the number of line given as a prefix-count using blockwise
- gc\[count\]{motion}
  - (Op-pending) Toggles the region using linewise comment
- gb\[count\]{motion}
  - (Op-pending) Toggles the region using blockwise comment

## (Nvim) Telescope

- \<Leader\>ff
  - find_files() ==> Lists files in your current working directory, respects .gitignore
- \<Leader\>fg
  - live_grep() ==> Search for a string in your current working directory and get results live as you type (respecting .gitignore)
- \<Leader\>fb
  - buffers() ==> Lists open buffers in current neovim instance
- \<Leader\>ps
  - grep_string() ==> Searches for the string under your cursor in your current working directory
- \<Leader\>fh
  - help_tags() ==> Lists available help tags and opens a new window with the relevant help info on \<cr\>
- \<Leader\>fgf
  - git_files() ==> Fuzzy search through the output of git ls-files command, respects .gitignore, optionally ignores untracked files
- \<C-c\>
  - Close Telescope
- \<Esc\>
  - Close Telescope (in normal mode)
- \<C-n\>/\<Down\>
  - Next Item
- \<C-p\>/\<Up\>
  - Previous Item
- j/k
  - Next/Previous (in normal mode)
- \<C-x\>
  - Go to file selection as a split
- \<C-v\>
  - Go to file selection as a vsplit
- \<C-t\>
  - Go to file selection as a tab

## Nvim-Terminal

- \<Leader\>;
  - Toggle open/close terminal
- \<Leader\>(terminal number without the parenthesis)
  - Open terminal (what ever terminal number you entered, should be a number 1 - 5)
- \<Leader\> +
  - Increase window height
- \<Leader\> -
  - Decrease window height
- \<Leader\>\<Leader\> +
  - Increase window width
- \<Leader\>\<Leader\> -
  - Decrease window width

## Tabline

- \<Leader\>tn or :TablineBufferNext
  - Move to next buffer in tabline
- \<Leader\>tp or :TablineBufferPrevious
  - Move to previous buffer in tabline
