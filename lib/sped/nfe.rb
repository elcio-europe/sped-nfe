# encoding: UTF-8
require 'sped/nfe/version'
require 'nokogiri'

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

module SPED
  class NFe
    attr_accessor :inf_nfe, :inf_nfe_supl, :signature
  end
end
