# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 months = Month.create([  {name: 'January'},
                          {name: 'February'},
                          {name: 'March'},
                          {name: 'April'},
                          {name: 'May'},
                          {name: 'June'},
                          {name: 'July'},
                          {name: 'August'},
                          {name: 'September'},
                          {name: 'October'},
                          {name: 'November'},
                          {name: 'December'}
                          ])

countries = Country.create([{ name: 'Canada'}
                            ])

cities = City.create([      {name: 'Toronto', country_id: 1}
                            ])
