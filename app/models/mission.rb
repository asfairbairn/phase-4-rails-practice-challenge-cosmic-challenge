class Mission < ApplicationRecord
  # Associations
  belongs_to :scientist
  belongs_to :planet

  # Validations
  validates :name, presence: true
  validates :scientist_id, uniqueness: { scope: :planet_id}
end
