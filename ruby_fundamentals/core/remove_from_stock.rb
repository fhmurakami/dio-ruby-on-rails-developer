require "terminal-table"

def remove_from_stock(products)
  clear_screen

  message("======= Remove from stock: =========", "yellow", false, false)

  table = Terminal::Table.new do |t|
    t.headings = ["ID", "Name", "Quantity"]
    products.each do |product|
      t.add_row [product[:id], product[:name], product[:quantity]]
    end
  end

  puts table

  message("Please enter the product ID: ", "blue", false, false)
  id = gets.chomp.to_i

  product = products.find { |p| p[:id] == id }

  unless product
    clear_screen
    message("Product with ID #{id} not found!", "red", false, false)
    message("Try again? (y/n)", "yellow", false, false)
    option = gets.chomp.downcase
    clear_screen

    if option == "y" || option == "yes"
      remove_from_stock(products)
    end

    return
  end

  clear_screen

  message("Please enter the quantity to remove from: #{yellow_message(product[:name])} ", "blue", false, false)
  message("Quantity: #{yellow_message(product[:quantity])}", "green", false, false)
  quantity = gets.chomp.to_i

  if quantity > product[:quantity]
    clear_screen
    message("The quantity to remove is greater than the available quantity!", "red", false, false)
    message("Try again? (y/n)", "yellow", false, false)
    option = gets.chomp.downcase
    clear_screen

    if option == "y" || option == "yes"
      remove_from_stock(products)
    end

    return
  end

  product[:quantity] -= quantity

  message("The product #{yellow_message(product[:name])} was removed from stock!", true, true, 3)

  list_products(products)
end