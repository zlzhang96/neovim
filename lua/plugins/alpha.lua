return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  enabled = true,
  init = false,
  opts = function()
    local dashboard = require("alpha.themes.dashboard")

    local Headers = {
      {
        -- 綾波レイ
        [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
        [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⣠⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
        [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣡⣾⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣟⠻⣿⣿⣿⣿⣿⣿⣿⣿]],
        [[⣿⣿⣿⣿⣿⣿⣿⣿⡿⢫⣷⣿⣿⣿⣿⣿⣿⣿⣾⣯⣿⡿⢧⡚⢷⣌⣽⣿⣿⣿⣿⣿⣶⡌⣿⣿⣿⣿⣿⣿]],
        [[⣿⣿⣿⣿⣿⣿⣿⣿⠇⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣮⣇⣘⠿⢹⣿⣿⣿⣿⣿⣻⢿⣿⣿⣿⣿⣿]],
        [[⣿⣿⣿⣿⣿⣿⣿⣿⠀⢸⣿⣿⡇⣿⣿⣿⣿⣿⣿⣿⣿⡟⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣻⣿⣿⣿⣿]],
        [[⣿⣿⣿⣿⣿⣿⣿⡇⠀⣬⠏⣿⡇⢻⣿⣿⣿⣿⣿⣿⣿⣷⣼⣿⣿⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⢻⣿⣿⣿⣿]],
        [[⣿⣿⣿⣿⣿⣿⣿⠀⠈⠁⠀⣿⡇⠘⡟⣿⣿⣿⣿⣿⣿⣿⣿⡏⠿⣿⣟⣿⣿⣿⣿⣿⣿⣿⣿⣇⣿⣿⣿⣿]],
        [[⣿⣿⣿⣿⣿⣿⡏⠀⠀⠐⠀⢻⣇⠀⠀⠹⣿⣿⣿⣿⣿⣿⣩⡶⠼⠟⠻⠞⣿⡈⠻⣟⢻⣿⣿⣿⣿⣿⣿⣿]],
        [[⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⢿⠀⡆⠀⠘⢿⢻⡿⣿⣧⣷⢣⣶⡃⢀⣾⡆⡋⣧⠙⢿⣿⣿⣟⣿⣿⣿⣿]],
        [[⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⡥⠂⡐⠀⠁⠑⣾⣿⣿⣾⣿⣿⣿⡿⣷⣷⣿⣧⣾⣿⣿⣿⣿⣿⣿⣿]],
        [[⣿⣿⡿⣿⣍⡴⠆⠀⠀⠀⠀⠀⠀⠀⠀⣼⣄⣀⣷⡄⣙⢿⣿⣿⣿⣿⣯⣶⣿⣿⢟⣾⣿⣿⢡⣿⣿⣿⣿⣿]],
        [[⣿⡏⣾⣿⣿⣿⣷⣦⠀⠀⠀⢀⡀⠀⠀⠠⣭⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⣡⣾⣿⣿⢏⣾⣿⣿⣿⣿⣿]],
        [[⣿⣿⣿⣿⣿⣿⣿⣿⡴⠀⠀⠀⠀⠀⠠⠀⠰⣿⣿⣿⣷⣿⠿⠿⣿⣿⣭⡶⣫⠔⢻⢿⢇⣾⣿⣿⣿⣿⣿⣿]],
        [[⣿⣿⣿⡿⢫⣽⠟⣋⠀⠀⠀⠀⣶⣦⠀⠀⠀⠈⠻⣿⣿⣿⣾⣿⣿⣿⣿⡿⣣⣿⣿⢸⣾⣿⣿⣿⣿⣿⣿⣿]],
        [[⡿⠛⣹⣶⣶⣶⣾⣿⣷⣦⣤⣤⣀⣀⠀⠀⠀⠀⠀⠀⠉⠛⠻⢿⣿⡿⠫⠾⠿⠋⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
        [[⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣀⡆⣠⢀⣴⣏⡀⠀⠀⠀⠉⠀⠀⢀⣠⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
        [[⠿⠛⠛⠛⠛⠛⠛⠻⢿⣿⣿⣿⣿⣯⣟⠷⢷⣿⡿⠋⠀⠀⠀⠀⣵⡀⢠⡿⠋⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⢿⣿⣿⠂⠀⠀⠀⠀⠀⢀⣽⣿⣿⣿⣿⣿⣿⣿⣍⠛⠿⣿⣿⣿⣿⣿⣿]],
      },
      {
        -- 阿尼亚
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠔⣰⣿⣟⡽⢋⡴⣿⠏⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠹⣿⣿⣿⣿⣿⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⡿⣡⠏⣴⡟⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⢹⣿⣿⣿⣿⡿⠏⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⢾⣿⣿⡛⣰⡏⣼⣿⡇⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⣿⡿⢛⣻⡅⠀⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡟⣸⣿⣿⢠⣿⠃⣿⣿⠃⣼⢿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⡇⢿⡇⣿⣿⠃⢠⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⢃⣿⣿⠇⣾⡟⠀⣿⢇⣴⡄⢸⣿⣿⣿⡟⣿⣧⠘⣿⣿⡇⣿⢿⢻⣷⠸⣇⢿⣿⠀⠀⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡼⢹⡿⢸⣿⡿⢸⠟⣵⡿⠈⠈⠿⣷⠈⣿⣿⣿⠆⢿⣷⢀⢻⣿⡆⢹⢼⣷⣿⢀⣿⡜⢿⠦⠀⠩⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣘⡇⣾⡿⢸⣿⡇⣠⡾⢋⣶⣦⠁⢒⡘⣷⡘⣿⣿⡄⣎⠻⡼⣧⡙⣿⣌⠘⣿⣿⢸⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⡇⢿⣿⢸⡿⢰⣿⢡⣿⠉⣯⣄⠀⣷⣿⣿⣌⡻⢧⢹⣷⢆⣉⠠⠄⡀⢢⠹⣿⢸⣿⣿⣿⡿⢱⣦⠄⢠⣶⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣷⢸⣿⠸⣿⢸⡏⣼⣿⠀⠟⠁⣸⣿⣿⣿⣿⣿⣷⣶⣴⡟⠿⡁⠀⢹⡎⢷⡹⢸⣿⣿⠟⣠⣿⠏⣼⢸⣿⡃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⡆⣿⡇⣿⢸⣿⡸⣿⣷⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿⣷⡀⣸⣿⢸⣇⢸⣿⡏⣸⣿⡏⣸⣿⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⣷⠸⣷⠸⢸⣿⣷⣮⣛⣛⣋⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠈⢠⣠⣿⡿⢸⠏⣾⢋⣴⣿⢋⣴⣿⣿⢸⣿⡏⡶⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⣿⣿⣿⣿⣿⣧⡹⣧⠈⣿⣿⣿⣿⣿⣿⣿⡟⠛⠿⢿⣿⣿⣟⠿⣿⣿⣿⣿⡿⣣⡟⠜⣱⣿⠟⣴⣿⣿⣿⣿⢸⣿⠃⣟⡇⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢘⠀⢻⣿⣿⣿⣿⣿⣷⡘⢆⠻⣿⣿⣿⣿⣿⡿⣰⣿⣿⡇⢿⣿⣿⣿⣶⣭⣭⣭⣾⡟⣠⣾⠟⣥⣿⣿⣿⣿⣿⡇⣼⡿⠸⣸⣿⡄⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢈⠀⠸⣿⣿⣿⣿⣿⣿⣿⡆⠀⠉⠻⢿⣿⣿⡇⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⢏⡼⢛⣴⣿⣿⣿⣿⣿⣿⣿⢁⣿⢡⢃⡏⣿⡇⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⢰⡍⣛⠷⢭⣙⣛⣛⣸⣿⣿⣿⣿⣿⡿⠡⢊⣴⣿⣿⣿⣿⣿⣿⣿⣿⡏⣸⢇⡎⠘⡇⣿⡇⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿⠀⢠⣼⣷⣬⠛⣶⣬⣭⠉⡍⠋⠙⢩⣭⡍⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⢣⡎⠀⠀⢹⣿⠃⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⢣⣾⣿⣿⢿⣿⣇⢹⣻⠿⢛⣩⣭⣝⠻⣿⢁⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠋⠀⠁⠀⠀⠀⣼⡟⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⢿⣿⢃⣿⣿⢿⣿⣿⣿⠉⡴⠉⠂⣾⣿⡿⢿⣷⡄⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⢀⠀⠂⠀⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢸⣿⣿⣿⣮⣛⠿⢣⠰⠧⠾⣿⣿⣿⣿⣾⣿⢸⣿⣿⣿⣿⣿⣿⠿⠛⠁⠀⠀⢀⠐⠀⡀⠄⠀⠀         ]],
      },
      {
        [[⣿⣿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠟⠿⠿⠟⠿⠿⠿⠿⠟⠛⠿⠿⡿⠿⠿⠻⠿⠿⠿⠿⠿⠿⠿⢿⣿]],
        [[⣿⣿⢹⣿⣿⣿⣿⣙⢫⠉⠫⣿⣿⣟⡇⠀⢸⣿⢇⠀⠀⠀⠀⠀⠀⢀⣼⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿]],
        [[⣿⣿⣸⣿⣿⣿⣿⡻⢸⠀⠀⠀⠉⠛⠁⠀⠀⠯⠬⠆⠀⠀⠀⠀⢀⣾⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿]],
        [[⣿⣿⢸⣿⣿⣿⣿⣷⣎⡇⠀⠀⠀⠀⠀⢀⣀⣤⣤⣤⣤⣀⡀⠀⠺⢿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿]],
        [[⣿⣿⢾⣿⣿⡗⠉⠋⣯⣰⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⡀⠙⣿⣿⣤⣀⣀⣀⣀⣀⣠⡤⠀⢸⣿]],
        [[⣿⣿⢼⣿⣿⣿⣐⣴⣻⠟⠃⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⠈⢿⢿⠟⣀⣴⣿⢻⠏⠀⠀⢸⣿]],
        [[⣿⣿⢸⣯⣿⣷⣄⠀⠀⠀⠀⢠⡑⢍⢿⣿⣿⠿⢛⣋⠭⠥⠬⢭⣻⣿⣿⡆⠈⣞⡗⢺⣿⠟⠁⠀⠀⠀⢸⣿]],
        [[⣿⣿⢹⠛⠿⣯⣾⡷⠀⢠⣶⣿⣶⡌⠓⠀⠒⢊⣥⣤⣖⡶⣶⣶⣾⣿⣿⣿⠀⢿⢻⠽⠁⠀⠀⠀⠀⠀⢸⣿]],
        [[⣿⣿⢸⣿⣿⣾⣿⠃⢰⣾⣿⣿⣿⣿⢸⣏⣞⣹⣿⣿⣿⣿⣮⢿⣿⣿⣿⣿⡆⢸⢠⠒⣤⣀⡀⠀⠀⠀⢸⣿]],
        [[⣿⣿⢸⣟⣻⡶⣼⡀⠸⠟⠛⠿⠿⡿⢸⢸⣿⣿⣿⣿⣿⣿⣿⠌⣿⣿⣿⣿⡇⢸⣿⣿⣙⣿⣿⣶⣤⣀⢸⣿]],
        [[⣿⣿⢨⣉⣟⡶⣟⠗⠀⠉⠩⠍⠋⠠⣿⡆⠀⢶⣦⣬⣍⡛⠿⣠⣿⣿⣿⣿⡇⡟⣿⣿⢟⡳⠟⠛⠉⠉⢹⣿]],
        [[⣿⣿⢨⣼⣭⣼⣄⠀⠀⠀⠀⣀⠀⣼⣿⣿⣦⢄⡙⠛⢋⣡⡴⣽⣿⣿⣿⣿⠀⣇⡫⠛⠁⠀⠀⠀⠀⠀⢸⣿]],
        [[⣿⣿⢸⡾⢏⣉⣻⣱⠀⢠⣿⠃⡰⠛⣽⣿⣿⣷⣬⣉⣉⣥⣾⣿⣿⣿⣿⡟⢸⣪⣀⠀⠀⠀⠀⠀⠀⠀⢸⣿]],
        [[⣿⣿⠘⠶⠟⣹⢿⢹⠀⢸⣿⣤⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣅⠫⡿⣧⡮⣂⣄⠀⠀⠀⠀⢸⣿]],
        [[⣿⣿⠀⠀⠊⢁⠌⠀⠀⠘⠛⠛⠿⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⡹⠛⠉⠀⠀⠀⠀⠀⠀⢸⣿]],
        [[⣿⣿⢀⠀⠀⢨⣦⣀⠉⢻⣿⡆⠰⣦⣤⣤⣉⡙⠿⣿⣿⣿⣿⣿⣿⣿⠿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿]],
        [[⣿⣿⠘⠶⠀⠚⣻⠿⡄⠸⣿⣿⣄⣻⣿⣿⣿⣿⣿⣾⣟⣼⣿⣿⣿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿]],
        [[⣿⣿⠀⠀⠀⠀⣡⠀⢃⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿]],
        [[⣿⣿⢰⣶⣶⣶⣆⡀⠈⢂⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⠿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿]],
        [[⣿⣿⢸⣿⣿⣿⣿⣶⣤⠴⣕⢄⡀⠉⠙⣻⣿⣿⣭⣠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿]],
        [[⣿⣿⢸⣿⣿⢷⣬⣹⣯⣥⢾⣿⡯⠵⢀⣿⣿⣿⣿⢻⠀⣠⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿]],
        [[⣿⣿⢸⣿⣿⣿⡿⣿⣿⠟⠊⠁⠀⠀⠀⡙⠛⠛⠉⣁⠀⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿]],
        [[⣿⣿⣺⣿⣿⣿⣿⠎⠁⠀⢀⠀⠀⠀⢰⣿⣯⣭⣿⣹⠀⣿⣿⣮⠻⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿]],
        [[⣿⣿⠀⠀⠀⠀⠀⠀⠛⠀⠀⠈⠚⠂⠀⠛⠃⠀⠀⠉⠐⠛⠛⠋⠀⠘⠃⠀⠀⠈⠚⠂⠀⠀⠀⠀⠀⠀⢸⣿]],
        [[⣿⣿⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣾⣿]],
      },
      {
        -- Too big to display on laptop
        "            :h-                                  Nhy`               ",
        "           -mh.                           h.    `Ndho               ",
        "           hmh+                          oNm.   oNdhh               ",
        "          `Nmhd`                        /NNmd  /NNhhd               ",
        "          -NNhhy                      `hMNmmm`+NNdhhh               ",
        "          .NNmhhs              ```....`..-:/./mNdhhh+               ",
        "           mNNdhhh-     `.-::///+++////++//:--.`-/sd`               ",
        "           oNNNdhhdo..://++//++++++/+++//++///++/-.`                ",
        "      y.   `mNNNmhhhdy+/++++//+/////++//+++///++////-` `/oos:       ",
        " .    Nmy:  :NNNNmhhhhdy+/++/+++///:.....--:////+++///:.`:s+        ",
        " h-   dNmNmy oNNNNNdhhhhy:/+/+++/-         ---:/+++//++//.`         ",
        " hd+` -NNNy`./dNNNNNhhhh+-://///    -+oo:`  ::-:+////++///:`        ",
        " /Nmhs+oss-:++/dNNNmhho:--::///    /mmmmmo  ../-///++///////.       ",
        "  oNNdhhhhhhhs//osso/:---:::///    /yyyyso  ..o+-//////////:/.      ",
        "   /mNNNmdhhhh/://+///::://////     -:::- ..+sy+:////////::/:/.     ",
        "     /hNNNdhhs--:/+++////++/////.      ..-/yhhs-/////////::/::/`    ",
        "       .ooo+/-::::/+///////++++//-/ossyyhhhhs/:///////:::/::::/:    ",
        "       -///:::::::////++///+++/////:/+ooo+/::///////.::://::---+`   ",
        "       /////+//++++/////+////-..//////////::-:::--`.:///:---:::/:   ",
        "       //+++//++++++////+++///::--                 .::::-------::   ",
        "       :/++++///////////++++//////.                -:/:----::../-   ",
        "       -/++++//++///+//////////////               .::::---:::-.+`   ",
        "       `////////////////////////////:.            --::-----...-/    ",
        "        -///://////////////////////::::-..      :-:-:-..-::.`.+`    ",
        "         :/://///:///::://::://::::::/:::::::-:---::-.-....``/- -   ",
        "           ::::://::://::::::::::::::----------..-:....`.../- -+oo/ ",
        "            -/:::-:::::---://:-::-::::----::---.-.......`-/.      ``",
        "           s-`::--:::------:////----:---.-:::...-.....`./:          ",
        "          yMNy.`::-.--::..-dmmhhhs-..-.-.......`.....-/:`           ",
        "         oMNNNh. `-::--...:NNNdhhh/.--.`..``.......:/-              ",
        "        :dy+:`      .-::-..NNNhhd+``..`...````.-::-`                ",
        "                        .-:mNdhh:.......--::::-`                    ",
        "                           yNh/..------..`                          ",
        "                                                                    ",
      },
      {
        -- LAZYVIM
        [[      ██╗      █████╗ ███████╗██╗   ██╗██╗   ██╗██╗███╗   ███╗          Z ]],
        [[      ██║     ██╔══██╗╚══███╔╝╚██╗ ██╔╝██║   ██║██║████╗ ████║      Z     ]],
        [[      ██║     ███████║  ███╔╝  ╚████╔╝ ██║   ██║██║██╔████╔██║   z        ]],
        [[      ██║     ██╔══██║ ███╔╝    ╚██╔╝  ╚██╗ ██╔╝██║██║╚██╔╝██║ z          ]],
        [[      ███████╗██║  ██║███████╗   ██║    ╚████╔╝ ██║██║ ╚═╝ ██║            ]],
        [[      ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝     ╚═══╝  ╚═╝╚═╝     ╚═╝            ]],
      },
    }

    -- Make logo random
    math.randomseed(os.time())
    dashboard.section.header.val = Headers[math.random(#Headers - 2)]
    dashboard.section.header.opt = {
      position = "center",
      hl = "Whitespace",
    }

    -- stylua: ignore
    dashboard.section.buttons.val = {
      dashboard.button("f", "  > " .. " Find file",       "<cmd> Telescope find_files <cr>"),
      dashboard.button("n", "  > " .. " New file",        "<cmd> ene <BAR> startinsert <cr>"),
      dashboard.button("r", "  > " .. " Recent files",    "<cmd> Telescope oldfiles <cr>"),
      dashboard.button("s", "  > " .. " Search text",       "<cmd> Telescope live_grep <cr>"),
      dashboard.button("c", "  > " .. " Config",          "<cmd> lua require('lazyvim.util').telescope.config_files()() <cr>"),
      -- dashboard.button("s", "  > " .. " Restore Session", [[<cmd> lua require("persistence").load() <cr>]]),
      dashboard.button("x", "  > " .. " Lazy Extras",     "<cmd> LazyExtras <cr>"),
      dashboard.button("l", "󰒲  > " .. " Lazy",            "<cmd> Lazy <cr>"),
      dashboard.button("q", "  > " .. " Quit",            "<cmd> qa <cr>"),
    }
    for _, button in ipairs(dashboard.section.buttons.val) do
      button.opts.hl = "AlphaButtons"
      button.opts.hl_shortcut = "AlphaShortcut"
    end
    dashboard.section.header.opts.hl = "AlphaHeader"
    dashboard.section.buttons.opts.hl = "AlphaButtons"
    dashboard.section.footer.opts.hl = "AlphaFooter"
    dashboard.opts.layout[1].val = 8
    return dashboard
  end,
  config = function(_, dashboard)
    -- close Lazy and re-open when the dashboard is ready
    if vim.o.filetype == "lazy" then
      vim.cmd.close()
      vim.api.nvim_create_autocmd("User", {
        once = true,
        pattern = "AlphaReady",
        callback = function()
          require("lazy").show()
        end,
      })
    end

    require("alpha").setup(dashboard.opts)

    vim.api.nvim_create_autocmd("User", {
      once = true,
      pattern = "LazyVimStarted",
      callback = function()
        local stats = require("lazy").stats()
        local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
        dashboard.section.footer.val = "⚡ Neovim loaded "
          .. stats.loaded
          .. "/"
          .. stats.count
          .. " plugins in "
          .. ms
          .. "ms by"
          .. " 󰂖 v"
          .. vim.version().major
          .. "."
          .. vim.version().minor
          .. "."
          .. vim.version().patch
        pcall(vim.cmd.AlphaRedraw)
      end,
    })
  end,
}
