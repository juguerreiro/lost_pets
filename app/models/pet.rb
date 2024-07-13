class Pet < ApplicationRecord
  SPECIES = ["Cachorro", "Gato", "Coelho", "Passaro", "Tartaruga", "Golfinho"]

  validates :name, presence: true
  validates :species, inclusion: {in: SPECIES}
end
