module ThingsHelper
	def relative_date thing 
		if thing.the_date.to_date == Date.today then
			"Today"
			else 
			thing.the_date.strftime("%A %b %d")
		end
	end
end

