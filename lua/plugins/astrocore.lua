-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 },
      autopairs = true,
      cmp = true,
      diagnostics_mode = 3,
      highlighturl = true,
      notifications = true,
    },
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    options = {
      opt = {
        number = true,
        spell = false,
        signcolumn = "yes",
        wrap = false,
        expandtab = true,
        shiftwidth = 2,
        tabstop = 2,
        cursorline = true,
        cursorcolumn = true,
        relativenumber = false,
      },
      g = {
        qs_highlight_on_keys = "fFtT",
      },
    },
    mappings = {
      t = {
        jj = { "<c-\\><c-n>" },
        jk = { "<c-\\><c-n>" },
      },
      v = {
        K = { "5k" },
        J = { "5j" },
        H = { "_" },
        L = { "$" },
      },
      n = {
        K = { "5k" },
        J = { "5j" },
        H = { "_" },
        L = { "$" },
        ["]]"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        ["[["] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },
      },
    },
  },
}
