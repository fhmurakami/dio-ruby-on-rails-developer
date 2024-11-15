def register_product(products)
  message("Starting product registration...", true, true, 1.5)

  message("Please enter the product name: ", "blue", false, false)
  name = gets.chomp
  clear_screen

  message("Please enter the product description for: #{green_message(name)} ", "blue", false, false)
  description = gets.chomp
  clear_screen

  message("Please enter the product price for: #{green_message(name)} ", "blue", false, false)
  price = gets.chomp.to_f
  clear_screen

  message("Please enter the product quantity in stock for: #{green_message(name)} ", "blue", false, false)
  quantity = gets.chomp.to_i
  clear_screen

  products << {
    id: products.length + 1,
    name: name,
    description: description,
    price: price,
    quantity: quantity
  }

  message("The product #{yellow_message(name)} was registered successfully!", true, false, 3)
end