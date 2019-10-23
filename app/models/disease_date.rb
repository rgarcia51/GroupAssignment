class DiseaseDate < ApplicationRecord
  belongs_to :animal
  belongs_to :disease
end
