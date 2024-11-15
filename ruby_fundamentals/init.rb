require_relative "display/menu"
require_relative "display/screen_operations"
require_relative "core/register_product"
require_relative "core/list_products"
require_relative "core/remove_from_stock"

products = [
  {
    id: 1,
    name: "Apple",
    description: "Red apple",
    price: 2.5,
    quantity: 20
  },
  {
    id: 2,
    name: "Banana",
    description: "Brazilian dwarf banana",
    price: "1.5",
    quantity: 30
  }
]

start_menu(products)
