module JobsHelper
  def render_format_for(body)
    auto_link(simple_format(body))
  end
  def render_brief(body)
    truncate(body,length: 100)
  end
end
