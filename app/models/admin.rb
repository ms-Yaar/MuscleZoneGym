class Admin < ApplicationRecord
has_many :members
has_many :trainers
has_many :equipments
has_many :swappers



end
