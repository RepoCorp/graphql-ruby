FactoryBot.define do
  factory :product do
    name { "MyString" }
    price { 1 }
    description { "MyText" }
    manufacturer_id { 1 }
    qty { 1 }
  end
end
