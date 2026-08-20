require("config.set")
require("config.lazy")

vim.api.nvim_create_autocmd('FileType', {
    callback = function(args)
        -- pcall prevents errors on filetypes missing a compiled parser
        pcall(vim.treesitter.start, args.buf)
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end,
})

require('kanagawa').setup({
    transparent = true,
    colors = { theme = { all = { ui = { bg_gutter = "none" } } } },
    theme = "wave",
})
vim.cmd("colorscheme kanagawa")

local lsp_configs = {}
for _, f in pairs(vim.api.nvim_get_runtime_file('lsp/*.lua', true)) do
    local server_name = vim.fn.fnamemodify(f, ':t:r')
    table.insert(lsp_configs, server_name)
end
vim.lsp.enable(lsp_configs)
