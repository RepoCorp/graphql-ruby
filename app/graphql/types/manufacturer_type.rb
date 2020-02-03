module Types
  class ManufacturerType < BaseNode
    field :created_at, DateTimeType, null: false
    field :name, String, null: false
    field :description, String, null: false
    field :products, [ProductType], null: false
  end
end
