class Person
  include Mongoid::Document
  include ActiveModel::Validations
  field :name, type: String
  field :age, type: Integer
  field :occupation, type: String

  validates :name, presence: true
end
