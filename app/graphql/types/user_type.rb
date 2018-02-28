Types::UserType = GraphQL::ObjectType.define do
  name 'User'

  field :id, types.Int do
    description "User's id"
    resolve lambda do |obj, _args, _ctx|
      obj.id
    end
  end

  field :firstName, types.String do
    description "User's first name"
    resolve lambda do |obj, _args, _ctx|
      obj.first_name
    end
  end

  field :lastName, types.String do
    description "User's last name"
    resolve lambda do |obj, _args, _ctx|
      obj.last_name
    end
  end

  field :createdAt, types.String do
    description "User's created at"
    resolve lambda do |obj, _args, _ctx|
      obj.created_at
    end
  end

  field :updatedAt, types.String do
    description "User's updated at"
    resolve lambda do |obj, _args, _ctx|
      obj.updated_at
    end
  end
end
