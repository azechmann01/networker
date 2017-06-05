class Company < ApplicationRecord
  has_many :contacts, :dependent => :destroy
  has_many :company_researches, :dependent => :destroy
end
