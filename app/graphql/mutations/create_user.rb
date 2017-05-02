Mutations::CreateUser = GraphQL::Relay::Mutation.define do
  name "createUser"
  return_type Types::UserType

  input_field :firstName, !types.String
  input_field :lastName, !types.String

  resolve ->(obj, args, ctx) {
    user = User.create(
      first_name: args[:firstName],
      last_name: args[:lastName]
    )
    user
  }
end
