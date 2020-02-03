module Types
  class QueryType < BaseObject
    add_field GraphQL::Types::Relay::NodeField
    add_field GraphQL::Types::Relay::NodesField

    field :products, [ProductType], null: false
    field :manufacturer, [ManufacturerType], null: false
    field :reviews, [ReviewType], null: false
    field :users, [UserType], null: false

    field :product, ProductType, null: true do
      description "Find a product by ID"
      argument :id, ID, required: true
    end


    def _all_links_meta
      Link.count
    end

    def users
      User.all
    end

    def products
      Product.all
    end

    def manufacturers
      Manufacturer.all
    end

    def reviews
      Review.all
    end

    def product(id:)
      Product.find id
    end
  end
end
