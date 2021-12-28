class Candidate < ApplicationRecord
    belongs_to :user
    
    has_one_attached :image
    has_one_attached :attachment

    accepts_nested_attributes_for :user

    def self.search_by(search_term)
        where("LOWER(name) LIKE :search_term", search_term: "%#{search_term.downcase}%")
    end
end
