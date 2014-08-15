class Order
  include Mongoid::Document

  field :first_name, type: String
  field :last_name, type: String
  field :date_select, type: String # change field type
  field :quantity, type: Integer
  field :flavor, type: String 

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :date_select, presence: true
  validates :quantity, presence: true
  validates :flavor, presence: true
  
  belongs_to :customer

end
