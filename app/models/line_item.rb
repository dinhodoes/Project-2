class LineItem
  include Mongoid::Document
  field :quantity, type: Integer
  embedded_in :order
  embedded_in :inventory
end
