class Person
  include Mongoid::Document
  include ActiveModel::Validations
  field :name, type: String
  field :age, type: Integer
  field :occupation, type: String

  embeds_many :tasks, dependent: :destroy

  validates :name, presence: true
end
