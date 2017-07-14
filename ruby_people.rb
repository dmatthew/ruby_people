class RubyPeople
  def run
    puts "Welcome to Ruby People!"
    showChoices
  end

  def showChoices
    print "What would you like to do? [Add, Remove, List, Quit]: "

    case gets.chomp
      when "Add", "add", "A", "a"       then promptAddPerson; showChoices
      when "Remove", "remove", "R", "r" then promptRemovePerson; showChoices
      when "List", "list", "L", "l"     then promptListPeople; showChoices
      when "Quit", "quit", "Q", "q"     then puts "Goodbye!"
      else  puts "Invalid choice"; showChoices
    end
  end

  def promptAddPerson
    puts "You chose to add a new person!"
  end

  def promptRemovePerson
    puts "You chose to remove a person!"
  end

  def promptListPeople
    puts "You chose to list all people"
  end
end

application = RubyPeople.new
application.run
