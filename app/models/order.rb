class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items, inverse_of: :order
  accepts_nested_attributes_for :order_items, reject_if: :all_blank, allow_destroy: true

  validates :table_number, presence: true
end
