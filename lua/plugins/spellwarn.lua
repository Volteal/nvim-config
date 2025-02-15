return {
  "ravibrock/spellwarn.nvim",
  event = "VeryLazy",
  config = function()
    require("spellwarn").setup()
  end
}
