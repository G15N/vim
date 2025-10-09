# Vim Cheat Sheet

> **Quick Reference Guide** for your customized Vim configuration

This cheat sheet contains the most useful key combinations configured in your `.vimrc` and `plugins.vimrc` files.

## Quick Start

| **Leader Key** | `,` (comma)                           |
| -------------- | ------------------------------------- |
| **Most Used**  | `Ctrl+p` → File navigation            |
| **Window Nav** | `Ctrl+h/j/k/l` → Move between windows |
| **Save**       | `,w` → Fast save                      |

## File Operations

### File Navigation (fzf)

| Key Combination | Action               | Description                  |
| :-------------: | -------------------- | ---------------------------- |
|    `Ctrl+p`     | `:Files`             | **Fuzzy find files**         |
|    `Ctrl+t`     | `:Tags`              | Fuzzy find tags              |
|    `Ctrl+b`     | `:Buffers`           | List open buffers            |
|      `,f`       | `:Rg `               | Search in files (ripgrep)    |
|      `,F`       | `:Rg <current-word>` | Search for word under cursor |

### File Management

| Key Combination | Action                      | Description                      |
| :-------------: | --------------------------- | -------------------------------- |
|      `,w`       | `:w!`                       | **Fast save**                    |
|      `F2`       | Toggle paste mode           | Switch between paste/normal mode |
|      `:W`       | `w !sudo tee % > /dev/null` | Save with sudo permissions       |

## Buffer Management

| Key Combination | Action            | Description          |
| :-------------: | ----------------- | -------------------- |
|      `,bn`      | `:bn`             | Next buffer          |
|      `,bp`      | `:bp`             | Previous buffer      |
|      `,bd`      | `:Bclose`         | Close current buffer |
|      `,ba`      | `:1,1000 bd!`     | Close all buffers    |
|      `,wa`      | `:1,9000bwipeout` | Wipe out all buffers |

## Tab Management

| Key Combination | Action                    | Description                    |
| :-------------: | ------------------------- | ------------------------------ |
|     `,tnew`     | `:tabnew`                 | Create new tab                 |
|      `,to`      | `:tabonly`                | Close all tabs except current  |
|    `,tclose`    | `:tabclose`               | Close current tab              |
|      `,tm`      | `:tabmove`                | Move current tab               |
|      `,tp`      | `:tabprevious`            | Previous tab                   |
|      `,tn`      | `:tabnext`                | Next tab                       |
|      `,te`      | `:tabedit <current-dir>/` | Edit file in current directory |

## Window Navigation

| Key Combination | Action   | Description           |
| :-------------: | -------- | --------------------- |
|    `Ctrl+h`     | `<C-W>h` | Move to left window   |
|    `Ctrl+j`     | `<C-W>j` | Move to bottom window |
|    `Ctrl+k`     | `<C-W>k` | Move to top window    |
|    `Ctrl+l`     | `<C-W>l` | Move to right window  |

## Text Manipulation

### Line Movement

| Key Combination | Action | Description    |
| :-------------: | ------ | -------------- |
|    `Ctrl+K`     | `ddkP` | Move line up   |
|    `Ctrl+J`     | `ddp`  | Move line down |

### Visual Mode Line Movement

