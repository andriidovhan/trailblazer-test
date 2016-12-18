class Project < ApplicationRecord
  validates :name, presence: true
  validates :description, length: { minimum: 7 }
end
