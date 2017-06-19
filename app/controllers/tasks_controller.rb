class TasksController < ApplicationController
  def index
    # render json: Task.order(:id)
    render json: Task.all
  end
  # render json means "instead of showing the user the html that is usually called by a 'get' request, sent 'json' stuff instead.  prevents it from looking in the app > views > tasks index.html.erb because it isn't needed.  We aren't rendering tasks, we're rendering JSON. It's still going through the http request > app > routing table > controller > action > loading info from database > outputting as JSON

  # def update
  #   task = Task.find(params[:id])
  #   task.update_attributes(task_params)
  #   render json: task
  # end

  # def create
  #   task = Task.create(task_params)
  #   render json: task
  # end

  # private

  # def task_params
  #   params.require(:task).permit(:done, :title)
  # end
end

