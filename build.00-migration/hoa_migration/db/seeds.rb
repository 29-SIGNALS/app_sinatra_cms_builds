# frozen_string_literal: true

# db/seeds.rb

require 'faker'
puts 'Running DB seed...'

# # Don't let seed duplicate data more than once
puts 'Cleaning database...'


num = 0
10.times do
  percent = num / 30 * 100
  # sleep(0.05)
  print 'Seeding complete in'
  print "...#{percent += 1} \r"
  i = num += 1
  Hoa.create([
                 'contact' => Faker::Name.first_name + " " +  Faker::Name.last_name,
                 'phone' => Faker::PhoneNumber.cell_phone,
                 'email' => Faker::Internet.email,
                 'community' => Faker::Address.community,
                 'address' => Faker::Address.street_address,
                 'city' => Faker::Address.city,
                 'state'=> Faker::Address.state,
                 'zipcode' => Faker::Address.zip,
                 'website' => Faker::Internet.url,
             # "user_id" => User.ids.sample
             ])

  num += 1

  system('clear')
end

print 'Seeding completed'