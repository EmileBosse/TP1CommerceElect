class Enfant < ApplicationRecord
  has_many :clients_enfants
  has_many :client, through :clients_enfants
end
