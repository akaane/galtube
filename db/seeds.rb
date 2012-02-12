# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Location.create(name_en: 'Japan', name_zh: "日本")
Location.create(name_en: 'Hongkong & Taiwan', name_zh: "港台")
Location.create(name_en: 'Mainland China', name_zh: "大陆")
Location.create(name_en: 'Korea', name_zh: "韩国")
Location.create(name_en: 'Western', name_zh: "欧美")