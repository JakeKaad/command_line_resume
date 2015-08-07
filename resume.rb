require "./lib/myself"
require "./lib/experience"
require "./lib/contact"

class Resume
  attr_reader :myself

  def initialize
    @myself = Myself.new("Jake Kaad", "kaadalac@gmail.com", "(503)688-3002")
  end

  def print_resume
    system "clear"
    print_my_info
    hr
    puts myself.description
    hr
    myself.pretty_skills
    hr
    myself.pretty_references
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

resume = Resume.new
resume.print_resume