| Key Combination | Action     | Description              |
| :-------------: | ---------- | ------------------------ |
|    `Ctrl+K`     | `xkP`[V`]` | Move selected lines up   |
|    `Ctrl+J`     | `xp`[V`]`  | Move selected lines down |

## Search and Navigation

| Key Combination | Action      | Description                 |
| :-------------: | ----------- | --------------------------- |
|     `,<cr>`     | `:set hls!` | Toggle search highlighting  |
|      `,n`       | `:cn`       | Next search result          |
|      `,p`       | `:cp`       | Previous search result      |
|      `,c`       | `:cw`       | Display results in quickfix |
|      `,l`       | `:lw`       | Display location list       |
|      `,cc`      | `:ccl`      | Hide quickfix results       |

## Display Toggles

| Key Combination | Action                | Description                  |
| :-------------: | --------------------- | ---------------------------- |
|     `Space`     | `za`                  | **Toggle current fold**      |
|      `,rn`      | `:set relativenumber` | Toggle relative line numbers |
|      `,ww`      | `:set invwrap`        | Toggle text wrapping         |
|      `,i`       | `:set list!`          | Toggle invisible characters  |

## Terminal

| Key Combination | Action      | Description            |
| :-------------: | ----------- | ---------------------- |
|      `,sh`      | `:terminal` | Open terminal emulator |

## Plugin-Specific Commands

### vim-commentary

| Key Combination | Action         | Description                     |
| :-------------: | -------------- | ------------------------------- |
|      `gcc`      | Toggle comment | Comment/uncomment current line  |
|      `gc`       | Toggle comment | Comment/uncomment selected text |

### vim-surround

| Key Combination | Action             | Description            |
| :-------------: | ------------------ | ---------------------- |
|     `cs"'`      | Change surrounding | Change " to '          |
|    `cs'<q>`     | Change surrounding | Change ' to <q>        |
|     `cst"`      | Change surrounding | Change tag to "        |
|      `ds"`      | Delete surrounding | Delete surrounding "   |
|     `ysiw]`     | Add surrounding    | Add [ ] around word    |
|     `yss)`      | Add surrounding    | Add ( ) around line    |
|      `S"`       | Add surrounding    | Add " around selection |

### vim-gitgutter

| Key Combination | Action        | Description             |
| :-------------: | ------------- | ----------------------- |
|      `]h`       | Next hunk     | Go to next git hunk     |
|      `[h`       | Previous hunk | Go to previous git hunk |
|  `<leader>hp`   | Preview hunk  | Preview git hunk        |
|  `<leader>hs`   | Stage hunk    | Stage git hunk          |
|  `<leader>hu`   | Undo hunk     | Undo git hunk           |

### ALE (Linting)

| Key Combination | Action         | Description                  |
| :-------------: | -------------- | ---------------------------- |
|    `:ALEFix`    | Fix issues     | Auto-fix linting issues      |
|   `:ALENext`    | Next issue     | Go to next linting issue     |
| `:ALEPrevious`  | Previous issue | Go to previous linting issue |

### vim-go (Go Development)

|       Key Combination        | Action           | Description                          |
| :--------------------------: | ---------------- | ------------------------------------ |
| **Navigation & Definition**  |                  |                                      |
|            `,gd`             | `:GoDef`         | **Go to definition**                 |
|            `,gdv`            | `:GoDefVertical` | Go to definition (vertical split)    |
|            `,gds`            | `:GoDefSplit`    | Go to definition (horizontal split)  |
|            `,gD`             | `:GoDecls`       | **Browse declarations in file**      |
|            `,gDD`            | `:GoDeclsDir`    | Browse declarations in directory     |
|   **Documentation & Info**   |                  |                                      |
|           `,gdoc`            | `:GoDoc`         | Show documentation                   |
|           `,gdocv`           | `:GoDocVertical` | Show documentation (vertical)        |
|            `,gi`             | `:GoInfo`        | **Show type information**            |
| **Interface Implementation** |                  |                                      |
|            `,gim`            | `:GoImplements`  | **Show interface implementations**   |
|            `,gii`            | `:GoDescribe`    | Show what interfaces type implements |
|            `,gen`            | `:GoImpl`        | Generate interface method stubs      |
|     **Code Navigation**      |                  |                                      |
|            `,grf`            | `:GoReferrers`   | **Find references/usage**            |
|            `,gc`             | `:GoCallers`     | Find callers of function             |
|            `,gce`            | `:GoCallees`     | Find callees of function             |
|            `,gr`             | `:GoRename`      | Rename identifier                    |
|             `]]`             | Go def stack     | Navigate definition stack            |
|             `[[`             | Clear def stack  | Clear definition stack               |
|       **Build & Test**       |                  |                                      |
|            `,gb`             | `:GoBuild`       | **Build Go project**                 |
|            `,gt`             | `:GoTest`        | Run all tests                        |
|            `,gtf`            | `:GoTestFunc`    | Run test for current function        |
|     **Legacy Commands**      |                  |                                      |
|           `:GoRun`           | Run Go program   | Execute current Go file              |
|        `:GoCoverage`         | Show coverage    | Display test coverage                |

---

## Essential Vim Commands

### Basic Movement

| Key Combination | Action        | Description               |
| :-------------: | ------------- | ------------------------- |
|       `h`       | Left          | Move left                 |
|       `j`       | Down          | Move down                 |
|       `k`       | Up            | Move up                   |
|       `l`       | Right         | Move right                |
|       `w`       | Word forward  | Move to next word         |
|       `b`       | Word backward | Move to previous word     |
|       `0`       | Line start    | Move to beginning of line |
|       `$`       | Line end      | Move to end of line       |
|      `gg`       | File start    | Move to beginning of file |
|       `G`       | File end      | Move to end of file       |

### Editing

| Key Combination | Action         | Description                   |
| :-------------: | -------------- | ----------------------------- |
|       `i`       | Insert         | Insert before cursor          |
|       `a`       | Append         | Insert after cursor           |
|       `o`       | New line       | Insert new line below         |
|       `O`       | New line above | Insert new line above         |
|       `x`       | Delete char    | Delete character under cursor |
|      `dd`       | Delete line    | Delete current line           |
|      `yy`       | Yank line      | Copy current line             |
|       `p`       | Paste          | Paste after cursor            |
|       `P`       | Paste before   | Paste before cursor           |
|       `u`       | Undo           | Undo last change              |
|    `Ctrl+r`     | Redo           | Redo last undone change       |

### Visual Mode

| Key Combination | Action       | Description             |
| :-------------: | ------------ | ----------------------- |
|       `v`       | Visual       | Enter visual mode       |
|       `V`       | Visual line  | Enter visual line mode  |
|    `Ctrl+v`     | Visual block | Enter visual block mode |

## Configuration Highlights

| Feature             | Setting                    | Description            |
| ------------------- | -------------------------- | ---------------------- |
| **Colorscheme**     | `base16-default-dark`      | Dark theme             |
| **Airline theme**   | `base16_default_dark`      | Status line theme      |
| **Line numbers**    | Both absolute and relative | Enhanced navigation    |
| **Auto-completion** | ALE completion enabled     | Smart completions      |
| **Auto-fix**        | ALE fixes on save          | Automatic code fixing  |
| **Mouse**           | Enabled for all modes      | Full mouse support     |
| **Clipboard**       | Uses system clipboard      | Seamless copy/paste    |
| **Spell checking**  | French language            | Language support       |
| **Tab size**        | 4 spaces                   | Consistent indentation |
| **Backup files**    | Disabled                   | Modern workflow        |

## Pro Tips

> **Essential shortcuts to remember:**

1. **`Ctrl+p`** - Your go-to for file navigation
2. **`Ctrl+h/j/k/l`** - Quick window navigation
3. **`Space`** - Toggle folds instantly
4. **`F2`** - Toggle paste mode when pasting code
5. **`,w`** - Fast save (most used command)
6. **`:W`** - Save files that require sudo permissions
7. **ALE** - Automatically fixes code on save
8. **Git** - Real-time change indicators with vim-gitgutter

_Happy coding with Vim!_
