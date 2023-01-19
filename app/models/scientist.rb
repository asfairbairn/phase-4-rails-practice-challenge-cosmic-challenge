class Scientist < ApplicationRecord
    # Associations
    has_many :missions, dependent: :destroy
    has_many :planets, through: :missions

    # Validations
    validates :name, :field_of_study, presence: true
    validates :name, uniqueness: true
end
