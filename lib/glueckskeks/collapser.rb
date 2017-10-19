module Glueckskeks
  class Collapser
    def self.collapse(str)
      str.split.map{|s| s.partition(/-|,|\./)}.flatten.delete_if{|n| n == ""}.map do |n|
        # Keep numbers
        if /\d\d/ =~ n
          n[0..1]
        else
          n[0]
        end
      end.join
    end
  end
end
