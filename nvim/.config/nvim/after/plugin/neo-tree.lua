require('neo-tree').setup({
    hijack_netrw_behavior = "open_current",
    window = {
        position = "current",
        mappings = {

        },
    },
     filesystem = {
          filtered_items = {
            visible = true, -- when true, they will just be displayed differently than normal items
            hide_dotfiles = true,
            hide_gitignored = true,
            hide_hidden = false, -- only works on Windows for hidden files/directories
          },
    },
})
