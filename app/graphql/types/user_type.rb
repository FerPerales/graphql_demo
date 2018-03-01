Types::UserType = GraphQL::ObjectType.define do
  name 'User'

  field :id, types.Int do
    description "User's id"
    resolve -> (obj, _args, _ctx) {
      obj.id
    }
  end

  field :firstName, types.String do
    description "User's first name"
    resolve -> (obj, _args, _ctx) {
      obj.first_name
    }
  end

  field :lastName, types.String do
    description "User's last name"
    resolve -> (obj, _args, _ctx) {
      obj.last_name
    }
  end

  field :createdAt, types.String do
    description "User's created at"
    resolve -> (obj, _args, _ctx) {
      obj.created_at
    }
  end

  field :updatedAt, types.String do
    description "User's updated at"
    resolve -> (obj, _args, _ctx) {
      obj.updated_at
    }
  end
end
