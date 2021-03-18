User.create!(name: "DuySon",
             email:
  "nguyenduyson60@gmail.com",
             phone_number: "0854083118",
             password: "123456",
             password_confirmation: "123456",
             role:1)
5.times do |i|
  User.create!(name: "DuySon",
               email:
  "nguyenduyson#{i}@gmail.com",
               phone_number: "0854083118",
               password: "123456",
               password_confirmation: "123456",
               role:0)
end
5.times do |i|
  name = "Tour vip #{i}"
  deleted = 0
  TourType.create(name: name, deleted: deleted)
end
9.times do |i|
  title = Faker::Name.name
  tour_type_id = 1
  location = Faker::Address.city
  price = i * 250000
  day = i * 3
  quatity = i * 5
  image = "/images/image3.jpg"
  description = Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)
  quantity = i * 3
  Tour.create!(title: title,
               tour_type_id: tour_type_id,
               location: location,
               price: price,
               day: day,
               image: image,
               description: description,
               quatity: quantity)
end
