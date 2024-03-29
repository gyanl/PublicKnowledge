module Jekyll
  module Wikilinks
    def wikilink(input)
      input.gsub(/\[\[([^\]]+)\]\]/) do |match|
        title = $1
        url = title.downcase.tr(" ", "-")
        "<a href='/#{url}/'>#{title}</a>"
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::Wikilinks)
