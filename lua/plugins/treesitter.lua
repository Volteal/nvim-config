return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      ensure_installed = {"lua", "go", "python"}
      highlight = {enable = true}
      indent = {enable = true}
    end
}