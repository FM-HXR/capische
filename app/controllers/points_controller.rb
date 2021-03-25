class PointsController < ApplicationController
  def create
    point = Point.create(set_point_params)
    redirect_to "/topics/#{point.topic.id}"
  end

  def show
    @point = Point.find(params[:id])
  end

  private
  def set_point_params
    params.require(:point).permit(:title, :position, :main_point, :conclusion).merge(user_id: current_user.id, topic_id: params[:topic_id])
  end
end
