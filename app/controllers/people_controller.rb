class PeopleController < ApplicationController
  http_basic_authenticate_with name: "user", password: "password", except: [:index, :show]

  # Route: GET /
  def index
    @people = Person.all
  end

  # Route: GET /people/:id
  def show
    @person = Person.find(params[:id])
  end

  # Route: GET /people/new
  def new
    @person = Person.new
  end

  # Route: GET /people/:id/edit
  def edit
    @person = Person.find(params[:id])
  end

  # Route: POST /people
  def create
    @person = Person.new(person_params)

    if @person.save
      redirect_to @person
    else
      render 'new'
    end
  end

  # Route: PATCH/PUT /people/:id
  def update
    @person = Person.find(params[:id])

    if @person.update(person_params)
      redirect_to @person
    else
      render 'edit'
    end
  end

  # Route: DELETE /people/:id
  def destroy
    @person = Person.find(params[:id])
    @person.destroy

    redirect_to people_path
  end

  private
    def person_params
      params.require(:person).permit(:name, :age, :occupation)
    end
end
