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

### Formatting

- \<Leader\>fp OR :Prettier
  - Format using Prettier
- \<Leader\>fmt
  - Format using LSP

### LSP

- gD
  - Go to declaration
- gd
  - Go to definition
- K
  - Hover Description
- gi
  - Go to implementation
- \<Ctrl k\>
  - Signature help
- \<Leader\>d
  - Type Definition
- \<Leader\>rn
  - Rename
- \<Leader\>ca
  - Code Action
- gr
  - Go to references
