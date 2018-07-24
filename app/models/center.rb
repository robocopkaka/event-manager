class Center < ApplicationRecord
  belongs_to :user
  validates_presence_of :name, :address, :detail, :state, :capacity
  validates_uniqueness_of :name
end
