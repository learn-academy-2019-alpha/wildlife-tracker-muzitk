class Animal < ApplicationRecord
    has_many :sightings
    validates :name, :latin_name, :kingdom, presence: true
    validates :name, :latin_name, :kingdom, length:{minimum: 3}
    validates :name, :latin_name, :kingdom, uniqueness: true
    validates :name, :latin_name, :kingdom, format: { with: /[a-zA-Z-]/ } 
end
