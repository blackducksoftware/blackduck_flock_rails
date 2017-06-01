module Admin
  class EmployeesController < Admin::ApplicationController
    after_action :create_last_name, only: [:create]
    # To customize the behavior of this controller,
    # simply overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Employee.all.paginate(10, params[:page])
    # end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Employee.find_by!(slug: param)
    # end

    # See https://administrate-docs.herokuapp.com/customizing_controller_actions
    # for more information
    private

    def create_last_name
      employee = Employee.find_by_email(params[:employee][:email])
      employee.update(last_name: employee.name.split.last)
    end
  end
end
