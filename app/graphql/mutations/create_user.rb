Mutations::CreateUser = GraphQL::Relay::Mutation.define do
  name 'createUser'
  return_type Types::UserType

  input_field :firstName, !types.String
  input_field :lastName, !types.String

  resolve lambda do |_obj, args, _ctx|
    User.create(
      first_name: args[:firstName],
      last_name: args[:lastName]
    )
  end
end
