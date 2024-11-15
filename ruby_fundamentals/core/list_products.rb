require "terminal-table"

def list_products(products)
  clear_screen

  message("======= List of products: =========", "yellow", false, false)

  table = Terminal::Table.new do |t|
    t.headings = ["ID", "Name", "Description", "Price", "Quantity"]
    products.each do |product|
      t.add_row [product[:id], product[:name], product[:description], product[:price], product[:quantity]]
    end
  end

  puts table

  message("Press any key to continue...", "yellow", false, false)
  gets

  clear_screen
end