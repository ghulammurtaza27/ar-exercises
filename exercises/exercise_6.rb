require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1 = Store.find_by(id: 1)
@store2 = Store.find_by(id: 2)

@store1.employees.create(first_name: "David", last_name: "Brooks", hourly_rate: 25)
@store1.employees.create(first_name: "Taimur", last_name: "Khan", hourly_rate: 25)
@store1.employees.create(first_name: "Haris", last_name: "Hussain", hourly_rate: 20)

@store2.employees.create(first_name: "Mekaeel", last_name: "Brooks", hourly_rate: 25)
@store2.employees.create(first_name: "Taha", last_name: "Michaels", hourly_rate: 25)
@store2.employees.create(first_name: "Saad", last_name: "Singh", hourly_rate: 20)



# create_table :employees do |table|
#   table.references :store
#   table.column :first_name, :string
#   table.column :last_name, :string
#   table.column :hourly_rate, :integer
#   table.timestamps null: false
#   belongs_to :store
# end
