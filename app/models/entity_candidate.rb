class EntityCandidate < ApplicationRecord
    belongs_to :entity
    belongs_to :candidate
end