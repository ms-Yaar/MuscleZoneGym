# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end




members_data = [
  { username: 'member1', age: 25, gender: 'Male', address: 'jpj' },
  { username: 'member2', age: 30, gender: 'Female', address: 'gujrat' },
  
]



trainers_data = [
  { name: 'Trainer A', specialization: 'Weightlifting' },
  { name: 'Trainer B', specialization: 'Yoga' },
  
]




swappers_data = [
  { name: 'Swapper X', experience: '5 years' },
  { name: 'Swapper Y', experience: '3 years' },
  
]



equipment_data = [
  { name: 'Treadmill', equipment_type: 'Cardio' },
  { name: 'Dumbbells', equipment_type: 'Strength' },
  
]




admins_data = [
  { username: 'admin1', password: 'admin123' }, 
  { username: 'admin2', password: 'admin456' },
  
]


