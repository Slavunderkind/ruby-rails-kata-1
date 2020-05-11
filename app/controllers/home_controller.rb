require 'byebug'
class HomeController < ApplicationController

  def index
    @scripts = Script.new.all
  end

  def search_by_isbn
  end
end
