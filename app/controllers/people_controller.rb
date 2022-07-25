class PeopleController < ApplicationController
  def index
    @persons = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
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

    redirect_to dog_path(@dog)
  end

  private

  def person_params
    params.require(:person).permit(:fname, :lname,)
  end
end
