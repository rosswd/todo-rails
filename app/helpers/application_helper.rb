module ApplicationHelper
	# Helper for formatting the last modified field
	def pretty_date(d)
		d.strftime('%B %e, %Y %H:%M')
	end
end
