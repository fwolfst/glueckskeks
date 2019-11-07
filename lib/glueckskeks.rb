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

  def self.generate(corpus_dir='corpus', entry='base')
    @corpus = CorpusReader.read_corpus_files(corpus_dir)
    if @corpus && @corpus.empty?
      STDERR.puts "Empty corpus, are any data files present in ./corpus/ ?"
      exit 1
    end
    if @corpus[entry].nil? || @corpus[entry].empty?
      STDERR.puts "Corpus does not contain a base (corpus/base.corpus) file, or it does not contain any patterns."
      exit 2
    end
    # Start with a line from entry corpus
    Templater.fill(@corpus[entry].sample, @corpus)
  end
end
