class ClientsEmployeur < ApplicationRecord
  belongs_to :client
  belongs_to :employeur
end
