class Entity < ApplicationRecord
    belongs_to :user, dependent: :delete
    has_one_attached :image
    has_one_attached :attachment
    has_many :job_offers
    has_many :interested_candidates, through: 'candidates_entites'
    has_many :interest_in_candidates, through: 'entities_candidates'

    accepts_nested_attributes_for :user

    def self.search_by(search_term)
        where("LOWER(name) LIKE :search_term", search_term: "%#{search_term.downcase}%")
    end
end
