#!/home/alf/.rubies/ruby-2.6.1/bin/ruby

require "time"
require "pry"

class PostIt
  attr_accessor :note, :date, :dir

  def initialize(date, note, dir)
    @date = date
    @note = note
    @dir = dir
  end

  def to_s
    "#{@date.strftime "%Y %m %d | %H:%M |"} - #{@note} \t\t#{@dir}"
  end
end

class PostBox
  POSTS = []
  def self.add_post(post)
    POSTS << post
  end
  def self.get_post(n)
    POSTS[n]
  end
  def self.get_all_posts
    POSTS
  end
end

class Datamanager
  MYFILE = "#{Dir.home}/.rememberme"
  dir = Dir.getwd
  
  
  def read_data
    File.open(MYFILE) do |file|
      file.each do |line|
        if match = string.match(/(^.*)(:)(.*)/i)
          one, two, three = match.captures
        end
      end
    end
  end

  def initialize
    unless File.file? MYFILE
      File.open(MYFILE, "a+") do |file|
        file.puts("#{Time.now.to_i}:initialized")
      end
    end
  end

  def write_data(posts)
    File.open(MYFILE, "a+") do |f|
      posts.each do |p|
        f.puts("- #{p}")
      end
    end
  end
  
end

d = Datamanager.new
dir = Dir.getwd
note = ARGV.join " "



PostBox::add_post(PostIt.new(Time.now, note, dir))

d.write_data(PostBox::get_all_posts)
