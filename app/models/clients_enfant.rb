class ClientsEnfant < ApplicationRecord
  belongs_to :client
  belongs_to :enfant
end
