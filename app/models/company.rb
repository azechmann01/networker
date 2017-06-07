class Company < ApplicationRecord
  has_many :contacts, :dependent => :destroy
  has_many :company_researches, :dependent => :destroy

  # company must be present
  validates :name, :presence => true

end
