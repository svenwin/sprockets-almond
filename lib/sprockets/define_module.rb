require 'sprockets'
require 'tilt'

module Sprockets
  class DefineModule < Sprockets::Processor
    class << self
      attr_accessor :default_base_path
    end

    attr_reader :base_path

    self.default_base_path = 'modules/'

    def prepare
      @base_path = self.class.default_base_path
    end

    def evaluate context, locals
      if n = context.logical_path.match(/^#{base_path}([\w\/]+)/)
        data.gsub! /define_module\s*\(/, "define(\"#{n[1]}\", "
      else
        data
      end
    end
  end

  register_postprocessor 'application/javascript', DefineModule
  append_path File.expand_path('../../../assets', __FILE__)
end
