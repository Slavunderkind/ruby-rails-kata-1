require 'byebug'
class HomeController < ApplicationController
  before_action :set_script

  def index
    @scripts = @script.all
  end

  def search_by_isbn
    @script = @script.by_isbn(params[:isbn])

    render :show
  end

  def search_by_authors_email
    @scripts = @script.by_authors_email(params[:authors_email])

    render :scripts
  end

  private

  def set_script
    @script = Script.new
  end
end
