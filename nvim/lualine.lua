require('lualine').setup()

options = {theme = 'wombat'}

tabline = {
  lualine_a = {},
  lualine_b = {'branch'},
  lualine_c = {'filename'},
  lualine_x = {},
  lualine_y = {},
  lualine_z = {}
}

extensions = {'nertree'}
