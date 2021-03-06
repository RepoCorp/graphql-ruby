module Types
  class MutationType < BaseObject
    field :create_user, mutation: Mutations::CreateUser
    field :create_review, mutation: Mutations::CreateReview
  end
end
