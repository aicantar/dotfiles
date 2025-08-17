vim.opt.number = true

-- Cursor settings.

vim.opt.guicursor = {
    "n-v-c:ver25-blinkwait175-blinkoff150-blinkon175",
    "i-ci-ve:ver25-blinkwait175-blinkoff150-blinkon175",
    "r-cr:hor20-blinkwait175-blinkoff150-blinkon175",
    "o:hor50-blinkwait175-blinkoff150-blinkon175",
    "sm:block-blinkwait175-blinkoff150-blinkon175",
}

vim.opt.cursorline = true

-- Indentation settings.

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Preserve tabs for Makefiles.

vim.api.nvim_create_autocmd("FileType", {
    pattern = "make",
    callback = function ()
        vim.opt_local.expandtab = false
    end,
})
