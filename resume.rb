require "./lib/myself"
require "./lib/experience"
require "./lib/contact"
require "talks"
require 'pry'

class Resume
  attr_reader :myself

  def initialize(voice)
    @myself = Myself.new("Jake Kaad", "kaadalac@gmail.com", "(503)688-3002")
    @voice = voice
  end

  def print_resume
    system "clear"
    print_my_info
    hr
    puts myself.description
    hr
    myself.pretty_skills(@voice)
    hr
    myself.pretty_references(@voice)
  end

  def print_my_info
    puts "#{myself.name}"
    puts "#{myself.email} | #{myself.phone}"
  end

  def hr
    30.times { print "_" }
    puts ""
    puts ""
  end
end


voice = ARGV.first
resume = Resume.new(voice)
resume.print_resume
