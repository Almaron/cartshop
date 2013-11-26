class SectionsController < ApplicationController

  before_action :get_sections, only: [:show, :edit, :update, :destroy]
  before_action :user_needed, except: [:index, :show]

  def index
    @sections = Section.order(name: :asc)
  end

  def show

  end

  def new
    @section = Section.new
  end

  def create
    @section = Section.create
    redirect_to sections_path
  end

  def edit
  end

  def update
    if @section.update(section_params)
      redirect_to @section
    else
      render :edit
    end
  end

  def destroy
    @section.destroy
    redirect_to sections_path
  end

  private

  def   get_sections
    @section = Section.find(params[:id])
  end

  def section_params
    params.require(:section).permit(:name)
  end

  end
