-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

---@type LazySpec
return {
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        "██    ██ ██ ███    ███",
        "██    ██ ██ ████  ████",
        "██    ██ ██ ██ ████ ██",
        " ██  ██  ██ ██  ██  ██",
        "  ████   ██ ██      ██",
      }
      return opts
    end,
  },
  { "unblevable/quick-scope" },
}
