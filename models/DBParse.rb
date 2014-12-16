class DBParse
	def initialize 
		Parse.init :application_id => "kRBzulQgel9HP1SzlLAKQAbFCxLsFbJBmk878gB8",
           	   :api_key        => "enxZzrPJjZ2V9p6KH83fA7AxsIN8PzpeeiswxG3H",
               :quiet          => true
	end

	def update(name, status)
		bathroom_p = Parse::Query.new("bathroom").eq("name", name).get.first
		bathroom_p["status"] = status
		result = bathroom_p.save
	end

	def get(name)
		bathroom_p_query = Parse::Query.new("bathroom")
		bathroom_p_query.eq("name", name)
		bathroom_p = bathroom_p_query.get
		bathroom_p
	end
end