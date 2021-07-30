local gl = require("galaxyline")
local colors = {
	bg = "#292D38",
	yellow = "#DCDCAA",
	dark_yellow = "#D7BA7D",
	cyan = "#4EC9B0",
	green = "#608B4E",
	light_green = "#B5CEA8",
	string_orange = "#CE9178",
	orange = "#FF8800",
	purple = "#C586C0",
	magenta = "#D16D9E",
	grey = "#858585",
	blue = "#569CD6",
	vivid_blue = "#4FC1FF",
	light_blue = "#9CDCFE",
	red = "#D16969",
	error_red = "#F44747",
	info_yellow = "#FFCC66",
}
local condition = require("galaxyline.condition")
local gls = gl.section
gl.short_line_list = { "vista", "dbui" }

gls.left[1] = {
	ViMode = {
		provider = function()
			-- auto change color according the vim mode
			local mode_color = {
				n = colors.vivid_blue,
				i = colors.green,
				v = colors.purple,
				V = colors.purple,
				c = colors.magenta,
				no = colors.blue,
				s = colors.orange,
				S = colors.orange,
				ic = colors.yellow,
				R = colors.red,
				Rv = colors.red,
				cv = colors.blue,
				ce = colors.blue,
				r = colors.cyan,
				rm = colors.cyan,
				["r?"] = colors.cyan,
				["!"] = colors.blue,
				t = colors.blue,
			}
			vim.api.nvim_command(
				mode_color[vim.fn.mode()] and "hi GalaxyViMode guifg=" .. mode_color[vim.fn.mode()] or ""
			)
			return "▊ "
		end,
		highlight = { colors.red, colors.bg },
	},
}
--print(vim.fn.getbufvar(0, "ts"))
vim.fn.getbufvar(0, "ts")

--gls.left[2] = {
	--GitIcon = {
		--provider = function()
			--return " "
		--end,
		--condition = condition.check_git_workspace,
		--separator = " ",
		--separator_highlight = { "NONE", colors.bg },
		--highlight = { colors.orange, colors.bg },
	--},
--}

--gls.left[3] = {
	--GitBranch = {
		--provider = "GitBranch",
		--condition = condition.check_git_workspace,
		--separator = " ",
		--separator_highlight = { "NONE", colors.bg },
		--highlight = { colors.grey, colors.bg },
	--},
--}

--gls.left[4] = {
	--DiffAdd = {
		--provider = "DiffAdd",
		--condition = condition.hide_in_width,
		--icon = "  ",
		--highlight = { colors.green, colors.bg },
	--},
--}
--gls.left[5] = {
	--DiffModified = {
		--provider = "DiffModified",
		--condition = condition.hide_in_width,
		--icon = " 柳",
		--highlight = { colors.blue, colors.bg },
	--},
--}
--gls.left[6] = {
	--DiffRemove = {
		--provider = "DiffRemove",
		--condition = condition.hide_in_width,
		--icon = "  ",
		--highlight = { colors.red, colors.bg },
	--},
--}

--gls.right[1] = {
	--DiagnosticError = { provider = "DiagnosticError", icon = "  ", highlight = { colors.error_red, colors.bg } },
--}
--gls.right[2] =
	--{
		--DiagnosticWarn = { provider = "DiagnosticWarn", icon = "  ", highlight = { colors.orange, colors.bg } },
	--}

--gls.right[3] = {
	--DiagnosticHint = { provider = "DiagnosticHint", icon = "  ", highlight = { colors.vivid_blue, colors.bg } },
--}

--gls.right[4] = {
	--DiagnosticInfo = { provider = "DiagnosticInfo", icon = "  ", highlight = { colors.info_yellow, colors.bg } },
--}

--gls.right[5] = {
	--ShowLspClient = {
		--provider = "GetLspClient",
		--condition = function()
			--local tbl = { ["dashboard"] = true, [" "] = true }
			--if tbl[vim.bo.filetype] then
				--return false
			--end
			--return true
		--end,
		--icon = "  ",
		--highlight = { colors.grey, colors.bg },
	--},
--}

--gls.right[6] = {
	--LineInfo = {
		--provider = "LineColumn",
		--separator = "  ",
		--separator_highlight = { "NONE", colors.bg },
		--highlight = { colors.grey, colors.bg },
	--},
--}

--gls.right[7] = {
	--PerCent = {
		--provider = "LinePercent",
		--separator = " ",
		--separator_highlight = { "NONE", colors.bg },
		--highlight = { colors.grey, colors.bg },
	--},
--}

