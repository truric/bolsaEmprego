class JobOffer < ApplicationRecord
    belongs_to :entity
    has_one_attached :image
end
