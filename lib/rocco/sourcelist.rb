require 'mustache'
require 'pathname'

class Rocco::Sourcelist < Mustache
  self.template_path = "#{File.dirname(__FILE__)}/.."

  def initialize(sources)
    @sources = sources
  end


  def sources?
    true
  end

  def sources
    @sources.map do |source|
      htmlpath = Pathname.new( source.sub( Regexp.new( "#{File.extname(source)}$"), ".html" ) )
      {
        :path       => source,
        :basename   => File.basename(source),
        :url        => htmlpath
      }
    end
  end
end
