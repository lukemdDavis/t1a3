require 'tty-prompt'
require 'colorize'
require 'bundler'
require 'rspec'

require_relative("./methods.rb")

puts "what is your name"
name = gets.chomp
puts "what would you like to call you shopping list?"
list_name = gets.chomp
puts "Alright #{name} lets start adding to #{$list_name}"




shopping_list = ["apples", "lettuce", "tomatoes", "potatoes", "steak", "milk", "cheese", "chips"]



    prompt = TTY::Prompt.new
    curr_data = Array.new
    read_data = Array.new

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