class Contact < ApplicationRecord
  belongs_to :user
  belongs_to :company

  # contact must be present
  validates :name, :presence => true, :uniqueness => true
end
