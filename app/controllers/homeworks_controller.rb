class HomeworksController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_teacher, only: [:new, :create]

  def index
    @homeworks = Homework.all
  end

  def new
    @homework = Homework.new
  end

  def create
    @homework = Homework.new(homework_params)
    @homework.teacher_id = current_user.id
  
    if @homework.save
      respond_to do |format|
        format.html { redirect_to homeworks_path, notice: "宿題を登録しました" }
        format.turbo_stream
      end
    else
      respond_to do |format|
        format.html { render :new, status: :unprocessable_entity }
        format.turbo_stream { render turbo_stream: turbo_stream.replace("homework_form", partial: "homeworks/form", locals: { homework: @homework }) }
      end
    end
  end

  def show
  end


  private

  def homework_params
    params.require(:homework).permit(:title, :description, :deadline, :teacher_id)
  end

  def authorize_teacher
    unless current_user.teacher?
      redirect_to root_path, alert: "先生のみが宿題を投稿できます。"
    end
  end
end
