class Trailer
  
  include Mongoid::Document
  include Mongoid::Timestamps
  field :trailer_number, type: Integer
  field :order_number, type: Integer
  field :trucking_company, type: String
  field :dock_side, type: String
  field :dock_number, type: Integer
  field :live_load, type: String

  belongs_to :user
end
