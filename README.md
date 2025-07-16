# Сборка на основе Nvcad

Данная сборка включает lsp для golang, html, css, js, ts  
Также есть возможность редактировать и просматривать md 
файлы через расширение markdown-preview.nvim 
(Данное расширение требует установленный Node.js)  
Сборка имеет мапинги для руской йцукен раскладки в Visual и Normal моде  

# Установк windows через PowerShell

Перед установкой убедитесь что у вас установлен Nvim

Сделайте резервную копию ваших текущих файлов Neovim

```
# required
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak
# optional but recommended
Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak
```
Клонирование репозитория 
```
git clone https://github.com/Zajimbot/NvcadFork.git $env:LOCALAPPDATA\nvim
```
Удалить `.git` папка, вы можете добавить ее в свой собственный репозиторий позже
```
Remove-Item $env:LOCALAPPDATA\nvim\.git -Recurse -Force
```
Запустите Nvim
```
nvim
```
# Установка на Linux

Перед установкой убедитесь что у вас установлен Nvim

Сделайте резервную копию ваших текущих файлов Neovim

```
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```
Клонирование репозитория 
```
git clone https://github.com/Zajimbot/NvcadFork.git ~/.config/nvim
```
Удалить `.git` папка, вы можете добавить ее в свой собственный репозиторий позже
```
rm -rf ~/.config/nvim/.git
```
Запустите Nvim
```
nvim
```



# Структура файлов сборки
```
└───lua
    │   autocmds.lua
    │   chadrc.lua
    │   mappings.lua
    │   options.lua
    │
    ├───configs
    │       conform.lua
    │       lazy.lua
    │       lspconfig.lua
    │
    └───plugins
            init.lua
   ```



Для прозрачности темы Nvim вам нужно редактировать прозрачность в вашем терменале
