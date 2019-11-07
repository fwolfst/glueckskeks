module Glueckskeks
  class Substitutor
    def self.replace(str, corpus)
      /.*<(?<type>[^>]*)>.*/ =~ str
      if type
        if !(corpus.has_key? type)
          Glueckskeks.logger.error "No corpus entry for #{type} found"
        end
        replace_with = corpus[type].sample
        str.sub!("\<#{type}\>", replace_with)
      end
      str
    end
  end
end
