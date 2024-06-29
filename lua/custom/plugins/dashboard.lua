return {
  'goolord/alpha-nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'nvim-lua/plenary.nvim',
  },
  lazy = false,
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    dashboard.section.header.val = {
      [[ 私が来た ]],
      [[ I must not fear. Fear is the mind-killer. ]],
      [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣿⣮⣻⣿⣿⣿⣿⣿⣿⣽⣿⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⡿⣿⣿⣿⡿⣽⣿⣿⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⢿⣿⣿⣿⣻⣿⣿⣹⣿⣿⡟⣿⣿⣿⣿⣿⣟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣏⣿⣿⣿⣯⣿⣿⣿⣿⣿⣽⣟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣮⣻⠿⣿⣿⡿⠿⠿⣽⣻⣿⣿⣿⣿⢿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⢟⣿⣿⣿⣫⣿⠋⠀⢀⠀⠀⡀⠙⢾⣿⣿⡿⣿⣵⣳⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⢿⣾⣷⣿⣻⣿⠇⠀⣠⠡⢴⣾⠿⢨⣈⣟⠟⠩⢿⣿⡿⣾⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⠝⢊⣨⡿⠀⠰⣻⣿⣾⣿⣾⣿⡏⢸⣽⡄⠈⣻⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡼⣿⠟⠁⠰⣾⣿⠛⠒⠚⠒⢺⣟⠂⢻⣿⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣮⣅⠀⠀⠀⠈⠙⠳⠴⠿⠔⠋⠀⠀⠀⣓⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⣤⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠁⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⢀⣬⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣇⠀⠀⠀⣀⡀⠀⠀⢸⣿⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣺⠆⠀⠀⠻⡿⠗⠁⢸⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣿⠏⠀⠀⠀⠀⠀⠀⠀⠘⣿⣹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣹⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀⣤⠠⠀⠀⠀⠘⠏⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣀⠀⠀⠀⠀⠀⢨⣿⡄⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣿⣤⣿⣿⣿⣟⣿⣿⣧⣿⣷⣄⢀⣿⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠯⠿⠿⢿⣿⣾⣿⣿⣿⣿⢹⣿⣟⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
    }

    dashboard.section.buttons.val = {
      dashboard.button('n', '  New File', '<cmd>ene<CR>'),
      dashboard.button('\\', '  File Directory', ':Neotree reveal<CR>'),
      dashboard.button('f', '  Search Files', '<cmd>Telescope find_files<CR>'),
      dashboard.button('q', '  Quit', ':qa<cr>'),
    }

    -- Set footer
    local footer = [[
      
      I must not fear. Fear is the mind-killer. Fear is the little-death that brings total obliteration.
      I will face my fear. I will permit it to pass over me and through me. And when it has gone past
      I will turn the inner eye to see its path. Where the fear has gone there will be nothing.
      Only I will remain.
    ]]

    dashboard.section.footer.val = footer
    dashboard.section.footer.type = 'text'
    dashboard.section.footer.opts = {
      position = 'center',
      hl = 'Number',
    }

    -- Keymaps
    vim.keymap.set('n', '<leader>a', ':Alpha<CR>', { desc = 'Goto Greeter Screen' })

    alpha.setup(dashboard.config)

    vim.api.nvim_create_autocmd('User', {
      once = true,
      pattern = 'LazyVimStarted',
      callback = function()
        -- Get the current date and time

        -- Get the current hour
        local current_hour = tonumber(os.date '%H')

        -- Define the greeting variable
        local greeting

        if current_hour < 5 then
          greeting = '    おやすみ!'
        elseif current_hour < 12 then
          greeting = '  󰼰 おはよう!'
        elseif current_hour < 17 then
          greeting = '  󰖨 こんにちは!'
        elseif current_hour < 20 then
          greeting = '  󰖝  こんばんは!'
        else
          greeting = '  󰖔  おやすみ!'
        end

        dashboard.section.footer.val = greeting

        pcall(vim.cmd.AlphaRedraw)
      end,
    })
  end,
}
