# nvim-config

Install [vim-plug](https://github.com/junegunn/vim-plug) — plugin manager for vim/nvim.
```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

Put [init.vim](init.vim) to `~/.config/nvim/init.vim` folder.

Install [ripgrep](https://github.com/BurntSushi/ripgrep) — search tool (required for telescope grep).
```bash
sudo apt install ripgrep
```
```bash
sudo dnf install ripgrep
```

Install [typescript-server](https://github.com/typescript-language-server/typescript-language-server#installing) — typescript language server
```bash
npm install -g typescript-language-server typescript
```

Install [svelte-language-server](https://www.npmjs.com/package/svelte-language-server) - sveltejs language server
```bash
npm install -g svelte-language-server
```
