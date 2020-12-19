puts "what is your name"
name = gets.chomp
puts "what would you like to call you shopping list?"
list_name = gets.chomp
puts "Alright #{name} lets start adding to #{list_name}"

def maiMenu
        "1. View shopping list",
        "2. Add item to shopping list",
        "3. Remove item from shopping list",
        "4. Check if item is on shopping list",
        "5. How many items on shopping list",
        "6. Clear shopping list",
        "7. Exit"
return option

def add_products(shopping_list)
    print "What are you adding to the cart?"
    name = gets.chomp
    shopping_list.push(name)
    puts "Adding item to the cart!"
    sleep(1)
    puts shopping_list
end



shopping_list = ["apples", "lettuce", "tomatoes", "potatoes", "steak", "milk", "cheese", "chips"]


opt=""
while opt != "7"

    opt = mainMenu
    system "clear"
    case opt

    when "1"
        puts shopping_list

    when "2"
        add_products(shopping_list)

    when "3"
        delete_item(shopping_list)
    when "4"
        check_item(shopping_list)
    when "5"
        all_items(shopping_list)
    when "6"
        clear_items(shopping_list)
    when "7"
        puts opt
        puts "exiting..."
        break
    else
        puts "invalid option"
end
puts "press Enter to view the menu"
gets
system "clear"
end