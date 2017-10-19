module Glueckskeks
  class Substitutor
    def self.replace(str, corpus)
      /.*<(?<type>[^>]*)>.*/ =~ str
      if type
        replace_with =  corpus[type].sample
        str.gsub!("\<#{type}\>", replace_with)
      end
      str
    end
  end
end
