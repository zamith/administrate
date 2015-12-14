require "administrate/base_dashboard"

class FeedbackDashboard < Administrate::BaseDashboard
  ATTRIBUTES = [
    :body,
  ]

  ATTRIBUTE_TYPES = {
    body: Field::Text,
  }

  COLLECTION_ATTRIBUTES = ATTRIBUTES
  SHOW_PAGE_ATTRIBUTES = ATTRIBUTES
  FORM_ATTRIBUTES = ATTRIBUTES

  def display_resource(object)
    "Feedback #%04d" % object.id
  end
end
