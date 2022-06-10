# VimSettings

To install copy everything from the 'dotfiles' directory into the appropriate directory for your OS.
Linux:
~/.config/nvim/
Windows:
~\AppData\Local\nvim

## Shortcuts

### Windows

- :vsp
  - Vertically split window
- :sp
  - Horizontally split window
- :res -N
  - Decrease height of current window
- :res +N
  - Increase height of current window
- :vert res -N
  - Decrease width of current window
- :vert res +N
  - Increase width of current window
- :bd
  - Close current buffer without closing the window

### Buffers [\<leader\> = 'Space']

- \<leader\>l
  - Switch to next buffer
- \<leader\>p
  - Switch to previous buffer
- \<leader\>q
  - Close current buffer

### Search [\<leader\> = 'Space']

- <leader>ff
  - Open Fuzzy Finder (fzf)
- Zo
  - Open fold
- Ctrl^
  - Change between buffer (open files / tabs)
- / + “Some text to search for without the quotes”
  - This will search for a word in the open files
- :s/foo/bar/
  - Find first occurance of 'foo' and replace with 'bar'
- :s/foo/bar/g
  - Find ALL occurances of 'foo' ON THE CURRENT LINE and replace with 'bar'
- :%s/foo/bar/g
  - Find ALL occurances of 'foo' IN THE CURRENT FILE and replace with 'bar'

### Telescope

- \<leader\>ff
  - Lists files in your current working directory
- \<leader\>fg
  - Search for a string in your current working directory and get results live as you type
- \<leader\>fb
  - Lists open buffers in current neovim instance
- \<leader\>fh
  - Lists available help tags and opens a new window with the relevant help info

### NerdTree

- \<leader\>nf
  - Move cursor to the NerdTree buffer
- \<leader\>n
  - Open NerdTree
- \<leader\>nt
  - Toggle NerdTree Open / Closed
- \<leader\>nff
  - Find the current file in the tree. If no tree exists for the current tab,
    or the file is not under the current root, then initialize a new tree where
    the root is the directory of the current file.

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

### Formatting

- \<leader\>p
  - Run Prettier
