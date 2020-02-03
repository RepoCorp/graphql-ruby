module Types
  class ReviewType < BaseNode
    field :created_at, DateTimeType, null: false
    field :comment, String, null: false
    field :user, UserType, null: false
    field :score, Integer, null: false
  end
end
