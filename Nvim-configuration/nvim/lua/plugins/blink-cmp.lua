return {
  "saghen/blink.cmp",
  version = "*",
  event = "InsertEnter",
  dependencies = {
    "Kaiser-Yang/blink-cmp-dictionary",
  },
  opts = {
    keymap = {
      preset = "super-tab"},
    sources = {
      default = { "lsp", "buffer", "path" },
      per_filetype = {
        markdown = { "buffer", "dictionary" },
        text = { "buffer", "dictionary" },
      },
      providers = {
        dictionary = {
          module = "blink-cmp-dictionary",
          name = "Dictionary",
          score_offset = 10,
          min_keyword_length = 2,
          max_items = 10,
          async = true,
          opts = {
            dictionary_files = {
              vim.fn.stdpath("config") .. "/dictionaries/allwords.txt",
            },
          },
        },
      },
    },
   completion = {
      list = { selection = { preselect = false } },
      menu = { auto_show = true },
    },
  },
}
