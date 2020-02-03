module Mutations
  class CreateReview < BaseMutation
    argument :user_id, ID, required: true
    argument :product_id, ID, required: true
    argument :score, Integer, required: true
    argument :comment, String, required: true

    type Types::ReviewType

    def resolve(user_id:, product_id:, score:, comment:)
      Review.create!(
        user_id: user_id,
        product_id: product_id,
        score: score,
        comment: comment
      )
    rescue ActiveRecord::RecordInvalid => e
      GraphQL::ExecutionError.new("Invalid input: #{e.record.errors.full_messages.join(', ')}")
    end
  end
end
