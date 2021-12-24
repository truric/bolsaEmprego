class JobOffer < ApplicationRecord
    belongs_to :entity, optional: true
    has_one_attached :image
end
