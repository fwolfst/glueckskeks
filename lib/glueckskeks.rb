require "glueckskeks/version"

require 'glueckskeks/corpus_reader'
require 'glueckskeks/collapser'
require 'glueckskeks/substitutor'
require 'glueckskeks/templater'

require 'logger'

module Glueckskeks
  def self.logger
    @logger ||= Logger.new STDERR
  end

  def self.logger= new_logger
    @logger = new_logger
  end

  def self.generate
    @corpus = CorpusReader.read_corpus_files
    if @corpus && @corpus.empty?
      STDERR.puts "Empty corpus, are any data files present in ./corpus ?"
      exit 1
    end
    if @corpus['base'].nil? || @corpus['base'].empty?
      STDERR.puts "Corpus does not contain a base (corpus/base.corpus) file, or it does not contain any patterns."
      exit 2
    end
    Templater.fill(@corpus['base'].sample, @corpus)
  end
end
