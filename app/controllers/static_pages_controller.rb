class StaticPagesController < ApplicationController
  def home
  	@json=Location.all.to_gmaps4rails
  end
end
