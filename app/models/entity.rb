class Entity < ApplicationRecord
    belongs_to :user
    has_one_attached :image
    has_one_attached :attachment

    accepts_nested_attributes_for :user
end
