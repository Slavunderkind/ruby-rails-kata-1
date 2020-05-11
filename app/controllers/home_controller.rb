require 'byebug'
class HomeController < ApplicationController
  before_action :set_script_obj

  def index
    @scripts = @script_obj.all
  end

  def search_by_isbn
    @script = @script_obj.by_isbn(params[:isbn])

    if @script
      render :show
    else
      flash[:notice] = 'No matching!'
      redirect_to root_path
    end
  end

  def search_by_authors_email
    @scripts = @script_obj.by_authors_email(params[:authors_email])

    if @scripts.any?
      render :scripts
    else
      flash[:notice] = 'No matching!'
      redirect_to root_path
    end
  end

  def sort
    @scripts = @script_obj.all_sorted_by_title

    render :scripts
  end

  private

  def set_script_obj
    @script_obj = Script.new
  end
end
