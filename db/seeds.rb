List.destroy_all
Item.destroy_all

rand(5..10).times do
  list = List.create title: Faker::Movie.title

  rand(10).times do
    Item.create body: Faker::Movie.quote, list: list
  end
end
