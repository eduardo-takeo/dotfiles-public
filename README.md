# dotfiles

My personal terminal configuration

## ✨ Features

- [wezterm](https://wezfurlong.org/wezterm/) as terminal emulator 💻
- zsh as shell 🐠
- [nvim](https://neovim.io/) as text editor ✍️
- [tmux](https://tmuxguide.readthedocs.io/en/latest/index.html) as tmux ⭐️

## 🧰 Prerequisites

- wezterm
- neovim
  - ripgrep
  - fd
  - fz
- tmux

## 🛠 Installation

Remove ~/.config folder

```bash
rm -rf ~/.config
```

Remove nvim caches and previous dependencies

```bash
rm -f ~/.local/share/nvim
rm -f ~/.local/state/nvim
rm -f ~/.cache/nvim
```

Clone repo

```bash
git clone https://github.com/eduardo-takeo/dotfiles-public.git ~/.config
```

Run neovim

```bash
nvim
```

```

```
