class PeopleController < ApplicationController

  def index
    @people = Person.all.order("lname, fname")
    

    respond_to do |format|
      format.html {render "index"}
      format.json {render json: @people.to_json(root: true, include: [:addresses,:emails,:phones]) }
    end
  end

  def show
    @person = Person.find(params[:id])
    # render "show"
    respond_to do |format|
      format.html {render "show"}
      format.json {render json: @person }
    end

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
#    raise params.inspect
    @person = Person.find(params[:id])
    @person.update(person_params)

    redirect_to people_path
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy

    redirect_to people_path
  end

  private

  def person_params
    params.require(:person).permit(:salutation, :fname, :mname, :lname, :ssn, :dob, :comment, 
      addresses_attributes: [:id, :street, :town, :zip_code, :country, :state], emails_attributes: [:id, :email_address, :comment], phones_attributes: [:id, :phone_number, :comment])
  end

end
