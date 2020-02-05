module Types
  class ProductType < BaseNode
    field :id, ID, null: false
    field :created_at, DateTimeType, null: false
    field :price, Integer, null: true
    field :name, String, null: false
    field :description, String, null: false
    field :manufacturer, ManufacturerType, null: false
    field :photo_url, String, null: false
    field :reviews, [ReviewType], null: true
  end
end
