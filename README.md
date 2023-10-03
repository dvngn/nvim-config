# nvim-config

Install [packer.nvim](https://github.com/wbthomason/packer.nvim) - package manager written in Lua.
```console
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

Put [init.vim](init.vim) to `~/.config/nvim/init.vim` folder.

Install [ripgrep](https://github.com/BurntSushi/ripgrep) — search tool (required for telescope grep).
```console
sudo apt install ripgrep
```
```console
sudo dnf install ripgrep
```

Install [typescript-server](https://github.com/typescript-language-server/typescript-language-server#installing) — typescript language server
```console
npm install -g typescript-language-server typescript
```

Install [svelte-language-server](https://www.npmjs.com/package/svelte-language-server) - sveltejs language server
```console
npm install -g svelte-language-server
```

Install [python-lsp-server](https://github.com/python-lsp/python-lsp-black) - python lsp server + black formatter
```console
pipx install python-lsp-black --include-deps
```

[Vim markdown](https://github.com/preservim/vim-markdown)
Markdown commands:
- `zR`: opens all folds
- `zM`: folds everything all the way
