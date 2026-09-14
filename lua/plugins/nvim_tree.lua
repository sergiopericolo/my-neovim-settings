require("nvim-tree").setup({
    view = { width = 30, side = "left" },
    renderer = { icons = { show = { file = true, folder = true } } },
})

require("nvim-tree").setup({
  renderer = {
    highlight_opened_files = "name",
    icons = {
      web_devicons = {
        file = {
          enable = true,
          color = false,
        },
        folder = {
          enable = true,
          color = false,
        },
      },
    },
  },
})

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true })
