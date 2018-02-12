json.extract! adress, :id, :NumeroCivique, :Rue, :CodePostal, :Ville, :Province, :created_at, :updated_at
json.url adress_url(adress, format: :json)
