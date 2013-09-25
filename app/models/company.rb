class Company < ActiveRecord::Base
  has_one :official

  validates :url, presence: true
  validates :name, presence: true
end
