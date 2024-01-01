local ft = require("guard.filetype")

ft("lua"):fmt("stylua")
ft("typescript,javascript,typescriptreact,svelte,astro,html,css"):fmt("prettier")
ft("python"):fmt("black")
ft("go"):fmt("gofmt")
ft("rust"):fmt("rustfmt")
ft("c,cpp"):fmt("clang-format")
ft("java"):fmt("google-java-format")

require("guard").setup({
    fmt_on_save = true,
    lsp_as_default_formatter = false,
})
