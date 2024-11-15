def message(msg, color = "", clear = true, use_timer = true, timer = 5)
  clear_screen if clear
  case color
    when "green"
      msg = green_message(msg)
    when "yellow"
      msg = yellow_message(msg)
    when "red"
      msg = red_message(msg)
    when "blue"
      msg = blue_message(msg)
  end

  puts msg
  sleep(timer) if use_timer
  clear_screen if clear
end

def red_message(msg)
  "\e[31m#{msg}\e[0m"
end

def green_message(msg)
  "\e[32m#{msg}\e[0m"
end

def yellow_message(msg)
  "\e[33m#{msg}\e[0m"
end

def blue_message(msg)
  "\e[34m#{msg}\e[0m"
end

def clear_screen
  if Gem.win_platform?
    system("cls") # For Windows
  else
    system("clear") # For Unix
  end
end
