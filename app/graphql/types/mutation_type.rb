Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createUser, field: Mutations::CreateUser.field
end