--gls.right[8] = {
	--Tabstop = {
		--provider = function()
			--return "Spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth") .. " "
		--end,
		--condition = condition.hide_in_width,
		--separator = " ",
		--separator_highlight = { "NONE", colors.bg },
		--highlight = { colors.grey, colors.bg },
	--},
--}

--gls.right[9] = {
	--BufferType = {
		--provider = "FileTypeName",
		--condition = condition.hide_in_width,
		--separator = " ",
		--separator_highlight = { "NONE", colors.bg },
		--highlight = { colors.grey, colors.bg },
	--},
--}

--gls.right[10] = {
	--FileEncode = {
		--provider = "FileEncode",
		--condition = condition.hide_in_width,
		--separator = " ",
		--separator_highlight = { "NONE", colors.bg },
		--highlight = { colors.grey, colors.bg },
	--},
--}

---- Add neomux window nums if neomux is present
--local NeomuxProvider = {
	--Neomux = {
		--provider = function()
			--if vim.fn.exists("*WindowNumber") ~= 0 then
				--return vim.api.nvim_exec([[echo "| W: " . WindowNumber() . " |"]], true)
			--else
				--return ""
			--end
		--end,
		--separator = " ",
	--},
--}

--gls.right[11] = NeomuxProvider

--gls.right[12] = {
	--Space = {
		--provider = function()
			--return " "
		--end,
		--separator = " ",
		--separator_highlight = { "NONE", colors.bg },
		--highlight = { colors.orange, colors.bg },
	--},
--}

--gls.short_line_left[1] = {
	--BufferType = {
		--provider = "FileTypeName",
		--separator = " ",
		--separator_highlight = { "NONE", colors.bg },
		--highlight = { colors.grey, colors.bg },
	--},
--}

--gls.short_line_left[2] = {
	--SFileName = { provider = "SFileName", condition = condition.buffer_not_empty, highlight = { colors.grey, colors.bg } },
--}

--gls.short_line_right[1] = { BufferIcon = { provider = "BufferIcon", highlight = { colors.grey, colors.bg } } }
--gls.short_line_right[2] = NeomuxProvider

table.insert(gls.left, {
  GitIcon = {
    provider = function()
      return "  "
    end,
    condition = condition.check_git_workspace,
    separator = " ",
    separator_highlight = { "NONE", colors.alt_bg },
    highlight = { colors.orange, colors.alt_bg },
  },
})

table.insert(gls.left, {
  GitBranch = {
    provider = "GitBranch",
    condition = condition.check_git_workspace,
    separator = " ",
    separator_highlight = { "NONE", colors.alt_bg },
    highlight = { colors.grey, colors.alt_bg },
  },
})

table.insert(gls.left, {
  DiffAdd = {
    provider = "DiffAdd",
    condition = condition.hide_in_width,
    icon = "  ",
    highlight = { colors.green, colors.alt_bg },
  },
})

table.insert(gls.left, {
  DiffModified = {
    provider = "DiffModified",
    condition = condition.hide_in_width,
    icon = " 柳",
    highlight = { colors.blue, colors.alt_bg },
  },
})

table.insert(gls.left, {
  DiffRemove = {
    provider = "DiffRemove",
    condition = condition.hide_in_width,
    icon = "  ",
    highlight = { colors.red, colors.alt_bg },
  },
})

table.insert(gls.left, {
  Filler = {
    provider = function()
      return " "
    end,
    highlight = { colors.grey, colors.alt_bg },
  },
})
-- get output from shell command
function os.capture(cmd, raw)
  local f = assert(io.popen(cmd, "r"))
  local s = assert(f:read "*a")
  f:close()
  if raw then
    return s
  end
  s = string.gsub(s, "^%s+", "")
  s = string.gsub(s, "%s+$", "")
  s = string.gsub(s, "[\n\r]+", " ")
  return s
end
-- cleanup virtual env
local function env_cleanup(venv)
  if string.find(venv, "/") then
    local final_venv = venv
    for w in venv:gmatch "([^/]+)" do
      final_venv = w
    end
    venv = final_venv
  end
  return venv
end
local PythonEnv = function()
  if vim.bo.filetype == "python" then
    local venv = os.getenv "CONDA_DEFAULT_ENV"
    if venv ~= nil then
      return "  (" .. env_cleanup(venv) .. ")"
    end
    venv = os.getenv "VIRTUAL_ENV"
    if venv ~= nil then
      return "  (" .. env_cleanup(venv) .. ")"
    end
    return ""
  end
  return ""
