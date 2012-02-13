# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Location.delete_all
Location.create(:name_en => "Japan", :name_zh => "Ri Ben")
Location.create(:name_en => "Hongkong & Taiwan", :name_zh => "Gang Tai")
Location.create(:name_en => "Korea", :name_zh => "Han Guo")
Location.create(:name_en => "Mainland China", :name_zh => "Da Lu")
Location.create(:name_en => "Western", :name_zh => "Ou Mei")

Category.delete_all
Category.create(:title_en => "Japan-Y", :title_zh => "You Ma")
Category.create(:title_en => "Japan-W", :title_zh => "Wu Ma")
Category.create(:title_en => "Hongkong & Taiwan", :title_zh => "Gang Tai")

#TODO should change all above into chinese before release!