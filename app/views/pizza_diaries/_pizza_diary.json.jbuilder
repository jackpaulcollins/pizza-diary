json.extract! pizza_diary, :id, :title, :toppings, :thoughts, :created_at, :updated_at
json.url pizza_diary_url(pizza_diary, format: :json)
