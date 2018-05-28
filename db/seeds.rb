# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
                    {first_name: 'admin', last_name: 'admin', user_name:'admin', email: 'admin@admin.com', password: 'admin'},
                    {first_name: 'admin2', last_name: 'admin2', user_name:'admin2', email: 'admin2@admin.com', password: 'admin2'}
  ])

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
                            { name: 'Israel'},
                            { name: 'Croatia'},
                            { name: 'New Zealand'},
                            { name: 'Argentina'},
                            { name: 'Oman'}
                            ])

cities = City.create([     {name: 'Toronto', country_id: 1},
                            {name: 'Montreal', country_id: 1},
                            {name: 'Vancouver', country_id: 1},
                            {name: 'Rome', country_id: 2},
                            {name: 'Florence', country_id: 2},
                            {name: 'Venice', country_id: 2},
                            {name: 'London', country_id: 3},
                            {name: 'Manchester', country_id: 3},
                            {name: 'York', country_id: 3},
                            {name: 'Geneva', country_id: 4},
                            {name: 'Zurich', country_id: 4},
                            {name: 'Bern', country_id: 4},
                            {name: 'Vienna', country_id: 5},
                            {name: 'Salzburg', country_id: 5},
                            {name: 'Innsbruck', country_id: 5},
                            {name: 'Lisbon', country_id: 6},
                            {name: 'Porto', country_id: 6},
                            {name: 'Madeira', country_id: 6},
                            {name: 'Bangkok', country_id: 7},
                            {name: 'Chiang Mai', country_id: 7},
                            {name: 'Phuket', country_id: 7},
                            {name: 'Tokyo', country_id: 8},
                            {name: 'Kyoto', country_id: 8},
                            {name: 'Osaka', country_id: 8},
                            {name: 'Singapore', country_id: 9},
                            {name: 'Jurong East', country_id: 9},
                            {name: 'Bukit Batok', country_id: 9},
                            {name: 'Sydney', country_id: 10},
                            {name: 'Melbourne', country_id: 10},
                            {name: 'Perth', country_id: 10},
                            {name: 'Hanoi', country_id: 11},
                            {name: 'Ho Chi Minh', country_id: 11},
                            {name: 'Hoi An', country_id: 11},
                            {name: 'Athens', country_id: 12},
                            {name: 'Mykonos', country_id: 12},
                            {name: 'Thera', country_id: 12},
                            {name: 'Madrid', country_id: 13},
                            {name: 'Barcelona', country_id: 13},
                            {name: 'Seville', country_id: 13},
                            {name: 'Dublin', country_id: 14},
                            {name: 'Kilkenny', country_id: 14},
                            {name: 'Galway', country_id: 14},
                            {name: 'Stockholm', country_id: 15},
                            {name: 'Malmo', country_id: 15},
                            {name: 'Uppsala', country_id: 15},
                            {name: 'Paris', country_id: 16},
                            {name: 'Versailles', country_id: 16},
                            {name: 'Nice', country_id: 16},
                            {name: 'Bogota', country_id: 17},
                            {name: 'Medellin', country_id: 17},
                            {name: 'Cartagena', country_id: 17},
                            {name: 'New York', country_id: 18},
                            {name: 'San Francisco', country_id: 18},
                            {name: 'Chicago', country_id: 18},
                            {name: 'Rio de Janeiro', country_id: 19},
                            {name: 'Sao Paulo', country_id: 19},
                            {name: 'Buzios', country_id: 19},
                            {name: 'Cape Town', country_id: 20},
                            {name: 'Johannesburg', country_id: 20},
                            {name: 'Durban', country_id: 20},
                            {name: 'Merida', country_id: 21},
                            {name: 'Mexico City', country_id: 21},
                            {name: 'Guadalajara', country_id: 21},
                            {name: 'Budapest', country_id: 22},
                            {name: 'Siófok', country_id: 22},
                            {name: 'Hévíz', country_id: 22},
                            {name: 'Kuala Lumpur', country_id: 23},
                            {name: 'Penang', country_id: 23},
                            {name: 'Malacca', country_id: 23},
                            {name: 'Jerusalem', country_id: 24},
                            {name: 'Tel Aviv', country_id: 24},
                            {name: 'Tiberias', country_id: 24},
                            {name: 'Dubrovnik', country_id: 25},
                            {name: 'Rovinj', country_id: 25},
                            {name: 'Zagreb', country_id: 25},
                            {name: 'Auckland', country_id: 26},
                            {name: 'Wellington', country_id: 26},
                            {name: 'Christchurch', country_id: 26},
                            {name: 'Buenos Aires', country_id: 27},
                            {name: 'Bariloche', country_id: 27},
                            {name: 'Mar del Plata', country_id: 27},
                            {name: 'Muscat', country_id: 28},
                            {name: 'Salalah', country_id: 28},
                            {name: 'Sur', country_id: 28},
                            ])

