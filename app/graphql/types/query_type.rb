Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  field :user, Types::UserType do
    description 'A user in the system'
    argument :id, !types.Int
    resolve -> (_obj, args, _ctx) {
      User.find_by(id: args[:id])
    }
  end

  field :users, types[Types::UserType] do
    description 'A list of all the users in the system'
    resolve -> (_obj, _args, _ctx) {
      User.all
    }
  end
end
