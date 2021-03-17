class Fish < ApplicationRecord
    validates_numericality_of :stock, :only_integer => true, :greater_than_or_equal_to => 0
    validates_numericality_of :price, :only_integer => true, :greater_than_or_equal_to => 0
end
