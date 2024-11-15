def start_menu(products = [])
  loop do
    message("======= Choose one of the options below: =========", "yellow", false, false)
    message("#{red_message("1")} - Register new products", "blue", false, false)
    message("#{red_message("2")} - List products", "blue", false, false)
    message("#{red_message("3")} - Remove from stock", "blue", false, false)
    message("#{red_message("4")} - Exit", "blue", false, false)

    option = gets.to_i

    case option
    when 1
      register_product(products)
    when 2
      list_products(products)
    when 3
      remove_from_stock(products)
    when 4
      clear_screen
      exit
    else
      message "Invalid option"
    end
  end
end
