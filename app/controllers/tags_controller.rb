class TagsController < ApplicationController
  def create
    todo = Todo.find(params[:todo_id])
    tag = todo.tags.create(tag_param)
  end

  def destroy
    todo = Todo.find(params[:todo_id])
    tag = todo.tags.find(params[:id])
    tag.destroy
  end

  private
    def tag_param
      params.require(:tag).permit(:name)
    end
end
