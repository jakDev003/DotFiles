# DotFiles

## Installation Location

To install copy everything from the 'dotfiles' directory into the appropriate directory for your OS.

Linux:
~/.config/nvim/

Windows:
~\AppData\Local\nvim

## Shortcuts

Note: \<Leader\> = "Space"

### Windows

- \<Leader\>vsp OR :vsp
  - Vertically split window
- \<Leader\>sp OR :sp
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

### General

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

#### Search for text in file

The basic steps to perform a search in Vim are as follows:

Press "/."
Type the search pattern.
Press "Enter" to perform the search.
Press "n" to find the next occurrence or "N" to find the previous occurrence.

#### Find and replace

- :%s/\<search_term\>/\<replace_term\>/g
  - Open Vim File Explorer

#### Multiline editing

- :\<line_from\>,\<line_to\>s/^/\<search_term\>/\<replace_term\>/
  - Change lines 1-4 from "" to "//" == ":1,4s/\\/\\///"

### LSP

- \<Leader\>e
  - Open Diagnostic window
- [d
  - Diagnostic Window Go to Prev
- ]d
  - Diagnostic Window Go to Prev
- \<Leader\>q
  - Diagnostic Window Set Loc List
- gD
  - Go to Declaration
- gd
  - Go to Definition
- K
  - Hover
- gi
  - Go to Implementation
- \<C-k\>
  - Signature Help
- \<Leader\>wa
  - Add workspace folder
- \<Leader\>wr
  - Remove workspace folder
- \<Leader\>wl
  - List Workspaces
- \<Leader\>D
  - Go to Type Definition
- \<Leader\>rn
  - Rename
- \<Leader\>ca
  - Code Action
- gr
  - Go to References
- \<Leader\>fmt
  - Format using LSP

### NvimTree

- \<Leader\>nF
  - NvimTree Focus
- \<Leader\>nt
  - NvimTree Toggle
- \<Leader\>nf
  - NvimTree Find
- \<C-x\>
  - Open the file in a horizontal split

### Prettier

- \<Leader\>gp OR :Prettier
  - Format using Prettier
- \<Leader\>f OR :Prettier
  - Format using Prettier
- \<Leader\>wf OR :Prettier w
  - Format using Prettier and save

### RipGrep

- \<Leader\>rg
  - Find search by string

### Autocomplete

- \<C-d\>
  - Scroll down
- \<C-f\>
  - Scroll up
- \<C-e\>
  - Close
- \<C-y\>
  - Confirm

### Nvim-Comment

- \<Leader\>c OR :CommentToggle
  - Comment / Uncomment current line
- :67,69CommentToggle
  - Comment / Uncomment a range
- :'<,'>CommentToggle
  - Comment / Uncomment in visual selection

### Git

- git pull --tags origin develop
  - Pull from 'develop' branch to get merge conflicts
