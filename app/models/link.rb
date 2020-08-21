class Link < ApplicationRecord
  after_create :notify_creation_to_subscribers

  private

  def notify_creation_to_subscribers
    GraphqlRailsApiSchema.subscriptions.trigger(:new_link, {}, self)
  end
end
