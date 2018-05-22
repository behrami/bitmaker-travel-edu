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

countries = Country.create([{ name: 'Canada'},
                            { name: 'Italy'},
                            { name: 'England'},
                            { name: 'Switzerland'},
                            { name: 'Austria'},
                            { name: 'Portugal'},
                            { name: 'Thailand'},
                            { name: 'Japan'},
                            { name: 'Singapore'},
                            { name: 'Australia'},
                            { name: 'Vietnam'},
                            { name: 'Greece'},
                            { name: 'Spain'},
                            { name: 'Ireland'},
                            { name: 'Sweden'},
                            { name: 'France'},
                            { name: 'Colombia'},
                            { name: 'USA'},
                            { name: 'Brazil'},
                            { name: 'South Africa'},
                            { name: 'Mexico'},
                            { name: 'Hungary'},
                            { name: 'Malaysia'},
                            { name: 'Israel'}

                            ])

cities = City.create([      {name: 'Toronto', country_id: 1}
                            ])

Month.find_by(name: 'June').countries << (Country.find_by(name: 'Canada'))
