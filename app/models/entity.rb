class Entity < ApplicationRecord
    belongs_to :user
    has_one_attached :image

    accepts_nested_attributes_for :user
end
