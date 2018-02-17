class Adress < ApplicationRecord
  self.table_name = "adresses"
  has_many :clients
end
