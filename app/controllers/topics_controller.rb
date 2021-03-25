class TopicsController < ApplicationController
  before_action :find_topic, only: [:show, :update, :destroy]
  before_action :move_to_index, only: [:create, :update, :destroy]

  def index
    @topics = Topic.includes(:user).order("created_at DESC").limit(10)
    @titles = []
    @ids = []
    @topics.each do |topic|
      title = topic.title
      id = topic.id
      @titles << title
      @ids << id
    end
    @topic = Topic.new
  end

  def show
    @point = Point.new
    @points = @topic.points.includes(:user).order("created_at DESC").limit(100)
    @pros = []
    @cons = []
    @points.each do |point|
      if point.position == true
        @pros << point
      else
        @cons << point
      end  
    end
  end

  def create
    @topic = Topic.new(set_topic_params)
    if @topic.save
      redirect_to topic_path(@topic)
    else
      render :index
    end
  end

  def update
    @topic.update(set_topic_params)
    if @topic.save
      redirect_to "/topics/#{@topic.id}"
    else
      render :show
    end
  end

  def destroy
  end

  def search
  end

  private
  def find_topic
    @topic = Topic.find(params[:id])
  end

  def set_topic_params
    params.require(:topic).permit(:title, :category_id, :pro, :con).merge(user_id: current_user.id)
  end
end
