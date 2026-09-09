local null_ls = require("null-ls")

return {
    sources = {
        -- Formatters
        null_ls.builtins.formatting.stylua, -- lua
        null_ls.builtins.formatting.gofumpt, -- go
        null_ls.builtins.formatting.prettierd, -- javascript & typescript
        null_ls.builtins.formatting.shuck, -- bash & sh
        null_ls.builtins.formatting.dockerfmt, -- docker
        null_ls.builtins.formatting.nginx_config_formatter, -- nginx conf

        -- Diagnostics / Linting
        null_ls.builtins.diagnostics.bacon, -- rust
        null_ls.builtins.diagnostics.shuck, -- bash & sh
        null_ls.builtins.diagnostics.hadolint, -- docker 
        null_ls.builtins.diagnostics.golangcli_lint, -- go
        null_ls.builtins.diagnostics.eslint_d, -- javascript & typescript

        -- Completion
        null_ls.builtins.completion.spell,
    },
}
