#!/usr/bin/env bash

set -e

typeset -A packages
packages=(
 [nvim-lua/plenary.nvim]=9ce85b0f7dcfe5358c0be937ad23e456907d410b
 [neovim/nvim-lspconfig]=2b361e043810d5587d9af0787f8ce40da92ec5e9
 [editorconfig/editorconfig-vim]=0d54ea863089fb13be423b4aed6cca35f3a5d778
 [nvim-telescope/telescope.nvim]=54930e1abfc94409e1bb9266e752ef8379008592
 [sainnhe/sonokai]=*
 [jacoborus/tender.vim]=*
 [preservim/nerdcommenter]=d2e21d417f6c788b11ae3b90d7ac478930dead36
 [machakann/vim-sandwich]=c5a2cc438ce6ea2005c556dc833732aa53cae21a
)

packages_dir="$HOME/.local/share/nvim/site/pack/dev/start"
if [[ $1 == "--reset" ]]; then
	rm -rf "$packages_dir"
fi
mkdir -p "$packages_dir"
cd "$packages_dir"

for p in "${!packages[@]}"; do
	pver="${packages[$p]}"
	pdir=`basename $p`
	if [ -d "$pdir" ]; then
		printf "  Package %q already installed\n" "$p"
		continue
	fi
	printf "Installing %q\n" "$p"
	git clone --quiet "https://github.com/$p"
	if [ "$pver" != "*" ]; then
		cd "$pdir"
		git reset --hard --quiet "$pver"
		printf "  Used version %q\n" "$pver"
		cd "$packages_dir"
	fi
	printf "  Package %q installed\n" "$p"
done
