# distinct-nvim

**Distinct** is neovim colour scheme with distinctive, vibrant colours. It is partially inspired by my previous theme - [gruv-vsassist.nvim](https://github.com/bartekprtc/gruv-vsassist.nvim). It has a bit of gruvboxy tone to it.

**Distinct** supports treesitter highlighting, as well as semantic token highlighting. It supports some major plugins, but not all of them (current list can be found at the end of README). Fell free to add or request support for other plugins. It's entirely written in lua, therefore it's not suitable for vim.

## Preview

![showcase1](showcase/showcase_1.png?)
![showcase2](showcase/showcase_2.png?)
![showcase3](showcase/showcase_3.png?)

## Usage

### Lazy

If you don't want to change any settings, `setup()` needn't to be called. Defaults are presented below.

``` lua
{
    "https://gitlab.com/bartekjaszczak/distinct-nvim",

    priority = 1000,
    config = function()
        require("distinct").setup({
            doc_comments_different_color = true, -- Use different colour for documentation comments
        })

        vim.cmd [[colorscheme distinct]]
    end
}
```

### Lualine

``` lua
require("lualine").setup({
    options = {
        -- ...
        theme = 'distinct'
        -- ...
    },
})
```

### Barbecue

``` lua
require("barbecue").setup({
    -- ...
    theme = 'distinct'
    -- ...
})
```

## Supported plugins

- [barbecue.nvim](https://github.com/utilyre/barbecue.nvim)
- [copilot.lua](https://github.com/zbirenbaum/copilot.lua)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [lsp_signature.nvim](https://github.com/ray-x/lsp_signature.nvim)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [mason.nvim](https://github.com/williamboman/mason.nvim)
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [neorg](https://github.com/nvim-neorg/neorg)
- [symbols-outline.nvim](https://github.com/simrat39/symbols-outline.nvim)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)
- [undotree](https://github.com/mbbill/undotree)
