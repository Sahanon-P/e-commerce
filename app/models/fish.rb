class Fish < ApplicationRecord
    enum status: { draft: 0, published: 1, archived: 2  }
    validates_numericality_of :stock, :only_integer => true, :greater_than_or_equal_to => 0
    validates_numericality_of :price, :only_integer => true, :greater_than_or_equal_to => 0
    has_many :fish_category, dependent: :destroy
    has_many :category, through: :fish_category
end