Month.find_by(name: 'January').countries << (Country.find_by(name: 'Italy'))
Month.find_by(name: 'January').countries << (Country.find_by(name: 'England'))
Month.find_by(name: 'January').countries << (Country.find_by(name: 'Switzerland'))
Month.find_by(name: 'January').countries << (Country.find_by(name: 'Austria'))
Month.find_by(name: 'January').countries << (Country.find_by(name: 'Portugal'))

Month.find_by(name: 'February').countries << (Country.find_by(name: 'Thailand'))
Month.find_by(name: 'February').countries << (Country.find_by(name: 'Japan'))
Month.find_by(name: 'February').countries << (Country.find_by(name: 'Singapore'))
Month.find_by(name: 'February').countries << (Country.find_by(name: 'Australia'))
Month.find_by(name: 'February').countries << (Country.find_by(name: 'Vietnam'))

Month.find_by(name: 'March').countries << (Country.find_by(name: 'Greece'))
Month.find_by(name: 'March').countries << (Country.find_by(name: 'Spain'))
Month.find_by(name: 'March').countries << (Country.find_by(name: 'Ireland'))
Month.find_by(name: 'March').countries << (Country.find_by(name: 'Sweden'))
Month.find_by(name: 'March').countries << (Country.find_by(name: 'France'))

Month.find_by(name: 'April').countries << (Country.find_by(name: 'Colombia'))
Month.find_by(name: 'April').countries << (Country.find_by(name: 'USA'))
Month.find_by(name: 'April').countries << (Country.find_by(name: 'Italy'))
Month.find_by(name: 'April').countries << (Country.find_by(name: 'Thailand'))
Month.find_by(name: 'April').countries << (Country.find_by(name: 'France'))

Month.find_by(name: 'May').countries << (Country.find_by(name: 'Brazil'))
Month.find_by(name: 'May').countries << (Country.find_by(name: 'USA'))
Month.find_by(name: 'May').countries << (Country.find_by(name: 'Australia'))
Month.find_by(name: 'May').countries << (Country.find_by(name: 'Switzerland'))
Month.find_by(name: 'May').countries << (Country.find_by(name: 'South Africa'))

Month.find_by(name: 'June').countries << (Country.find_by(name: 'Canada'))
Month.find_by(name: 'June').countries << (Country.find_by(name: 'USA'))
Month.find_by(name: 'June').countries << (Country.find_by(name: 'Mexico'))
Month.find_by(name: 'June').countries << (Country.find_by(name: 'Brazil'))
Month.find_by(name: 'June').countries << (Country.find_by(name: 'Portugal'))

Month.find_by(name: 'July').countries << (Country.find_by(name: 'Canada'))
Month.find_by(name: 'July').countries << (Country.find_by(name: 'Italy'))
Month.find_by(name: 'July').countries << (Country.find_by(name: 'Greece'))
Month.find_by(name: 'July').countries << (Country.find_by(name: 'Spain'))
Month.find_by(name: 'July').countries << (Country.find_by(name: 'Portugal'))

Month.find_by(name: 'August').countries << (Country.find_by(name: 'Mexico'))
Month.find_by(name: 'August').countries << (Country.find_by(name: 'Hungary'))
Month.find_by(name: 'August').countries << (Country.find_by(name: 'Vietnam'))
Month.find_by(name: 'August').countries << (Country.find_by(name: 'Spain'))
Month.find_by(name: 'August').countries << (Country.find_by(name: 'Portugal'))

Month.find_by(name: 'September').countries << (Country.find_by(name: 'Malaysia'))
Month.find_by(name: 'September').countries << (Country.find_by(name: 'Israel'))
Month.find_by(name: 'September').countries << (Country.find_by(name: 'USA'))
Month.find_by(name: 'September').countries << (Country.find_by(name: 'Spain'))
Month.find_by(name: 'September').countries << (Country.find_by(name: 'France'))

Month.find_by(name: 'October').countries << (Country.find_by(name: 'Ireland'))
Month.find_by(name: 'October').countries << (Country.find_by(name: 'Italy'))
Month.find_by(name: 'October').countries << (Country.find_by(name: 'Greece'))
Month.find_by(name: 'October').countries << (Country.find_by(name: 'Croatia'))
Month.find_by(name: 'October').countries << (Country.find_by(name: 'South Africa'))

Month.find_by(name: 'November').countries << (Country.find_by(name: 'Brazil'))
Month.find_by(name: 'November').countries << (Country.find_by(name: 'USA'))
Month.find_by(name: 'November').countries << (Country.find_by(name: 'Spain'))
Month.find_by(name: 'November').countries << (Country.find_by(name: 'New Zealand'))
Month.find_by(name: 'November').countries << (Country.find_by(name: 'Argentina'))

Month.find_by(name: 'December').countries << (Country.find_by(name: 'New Zealand'))
Month.find_by(name: 'December').countries << (Country.find_by(name: 'Oman'))
Month.find_by(name: 'December').countries << (Country.find_by(name: 'Australia'))
Month.find_by(name: 'December').countries << (Country.find_by(name: 'Singapore'))
Month.find_by(name: 'December').countries << (Country.find_by(name: 'South Africa'))
