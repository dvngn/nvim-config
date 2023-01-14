# nvim-config

Install [vim-plug](https://github.com/junegunn/vim-plug) — plugin manager for vim/nvim.
```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

Put [init.vim](init.vim) to `~/.config/nvim/init.vim` folder.

Install [ripgrep](https://github.com/BurntSushi/ripgrep)— search tool (required for telescope grep).
```bash
sudo apt install ripgrep
```
```bash
sudo dnf install ripgrep
```
