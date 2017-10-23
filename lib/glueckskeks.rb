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
    "bad luck!"
  end
end
