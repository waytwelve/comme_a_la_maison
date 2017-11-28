puts "Clean de nos seed"
Meal.destroy_all

puts "Creatings meals...."

meals_attributes = [
  {
    name: 'Couscous' ,
    category: 'Oriental' ,
    country: 'Tunisie' ,
    quantity: 6 ,
    is_delivery: true ,
    cooked_at: '08/12/2017 10:00' ,
    stars: 3,
    description: 'Notre couscous oriental avec des raisons et de la tomate',
    user_id: 1
    },
  {
    name: 'Tandori' ,
    category: 'Asiatique' ,
    country: 'Inde' ,
    quantity: 4 ,
    is_delivery: false ,
    cooked_at: '08/12/2017 10:00',
    stars: 3,
    description: 'Tandori fait avec des epices et du curry',
    user_id: 2,
    },
    {
    name: 'Sardine de marseille' ,
    category: 'Provencal' ,
    country: 'France' ,
    quantity: 10 ,
    is_delivery: false ,
    cooked_at: '08/12/2017 10:00',
    stars: 3,
    description: 'Sardines de marseille a l huile',
    user_id: 3
    }
]

Meal.create!(meals_attributes)
puts 'Finished'
