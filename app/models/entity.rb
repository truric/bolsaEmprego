class Entity < ApplicationRecord
    belongs_to :user
    has_one_attached :image
    has_one_attached :attachment
    has_many :job_offers

    accepts_nested_attributes_for :user
end
