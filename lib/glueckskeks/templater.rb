module Glueckskeks
  class Templater
    def self.fill(tmpl, corpus)
      orig_tmpl = tmpl.dup
      while (tmpl=Substitutor.replace(tmpl, corpus)) != orig_tmpl
        orig_tmpl = tmpl.dup
      end

      tmpl
    end
  end
end
