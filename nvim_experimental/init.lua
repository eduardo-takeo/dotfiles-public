require "eduardo.keymaps"

if vim.g.vscode then
    -- VSCode extension (do nothing)
else
    -- ordinary Neovim
    require "eduardo.options"
    require "eduardo.colorscheme"
end
