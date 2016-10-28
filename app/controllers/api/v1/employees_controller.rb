class Api::V1::EmployeesController < ApplicationController
  def show
    @employee = Employee.find(params[:id])
  end

  def index
    @employees = Employee.all
  end

  def create
    @employee = Employee.create(first_name: params[:first_name],
                                last_name: params[:last_name],
                                email: params[:email],
                                ssn: params[:ssn])

    render 'show.json.jbuilder'
  end
end
