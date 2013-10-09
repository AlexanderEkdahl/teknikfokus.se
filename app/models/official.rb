class Official < ActiveRecord::Base
  has_and_belongs_to_many :roles
  accepts_nested_attributes_for :roles

  PROPERTIES_KEYS = [:name, :email, :food]
  store_accessor :properties, PROPERTIES_KEYS

  SIZES = %w{XS S M L XL}

  validates :name, presence: true, length: { minimum: 3, maximum: 100 }
  validates :email, format: { with: /@/ }
  validates :food, length: { maximum: 50 }
  validates :size, presence: true, inclusion: SIZES
end
