class Thing < ActiveRecord::Base
  attr_accessible :description, :the_date, :completed
  
  validates :description, presence: true
  validates :the_date, presence: true 
  
  belongs_to :user
  validates :user_id, presence: true
 

end
