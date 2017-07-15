require 'mongo'

class RubyPeople
  def run
    Mongo::Logger.logger.level = ::Logger::FATAL
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
    print "Name: "
    name = gets.chomp
    print "Age: "
    age = gets.chomp
    print "Occupation: "
    occupation = gets.chomp

    client = Mongo::Client.new('mongodb://192.168.42.20/people')
    client[:people].insert_one({name: name, age: age, occupation: occupation})
  end

  def promptRemovePerson
    puts "You chose to remove a person!"
    print "Name of person to remove: "
    name = gets.chomp

    client = Mongo::Client.new('mongodb://192.168.42.20/people')
    client[:people].delete_one(name: name)
  end

  def promptListPeople
    puts "You chose to list all people"

    client = Mongo::Client.new('mongodb://192.168.42.20/people')
    people = client[:people].find({})
    people.each do |person|
      puts '%-20.20s' % person[:name] + " | " + '%-3.3s' % person[:age].to_s + " | " + person[:occupation]
    end
  end
end

application = RubyPeople.new
application.run
