class Trailer
  
  include Mongoid::Document
  include Mongoid::Timestamps
  field :trailer_number, type: Integer
  field :order_number, type: Integer
  field :trucking_company, type: String
  field :truck_number, type: Integer
  field :trailer_location, type: String
  field :dock_number, type: Integer
  field :live_load, type: String
  field :user_id, type: Integer
  field :dock_start_time, type: Time
  field :dock_end_time, type: Time
  

  belongs_to :user
end
