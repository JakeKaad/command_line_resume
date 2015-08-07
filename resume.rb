require "./lib/myself"
require "./lib/experience"
require "./lib/contact"

class MyResume
  attr_reader :myself

  def initialize
    @myself = Myself.new("Jake Kaad", "kaadalac@gmail.com", "(503)688-3002")
  end

  def print_resume
    system "clear"
    puts "#{myself.name}"
    puts "#{myself.email} | #{myself.phone}"
    hr
    puts myself.description
    hr
    myself.pretty_skills
    hr
    myself.pretty_references
  end

  def hr
    30.times { print "_" }
    puts ""
    puts ""
  end
end

my_resume = MyResume.new
my_resume.print_resume
