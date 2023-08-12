require_relative "app"

def main
  app =App.new
  puts 'Welcome to the Car shop'

  menu_options = {
    1 => app.method(:list_cars),
    2 => app.method(:garage),
    3 => method(:exit_app)
  }

  loop do
    show_menu
    choice = gets.chomp.to_i
    if menu_options.key?(choice)
      menu_options[choice].call
    else
      puts "Wrong input, Please select valid input"
    end
  end

end


def show_menu
  puts "\nPlease choose an option:"
  puts '1. List all Cars'
  puts '2. Add a new car'
  puts '3. Exit'
end

def exit_app
  puts 'Exiting the app. Goodbye!'
  exit
end

main