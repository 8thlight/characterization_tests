class FormatText
  def self.format_text(text)
    result = StringIO.new
    for n in 0..text.length
      c = text[n]
      if c == "<"
        while n < text.length && text[n] != "/" && text[n] != ">"
          n = n + 1
        end

        if n < text.length && text[n] == "/"
          n = n + 4
        else
          n = n + 1
        end
      end

      if n < text.length
        result << text[n]
      end
    end

    return result.string
  end
end
