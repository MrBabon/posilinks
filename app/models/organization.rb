class Organization < ApplicationRecord
  has_one_attached :photo
  has_many :events, dependent: :destroy
    include PgSearch::Model
    pg_search_scope :search_by_organization,
                    against: [:name],
                    using: {
                      tsearch: { prefix: true }
                    }
end
