class Cart < ApplicationRecord
  belongs_to :user

  serialize :product, Array
end
