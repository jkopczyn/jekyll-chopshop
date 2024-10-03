module Jekyll
  module TagStripFilter
    def remove_img(input, reg_str, repl_str)
      re = Regexp.new "<img .* />", Regexp::MULTILINE

      # This will be returned
      input.gsub re, ""
    end
  end
end

Liquid::Template.register_filter(Jekyll::RegexFilter)
