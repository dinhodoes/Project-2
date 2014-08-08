class Inventory
  include Mongoid::Document
  field :qty_on_hand, type: Integer
  field :name, type: String
  
end
