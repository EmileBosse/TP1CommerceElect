class Client < ApplicationRecord
  belongs_to :adress
  has_many :etudes
  has_many :clients_enfants
  has_many :enfants, :through => :clients_enfants
  accept_nested_attributes_for :clients_enfants
  has_one :clients_conjoint
  has_many :clients_employeurs
  has_many :employeurs, :through => :clients_employeurs
  accept_nested_attributes_for :clients_employeurs
  has_many :clients_etats_civils
  has_many :etats_civils, :through => :clients_etats_civils
  accept_nested_attributes_for :clients_etats_civils

end
