# kerneldiego.zsh-theme

A minimal and informative Zsh theme with a clean box-style layout, Git integration, and colorful prompt indicators for productivity and visual clarity.

## 🌄 Preview

![screenshot](./media/screenshot.png)
![Demo](./media/recording.gif)

## ✨ Features

- Box-style prompt layout using Unicode line characters.
- Shows current username and working directory.
- Git branch and short SHA display.
- Git diff summary (added, modified, deleted, renamed, unmerged, untracked).
- Custom symbols with color-coded segments.
- Lightweight and fast — no external dependencies.

## 🧩 Git Diff Symbols

>These are displayed dynamically in the second prompt line when inside a Git repository.

- +A —> Added files (green)
- ~M —> Modified files (yellow)
- -D —> Deleted files (red)
- R —> Renamed files (blue)
- U —> Unmerged files (magenta)
- ? —> Untracked files (cyan)

---

## 📦 Installation

### Using Oh My Zsh

1. Copy [kerneldiego.zsh-theme](https://raw.githubusercontent.com/KernelDiego/kerneldiego-zsh-theme/main/kerneldiego.zsh-theme) into `~/.oh-my-zsh/themes`.

2. Change `ZSH_THEME="kerneldiego"` in `~/.zshrc`.

3. Reload Zsh for apply theme to command:

   ```bash
   source ~/.zshrc
   ```

---

### Windows Installation

1. Download kerneldiego.zsh-theme

   ```shel
   wget -O ~/.oh-my-zsh/themes/kerneldiego.zsh-theme https://raw.githubusercontent.com/KernelDiego/kerneldiego-zsh-theme/main/kerneldiego.zsh-theme
   ```

2. Place it anywhere and source it in your .zshrc:

   ```shell
   sed -i 's/ZSH_THEME="kerneldiego"/ZSH_THEME="kerneldiego"/' .zshrc
   ```

3. Reload Zsh for apply theme to command:

   ```shell
   source ~/.zshrc
   ```

---

## 🔤 Font Recommendation

To properly render the prompt symbols, use a [Nerd Font](https://www.nerdfonts.com/), e.g., FiraCode Nerd Font or Hack Nerd Font, etc.

---

## Colors used

> To make your terminal look exactly like the screenshots, you can manually configure your terminal emulator with the HEX color values provided below. These colors are used in the theme's prompt styling, so setting them in your terminal ensures full visual consistency.

| Color   | HEX       | Preview |
|---------|-----------|---------|
| Magenta | `#FF2EC8` | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;![#FF2EC8](https://placehold.co/15x15/FF2EC8/FF2EC8)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| Cyan    | `#00F0FF` | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;![#00F0FF](https://placehold.co/15x15/00F0FF/00F0FF)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| Blue    | `#339CFF` | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;![#339CFF](https://placehold.co/15x15/339CFF/339CFF)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| Red     | `#FF4B4B` | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;![#FF4B4B](https://placehold.co/15x15/FF4B4B/FF4B4B)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| Green   | `#3EFFA8` | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;![#3EFFA8](https://placehold.co/15x15/3EFFA8/3EFFA8)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |
| Yellow  | `#FFB700` | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;![#FFB700](https://placehold.co/15x15/FFB700/FFB700)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |

---

## 🙏 Credits 

Made with ❤️ by [KernelDiego](https://github.com/KernelDiego/)
