# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.new(
    :username => "admin",
    :password => "admin123",
    :first_name => "admin",
    :last_name => "admin",
    :admin=> true,
    :email => "admin@admin.com"
).save!