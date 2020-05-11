require 'byebug'
class HomeController < ApplicationController
  before_action :set_script

  def index
    @scripts = @script.all
  end

  def search_by_isbn
    @record = @script.by_isbn(params[:isbn])

    render :show
  end

  private

  def set_script
    @script = Script.new
  end
end
