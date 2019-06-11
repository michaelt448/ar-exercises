require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
class Store < ActiveRecord::Base
    has_many :employees
    validates :name, length:{ minimum: 3}
    validates :annual_revenue, numericality: {greater_than_or_equal_to: 0}
    
end

class Employee < ActiveRecord::Base
    belongs_to :store
    validates :first_name, :last_name,:store, presence: true
    validates :hourly_rate, numericality: {greater_than_or_equal_to: 40, less_than_or_equal_to:200} 
end

burnaby = Store.create(name: 'Burnaby',annual_revenue: 300000,mens_apparel: true,womens_apparel: true);
richmond = Store.create(name: 'Richmond',annual_revenue: 1260000,mens_apparel: false,womens_apparel: true);
gastown = Store.create(name: 'Gastown',annual_revenue: 190000,mens_apparel: true,womens_apparel: false);