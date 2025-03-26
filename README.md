# dotfiles

## setup

```sh
rm -f ~/.bashrc
rm -f ~/.editorconfig
rm -f ~/.vimrc
rm -f ~/.zshrc

ln -s dotfiles/.bashrc ~/.bashrc
ln -s dotfiles/.editorconfig ~/.editorconfig
ln -s dotfiles/.vimrc ~/.vimrc
ln -s dotfiles/.zshrc ~/.zshrc

rm -f ~/Library/Application\ Support/Code/User/keybindings.json
rm -f ~/Library/Application\ Support/Cursor/User/keybindings.json
rm -f ~/Library/Application\ Support/Code/User/settings.json
rm -f ~/Library/Application\ Support/Cursor/User/settings.json

cp vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
cp vscode/keybindings.json ~/Library/Application\ Support/Cursor/User/keybindings.json
cp vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
cp vscode/settings.json ~/Library/Application\ Support/Cursor/User/settings.json
```
