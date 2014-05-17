module JobsHelper
	def render_format_for(body)
		auto_link(simple_format(body))
	end
end
