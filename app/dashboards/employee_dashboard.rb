require "administrate/base_dashboard"

class EmployeeDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    name: Field::String,
    email: Field::String,
    title: Field::String,
    department: Field::SelectBasic.with_options({
      choices: ['Accounting','Business Development', 'Culture', 'Customer Success', 'Engineering', 'Human Resources', 'Information Technology',
                'Legal', 'Marketing', 'On-Demand Delivery', 'On-Demand Sales', 'Sales',
                'Sales/Marketing Ops']}), 
    team: Field::String,
    reports_to: Field::String,
    avatar: Field::Carrierwave.with_options(image: :thumb, multiple: false),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :name,
    :title,
    :email,
    :department,
    :reports_to,
    :team
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :name,
    :title,
    :email,
    :department,
    :team,
    :reports_to,
    :avatar,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :name,
    :title,
    :email,
    :department,
    :team,
    :reports_to,
    :avatar,
  ].freeze

  # Overwrite this method to customize how employees are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(employee)
  #   "Employee ##{employee.id}"
  # end
end
