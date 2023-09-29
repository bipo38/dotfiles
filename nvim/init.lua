
require("bipo/lazy")

require("lazy").setup(
require("bipo/plugins")
)

--local path = string.format("%s/main.vim", vim.fn.stdpath("config"))
--vim.cmd("source " .. path)


local core_conf_files = {
  "main.vim",
  "mappings.vim",
}

for _, name in ipairs(core_conf_files) do
  local path = string.format("%s/core/%s", vim.fn.stdpath("config"), name)
  local source_cmd = "source " .. path
  vim.cmd(source_cmd)
end

