class Adress < ApplicationRecord
  self.table_name = "adresses"
  has_many :clients
  has_many :institutions
  has_many :employeurs
end
