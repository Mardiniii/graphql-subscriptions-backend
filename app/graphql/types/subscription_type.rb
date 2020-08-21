module Types
  class SubscriptionType < Types::BaseObject
    field :new_link, Types::LinkType, null: false, description: 'A new link was created'

    def new_link
    end
  end
end
