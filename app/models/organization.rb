class Organization < ApplicationRecord
    has_many :events
    include PgSearch::Model
    pg_search_scope :search_by_organization,
                    against: [:name],
                    using: {
                      tsearch: { prefix: true }
                    }
end
