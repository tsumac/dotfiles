# env-files

## setup

```sh
rm -f ~/.bashrc
rm -f ~/.editorconfig
rm -f ~/.vimrc
rm -f ~/.zshrc

ln -s ~/src/github.com/tsumac/env-files/dotfiles/.bashrc ~/.bashrc
ln -s ~/src/github.com/tsumac/env-files/dotfiles/.editorconfig ~/.editorconfig
ln -s ~/src/github.com/tsumac/env-files/dotfiles/.vimrc ~/.vimrc
ln -s ~/src/github.com/tsumac/env-files/dotfiles/.zshrc ~/.zshrc

rm -f ~/Library/Application\ Support/Code/User/keybindings.json
rm -f ~/Library/Application\ Support/Cursor/User/keybindings.json
rm -f ~/Library/Application\ Support/Code/User/settings.json
rm -f ~/Library/Application\ Support/Cursor/User/settings.json

cp vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
cp vscode/keybindings.json ~/Library/Application\ Support/Cursor/User/keybindings.json
cp vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
cp vscode/settings.json ~/Library/Application\ Support/Cursor/User/settings.json
```
