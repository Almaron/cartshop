class TagsController < ApplicationController

  def create
    Tag.create(tag_params)
  end

  def destroy
    Tag.find(params[:id]).destroy
  end

  private

  def tag_params
    { category_id: params[:category_id], name: params[:tag] }
  end

end
