#!/home/alf/.rubies/ruby-2.7.1/bin/ruby

require "time"
require "pry"
require "nokogiri"
require "open-uri"


class Scraper
  def initialize(args)
    @url,  @csspath, @filename, *rest = args
    @doc = Nokogiri::HTML(URI.open(@url))
    @doc.css('script').each { |node| node.remove }

    @filename = @filename || "tmp.org"

  end

  def scrape
    if @csspath
      @result = @doc.at_css(@csspath)
    else
      @result = @doc
    end

    @result.css('pre').map { _1.children.first.content = "\n#+begin_src sh\n #{_1.children.first.content}\n#+end_src\n"}
    @result.css('h1').map { _1.children.first.content = "\n* #{_1.children.first.content}"}
    @result.css('h2').map { _1.children.first.content = "\n** #{_1.children.first.content}"}
    @result.css('h3').map { _1.children.first.content = "\n*** #{_1.children.first.content}"}
    @result.css('h4').map { _1.children.first.content = "\n**** #{_1.children.first.content}"}
    @result.css('h5').map { _1.children.first.content = "\n***** #{_1.children.first.content}"}
    @result.css('h6').map { _1.children.first.content = "\n****** #{_1.children.first.content}"}

    @result.css('li').map { _1.children.first.content = "- #{_1.children.first.content}\n"}

    #binding.pry
  end

  def safe
    final = @result.text.gsub("\r","").squeeze(" \n")
    puts final
    #File.write(@filename,final)
  end
end

s = Scraper.new ARGV

s.scrape
s.safe
