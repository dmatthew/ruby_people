class TasksController < ApplicationController
  def create
    @person = Person.find(params[:person_id])
    @task = @person.tasks.create(task_params)
    redirect_to person_path(@person)
  end

  def destroy
    @person = Person.find(params[:person_id])
    @task = @person.tasks.find(params[:id])
    @task.destroy
    redirect_to person_path(@person)
  end

  private
    def task_params
      params.require(:task).permit(:name, :description)
    end
end
