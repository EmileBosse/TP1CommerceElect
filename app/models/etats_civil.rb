class EtatsCivil < ApplicationRecord
  has_many :clients_etats_civils
  has_many :clients, :through => :clients_etats_civils
end
