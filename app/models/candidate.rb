class Candidate < ApplicationRecord
    belongs_to :user, dependent: :delete
    has_and_belongs_to_many :job_offers
    has_many :entity_candidates
    has_many :candidate_entities
    has_many :interested_entities, through: :entity_candidates, source: :entity
    has_many :interest_in_entities, through: :candidate_entities, source: :entity
    
    has_one_attached :image
    has_one_attached :attachment

    accepts_nested_attributes_for :user

    def self.search_by(search_term)
        where("LOWER(name) LIKE :search_term", search_term: "%#{search_term.downcase}%")
    end
end
