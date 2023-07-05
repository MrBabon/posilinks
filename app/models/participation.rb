class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :event
  
  def self.participation_for(user, event)
    Participation.find_by(user: user, event: event)
  end


end
