class SchdlController < ApplicationController
  def index
    @schs = Schedule.all.order(start_time: :asc)
    @footer_content = "次の予定は#{@schs[0].title}です。"
  end

  def new
    @sche = Schedule.new
  end

  def create
    @sche = Schedule.new(params.require(:schedule).permit(:title, :start_time, :finish_time, :memo, :all_days))
    if @sche.save
      flash[:notice] = "登録しました"
      redirect_to "/schdl/index"
    else
      render("schdl/new")
    end
  end

  def show
    @sche = Schedule.find(params[:id])
  end

  def edit
    @sche = Schedule.find(params[:id])
  end

  def update
    @sche = Schedule.find(params[:id])
    if @sche.update(params.require(:schedule).permit(:title, :start_time, :finish_time, :memo, :all_days))
      lash[:notice] = "編集しました"
      redirect_to "/schdl/index"
    else
      render("schdl/edit")
    end
  end

  def destroy
    @sche = Schedule.find(params[:id])
    @sche.destroy
    redirect_to "/schdl/index"
  end
end
