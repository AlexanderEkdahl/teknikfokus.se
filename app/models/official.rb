class Official < ActiveRecord::Base
  has_and_belongs_to_many :roles
  accepts_nested_attributes_for :roles

  SIZES = %w{XS S M L XL}

  validates :name, presence: true, length: { minimum: 3, maximum: 100 }
  validates :email, format: { with: /@/ }
  validates :size, presence: true, inclusion: SIZES
end
