class Order
  include Mongoid::Document
  field :date, type: Date
  field :pickup_loc, type: String
  embedded_in :customer
end
