# mininvim

# Installing mininvim
## Backup and remove old nvim config.
Backup old nvim config.
```
mv ~/.config/nvim ~/.config/nvim-old
```
Or remove old nvim config.
```
rm -rf ~/.config/nvim
```
Remove local/state and local/share
```
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim
```
## Install Linux
Or MacOS
```bash
git clone https://github.com/haxorg-ux/mininvim ~/.config/nvim && nvim
```
Run `:MasonInstallAll` command after lazy.nvim finishes downloading plugins

- Windows
```bash
git clone https://github.com/NvChad/tinyvim $HOME\AppData\Local\nvim --depth 1 && nvim
```

Run `:MasonInstallAll` command after lazy.nvim finishes downloading plugins

# Reset
```bash
rm -rf ~/.local/share/nvim && rm -rf ~/.config/nvim/lazy-lock.json

# Dir structure
```bash
├── init.lua
├── lua
    ├── commands.lua
    ├── mappings.lua
    ├── options.lua
    └── plugins
        ├── init.lua
        ├── configs
            ├── cmp.lua
            ├── telescope.lua
            └── ( more ... )
```
