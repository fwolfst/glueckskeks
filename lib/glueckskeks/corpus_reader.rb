module Glueckskeks
  class CorpusReader
    def self.read_corpus_files(corpus_dir='corpus')
      result_map = {}

      Dir.glob("#{corpus_dir}/*.corpus").each do |filename|
        Glueckskeks.logger.debug "Reading corpus file #{filename}"
        file = File.new(filename)

        lines = file.readlines

        lines.map!(&:strip!)
        lines.reject!(&:empty?)

        Glueckskeks.logger.debug "#{lines.count} valid line(s) found"
        if lines.count == 0
          Glueckskeks.logger.error "#{filename} does not contain any pattern"
        end
        result_map[File.basename(file, '.corpus')] = lines
      end

      result_map
    end
  end
end
