require 'mustache'
require 'pathname'

class Rocco::Readme < Mustache
  self.template_path = "#{File.dirname(__FILE__)}/.."

  def initialize(source)
    @source = source
  end


  def source
    @source
  end
end
