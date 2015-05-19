# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all

Product.create!(title: 'Programming Ruby 1.9 & 2.0',
  description:
    %{<p>
      Ruby is the fastest growing and most exciting dynamic language
      out there. If you need to get working programs delivered fast,
      you should add Ruby to your toolbox.
      </p>},
  image_url: 'ruby.jpg',
  price: 49.95)

Product.create!(title: 'Agile rails 4',
  description:
    %{<p>
      just agile
      </p>},
  image_url: 'ruby1.jpg',
  price: 9.95)

Product.create!(title: 'ruby on rails tutorial 3',
  description:
    %{<p>
      ror tutorial 3
      </p>},
  image_url: 'ruby.jpg',
  price: 4.95)

Product.create!(title: 'ror 4',
  description:
    %{<p>
      just ror
      </p>},
  image_url: 'ruby1.jpg',
  price: 19)
