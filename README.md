# VimSettings

~/.config/nvim/init.vim

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

### Search
- ‘Space’ + f + f
  - Open Fuzzy Finder (fzf)
- Zo
  - Open fold
- Ctrl + ^
  - Change between buffer (open files / tabs)
- / + “Some text to search for without the quotes”
  - This will search for a word in the open files
- :s/foo/bar/
  - Find first occurance of 'foo' and replace with 'bar'
- :s/foo/bar/g
  - Find ALL occurances of 'foo' ON THE CURRENT LINE and replace with 'bar'
- :%s/foo/bar/g
  - Find ALL occurances of 'foo' IN THE CURRENT FILE and replace with 'bar'

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
