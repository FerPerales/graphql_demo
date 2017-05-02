Types::UserType = GraphQL::ObjectType.define do
  name "User"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.
  #
  #
  field :id, types.Int do
    description "User's id"
    resolve ->(obj, args, ctx) {
      obj.id
    }
  end

  field :firstName, types.String do
    description "User's first name"
    resolve ->(obj, args, ctx) {
      obj.first_name
    }
  end

  field :lastName, types.String do
    description "User's last name"
    resolve ->(obj, args, ctx) {
      obj.last_name
    }
  end

  field :createdAt, types.String do
    description "User's created at"
    resolve ->(obj, args,ctx) {
      obj.created_at
    }
  end

  field :updatedAt, types.String do
    description "User's updated at"
    resolve ->(obj, args,ctx) {
      obj.updated_at
    }
  end
end
