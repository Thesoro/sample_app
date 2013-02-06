module ApplicationHelper
	#returns a default title
	def full_title(page_title)
		base_title = "Dubtwit"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
end
