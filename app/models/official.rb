class Official < ActiveRecord::Base
  belongs_to :role
  has_and_belongs_to_many :roles
  accepts_nested_attributes_for :roles

  PROPERTIES_KEYS = [:name, :size, :email, :food]
  store_accessor :properties, PROPERTIES_KEYS

  validates :name, presence: true, length: { minimum: 3, maximum: 100 }
  validates_format_of :email, :with => /@/
end
