class Stock < ApplicationRecord
  validates :name, presence: true
  validates :count, presence: true, on: :create
  validates :count, presence: true
end
