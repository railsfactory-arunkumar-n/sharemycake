class HomeController < ApplicationController
  before_filter :autheraized , :only => :inedx
  def index
  end
  def show
  end
end
