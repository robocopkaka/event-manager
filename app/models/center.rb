class Center < ApplicationRecord
  validates_presence_of :name, :address, :state, :detail
end
