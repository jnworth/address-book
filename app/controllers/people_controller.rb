class PeopleController < ApplicationController
  def index
    @people = Person.all
    @emails = Email.all
    @addresses = Address.all
    @phones = Phone.all
  end

  def show
    @person = Person.find(params[:id])
    @email = Email.find(params[:id])
    @phone = Phone.find(params[:id])
    @address = Address.find(params[:id])
  end

  def new
    @person = Person.new
    # need to save email when submitting form
    #@person.emails.build
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
    params.require(:person).permit(:fname, :lname, emails_attributes:[:email_address])
  end
end
