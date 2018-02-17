class Employeur < ApplicationRecord
  belongs_to :adress
  has_many :clients_employeurs
  has_many :clients, :through => :clients_employeurs
end
