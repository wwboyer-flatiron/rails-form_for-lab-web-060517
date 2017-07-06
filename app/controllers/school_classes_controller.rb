class SchoolClassesController < ApplicationController
  def create
    @school_class = SchoolClass.new(params_permit(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def new
    @school_class = SchoolClass.new
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(params_permit(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end

  private

  def params_permit(*args)
    params.require(:school_class).permit(*args)
  end
end