end
table.insert(gls.left, {
  VirtualEnv = {
    provider = PythonEnv,
    event = "BufEnter",
    highlight = { colors.green, colors.alt_bg },
  },
})

table.insert(gls.right, {
  DiagnosticError = {
    provider = "DiagnosticError",
    icon = "  ",
    highlight = { colors.red, colors.alt_bg },
  },
})
table.insert(gls.right, {
  DiagnosticWarn = {
    provider = "DiagnosticWarn",
    icon = "  ",
    highlight = { colors.orange, colors.alt_bg },
  },
})

table.insert(gls.right, {
  DiagnosticInfo = {
    provider = "DiagnosticInfo",
    icon = "  ",
    highlight = { colors.yellow, colors.alt_bg },
  },
})

table.insert(gls.right, {
  DiagnosticHint = {
    provider = "DiagnosticHint",
    icon = "  ",
    highlight = { colors.blue, colors.alt_bg },
  },
})

table.insert(gls.right, {
  TreesitterIcon = {
    provider = function()
      if next(vim.treesitter.highlighter.active) ~= nil then
        return "  "
      end
      return ""
    end,
    separator = " ",
    separator_highlight = { "NONE", colors.alt_bg },
    highlight = { colors.green, colors.alt_bg },
  },
})

local function get_attached_provider_name(msg)
  msg = msg or "LSP Inactive"

  local buf_ft = vim.bo.filetype
  local buf_clients = vim.lsp.buf_get_clients()
  if next(buf_clients) == nil then
    return msg
  end
  local buf_client_names = {}
  for _, client in pairs(buf_clients) do
    if client.name == "null-ls" then
      table.insert(buf_client_names, lvim.lang[buf_ft].linters[1])
      table.insert(buf_client_names, lvim.lang[buf_ft].formatter.exe)
    else
      table.insert(buf_client_names, client.name)
    end
  end
  return table.concat(buf_client_names, ", ")
end

table.insert(gls.right, {
  ShowLspClient = {
    provider = get_attached_provider_name,
    condition = function()
      local tbl = { ["dashboard"] = true, [" "] = true }
      if tbl[vim.bo.filetype] then
        return false
      end
      return true
    end,
    icon = " ",
    highlight = { colors.grey, colors.alt_bg },
  },
})

table.insert(gls.right, {
  LineInfo = {
    provider = "LineColumn",
    separator = "  ",
    separator_highlight = { "NONE", colors.alt_bg },
    highlight = { colors.grey, colors.alt_bg },
  },
})

table.insert(gls.right, {
  PerCent = {
    provider = "LinePercent",
    separator = " ",
    separator_highlight = { "NONE", colors.alt_bg },
    highlight = { colors.grey, colors.alt_bg },
  },
})

table.insert(gls.right, {
  Tabstop = {
    provider = function()
      local label = "Spaces: "
      if not vim.api.nvim_buf_get_option(0, "expandtab") then
        label = "Tab size: "
      end
      return label .. vim.api.nvim_buf_get_option(0, "shiftwidth") .. " "
    end,
    condition = condition.hide_in_width,
    separator = " ",
    separator_highlight = { "NONE", colors.alt_bg },
    highlight = { colors.grey, colors.alt_bg },
  },
})

table.insert(gls.right, {
  BufferType = {
    provider = "FileTypeName",
    condition = condition.hide_in_width,
    separator = " ",
    separator_highlight = { "NONE", colors.alt_bg },
    highlight = { colors.grey, colors.alt_bg },
  },
})

table.insert(gls.right, {
  FileEncode = {
    provider = "FileEncode",
    condition = condition.hide_in_width,
    separator = " ",
    separator_highlight = { "NONE", colors.alt_bg },
    highlight = { colors.grey, colors.alt_bg },
  },
})

table.insert(gls.right, {
  Space = {
    provider = function()
      return " "
    end,
    separator = " ",
    separator_highlight = { "NONE", colors.alt_bg },
    highlight = { colors.grey, colors.alt_bg },
  },
})

table.insert(gls.short_line_left, {
  BufferType = {
    provider = "FileTypeName",
    separator = " ",
    separator_highlight = { "NONE", colors.alt_bg },
    highlight = { colors.alt_bg, colors.alt_bg },
  },
})

table.insert(gls.short_line_left, {
  SFileName = {
    provider = "SFileName",
    condition = condition.buffer_not_empty,
    highlight = { colors.alt_bg, colors.alt_bg },
  },
})

--table.insert(gls.short_line_right[1] = {BufferIcon = {provider = 'BufferIcon', highlight = {colors.grey, colors.alt_bg}}})
