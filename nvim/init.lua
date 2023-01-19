require "user.keymaps"

if vim.g.vscode then
    -- VSCode extension (do nothing)
else
    -- ordinary Neovim
    require "user.options"
    require "user.keymaps"
    require "user.plugins"
    require "user.colorscheme"
    require "user.cmp"
    require "user.lsp"
    require "user.telescope"
    require "user.gitsigns"
    require "user.treesitter"
    require "user.autopairs"
    require "user.comment"
    require "user.nvim-tree"
    require "user.bufferline"
    require "user.lualine"
    require "user.toggleterm"
    require "user.project"
    require "user.impatient"
    require "user.indentline"
    require "user.alpha"
    require "user.whichkey"
    require "user.autocommands"
end
