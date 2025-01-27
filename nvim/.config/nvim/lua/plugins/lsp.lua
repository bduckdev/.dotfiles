return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            auto_install = true,
        },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "ts_ls", "rust_analyzer", "gopls" },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
            })
            lspconfig.ts_ls.setup({
                capabilities = capabilities,
            })
            lspconfig.rust_analyzer.setup({
                capabilities = capabilities,
            })
            lspconfig.gopls.setup({
                capabilities = capabilities,
            })
            lspconfig.cssls.setup({
                capabilities = capabilities,
            })
            lspconfig.templ.setup({
                capabilities = capabilities,
            })
            lspconfig.emmet_language_server.setup({
                capabilities = capabilities,
                --				filetypes = { "templ", "astro", "javascript", "typescript", "jsx", "tsx", "react" },
            })
            lspconfig.html.setup({
                capabilities = capabilities,
                --				filetypes = { "templ", "astro", "javascript", "typescript", "jsx", "tsx", "react" },
            })
            lspconfig.htmx.setup({
                capabilities = capabilities,
                --				filetypes = { "templ", "astro", "javascript", "typescript", "jsx", "tsx", "react" },
            })
            lspconfig.tailwindcss.setup({
                capabilities = capabilities,
                --				filetypes = { "templ", "astro", "javascript", "typescript", "jsx", "tsx", "react" },
            })
            lspconfig.pyright.setup({
                capabilities = capabilities,
            })
            lspconfig.ocamllsp.setup({
                capabilities = capabilities,
            })
            lspconfig.hls.setup({
                capabilities = capabilities,
            })
            lspconfig.clangd.setup({
                capabilities = capabilities,
            })
            lspconfig.bashls.setup({
                capabilities = capabilities,
            })
            lspconfig.prismals.setup({
                capabilities = capabilities,
            })
            lspconfig.svelte.setup({
                capabilities = capabilities,
            })
            --lspconfig.mdx_analyser.setup({
            --   capabilities = capabilities,
            --})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, {})
            vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, {})
            vim.keymap.set("n", "[d", vim.diagnostic.goto_next, {})
            vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, {})
            vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, {})
            vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, {})
            vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, {})
            vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, {})
        end,
    },
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        config = function()
            require("mason-tool-installer").setup({
                ensure_installed = {
                    "prettier",
                    "eslint",
                    "stylua",
                    "shellcheck",
                    "revive",
                    "shfmt",
                },
            })
        end,
    },
}
