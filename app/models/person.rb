class Person
  include Mongoid::Document
  field :name, type: String
  field :age, type: Integer
  field :occupation, type: String
end
