class PagesController < ApplicationController
  def home
  	@locations=Location.all
  	@json = @locations.to_gmaps4rails do |location, marker|
  		marker.infowindow render_to_string(:partial => "/locations/infowindow", :locals => { :location => location})
    	marker.title "#{location.name}"
    	#marker.json({ :population => city.population})
  	end
  end
  def howto
  end
end
