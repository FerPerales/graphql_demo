Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # TODO: remove me
  #field :testField, types.String do
    #description "An example field added by the generator"
    #resolve ->(obj, args, ctx) {
      #"Hello World!"
    #}
  #end
  #
  field :user, Types::UserType do
    description "A user in the system"
    argument :id, !types.Int

    resolve ->(obj, args, ctx) {
      user = User.find_by(id: args[:id])
      if user
        user
      else
        { error: "User not found" }
      end
    }
  end

  field :users, types[Types::UserType] do
    description "A list of all the users in the system"
    resolve ->(obj, args,ctx) {
      User.all
    }
  end
end
