return {
    {
        "folke/snacks.nvim",
        priority = 1000,
        dependencies = { "echasnovski/mini.icons" },
        lazy = false,
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
            bigfile = { enabled = true },
            dashboard = {
                enabled = true,
                sections = {
                    {
                        pane = 1,
                        { section = "header" },
                        { section = "keys",   gap = 1, padding = 1 },
                        { section = "startup" },
                    },
                    {
                        section = "terminal",
                        cmd = "chafa ~/Pictures/feet-lmfao.webp --format symbols",
                        random = 10,
                        pane = 2,
                        indent = 4,
                        height = 24,
                    },
                },
            },
            notifier = { enabled = true },
            quickfile = { enabled = true },
            statuscolumn = { enabled = true },
            words = { enabled = true },
        },
    },
}
