require 'mustache'

class Rocco::Frameset < Mustache
  self.template_path = "#{File.dirname(__FILE__)}/.."
end