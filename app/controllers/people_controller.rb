class PeopleController < ApplicationController
  def index
    @people = Person.all
    @email = Email.all
    @address = Address.all
    @phone = Phone.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
    # need to save email when submitting form
    @person.emails.build
    @person.addresses.build
    @person.phones.build
  end

  def create
    person = Person.create(person_params)

    redirect_to people_path
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
    @person.update(person_params)

    redirect_to person_path(@person)
  end

  private

  def person_params
    params.require(:person).permit(:fname, :mname, :lname, :ssn, :dob, :comment, 
      addresses_attributes: [:id, :street, :town, :zip_code, :country, :state], emails_attributes: [:id, :email_address, :comment], phones_attributes: [:id, :phone_number, :comment])
  end
  
end
