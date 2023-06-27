class Event < ApplicationRecord
  belongs_to :association
  belongs_to :article
  has_many :participations
end
