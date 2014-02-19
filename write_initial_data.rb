#load ('write_initial_data.rb')

#Project.all
progetti=YAML.load(File.read('./data/projects_yaml.txt'))

#array con i name delle locations
array_loc=["Badakhshan", "Badghis", "Baghlan", "Baglan", "Balkh", "Bamiyan", "Bamyan", "Farah", "Faryab", "Ghazni", "Ghor", "Herat", "Jalalabad", "Jowzian", "Kabul", "Kandahar", "Kapisa", "Kunduz", "Lashkar Gah", "Lowgar", "Nangarhar", "Paktia", "Parwan", "Takhar", "Wardack", "country-wide"]

#crea Locations
for i in 0...array_loc.length
	loc=Location.new
	loc.name=array_loc[i]
	loc.country="Afghanistan"
	loc.save
end

#crea Projects
i=0
progetti.each do |p|
	proj=Project.new
	proj.project_id=p.project_id
	proj.title=p.title
	proj.title_orig_lang=p.title_orig_lang
	proj.summary=p.summary
	proj.channel=p.channel
	proj.amount=p.amount
	proj.implementer=p.implementer
	proj.cluster=p.cluster
	proj.npp=p.npp
	proj.status=p.status
	proj.provinces=p.provinces
	proj.start_date=p.start_date
	proj.end_date=p.end_date
	proj.objective=p.objective
	proj.results=p.results
	proj.gmaps_location=p.gmaps_location
	
	i+=1
	proj.save
end

#crea associazioni Location-Projects

#it gives the locations to the projects, through the
#gmpas_location attribute
arraygmap=[]
projects=Project.all

projects.each do |p|
	#if there are locations, put them in an array
	if p.gmaps_location!="\n"
		arraygmap=p.gmaps_location.split(', ')
		#lthe last one also have "\n" in it
		arraygmap.last.delete!("\n")
		#for every location, look for it
		for i in 0...arraygmap.length
			puts arraygmap[i]
			location=Location.find_by_name(arraygmap[i])
			#if it is already there
			if location!=nil
				p.locations << location
				p.save
				location.save
			#if not I create a new location
			else
				l=Location.new
				l.name=arraygmap[i]
				l.country="Afghanistan"
				l.save
				p.locations << l
				p.save
			end
		end
	end
end




