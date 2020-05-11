require 'byebug'
class HomeController < ApplicationController

  def index
    @scripts = Script.new.all
  end
end
