class CorpusReader
  def self.read_corpus_files
    result_map = {}

    Dir.glob('corpus/*.corpus').each do |filename|
      file = File.new(filename)

      lines = file.readlines

      lines.map!(&:strip!)
      lines.reject!(&:empty?)

      result_map[File.basename(file, '.corpus')] = lines
    end

    result_map
  end
end
