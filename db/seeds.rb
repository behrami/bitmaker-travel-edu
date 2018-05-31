# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Month.delete_all
Country.delete_all
City.delete_all

users = User.create([
                    {first_name: 'admin', last_name: 'admin', user_name:'admin', email: 'admin@admin.com', password: 'admin'},
                    {first_name: 'admin2', last_name: 'admin2', user_name:'admin2', email: 'admin2@admin.com', password: 'admin2'}
                    ])

months = ['January','February','March','April','May','June','July','August','September','October','November','December']

months.each do |month|
  Month.create(name: month)
end

puts "Months Created!"

countries_cities = {"Canada": ['Toronto','Montreal',"Vancouver"],
                    "Italy": ["Rome","Florence","Venice"],
                    "England": ["London","Manchester","York"],
                    "Switzerland": ["Geneva","Zurich","Bern"],
                    "Austria": ["Vienna","Salzburg","Innsbruck"],
                    "Portugal": ["Lisbon","Porto","Madeira"],
                    "Thailand": ["Bangkok","Chiang Mai","Phuket"],
                    "Japan": ["Tokyo","Kyoto","Osaka"],
                    "Singapore": ["Singapore","Jurong East","Bukit Batok"],
                    "Australia": ["Sydney","Melbourne","Perth"],
                    "Vietnam": ["Hanoi","Ho Chi Minh","Hoi An"],
                    "Greece": ["Athens","Mykonos","Thera"],
                    "Spain": ["Madrid","Barcelona","Seville"],
                    "Ireland":["Dublin","Kilkenny","Galway"],
                    "Sweden":["Stockholm","Malmo","Uppsala"],
                    "France":["Paris","Versailles","Nice"],
                    "Colombia":["Bogota","Medellin","Cartagena"],
                    "USA":["New York","San Francisco","Chicago"],
                    "Brazil":["Rio de Janeiro","Sao Paulo","Buzios"],
                    "South Africa":["Cape Town","Johannesburg","Durban"],
                    "Mexico":["Merida","Mexico City","Guadalajara"],
                    "Hungary":["Budapest","Siofok","Heviz"],
                    "Malaysia":["Kuala Lumpur","Penang","Malacca"],
                    "Israel":["Jerusalem","Tel Aviv","Tiberias"],
                    "Croatia":["Dubrovnik","Rovinj","Zagreb"],
                    "New Zealand":["Auckland","Wellington","Christchurch"],
                    "Argentina":["Buenos Aires","Bariloche","Mar del Plata"],
                    "Oman":["Muscat","Salalah","Sur"]
                  }

countries_cities.each do |country_name,cities|
  country = Country.create(name: country_name)
  cities.each do |city|
    country.cities.create(name: city)
  end
end

puts "County and Cities Created!"

time_place = {'January'=> ['Italy','England','Switzerland','Austria','Portugal'],
              'February'=>['Thailand','Japan','Singapore','Australia','Vietnam'],
              'March'   =>['Greece','Spain','Ireland','Sweden','France'],
              'April'   =>['Colombia','USA','Italy','Thailand','France'],
              'May'     =>['Brazil','USA','Australia','Switzerland','South Africa'],
              'June'    =>['Canada','USA','Mexico','Brazil','Portugal'],
              'July'    =>['Canada','Italy','Greece','Spain','Portugal'],
              'August'  =>['Mexico','Hungary','Vietnam','Spain','Portugal'],
              'September' =>['Malaysia','Israel','USA','Spain','France'],
              'October'   =>['Ireland','Italy','Greece','Croatia','South Africa'],
              'November'  =>['Brazil','USA','Spain','New Zealand','Argentina'],
              'December'  =>['New Zealand','Oman','Australia','Singapore','South Africa']
            }

time_place.each do |month,place|
       place.each do |country|
           Month.find_by(name: month).countries << Country.find_by(name: country)
       end
end

puts "Month and Cities Related!"
