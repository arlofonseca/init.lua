return {
  {
    "sindrets/diffview.nvim",
    keys = {
      {
        "<leader>do",
        function()
          require("diffview").open()
        end,
      },
      {
        "<leader>dc",
        function()
          require("diffview").close()
        end,
      },
      {
        "<leader>fh",
        function()
          require("diffview").file_history(nil, "%")
        end,
      }
    },
    cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewFileHistory" },
  }
}
