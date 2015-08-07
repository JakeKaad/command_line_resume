class Experience
  attr_reader :skills

  SKILLS = { languages: ["Ruby", "JavaScript", "Java"],
      frameworks: ["Ruby on Rails", "Android", "Ember"],
      testing_libraries: ["rspec", "jUnit", "capybara", "mocha", "fluentlenium"],
      web_development: ["HTTP", "Request/Response", "Ajax", "jQuery"],
      patterns_and_methodology: ["Model-View-Controller", "Behavior Driven Development"],
      templating: ["HTML", "CSS", "erb", "haml", "sass", "vtl"],
      other_relevant_skills: ["mentoring", "learning", "debugging"] }

  def initialize
    @skills = SKILLS
  end

  def self.show_off(skill_type, voice)
    case skill_type
    when :languages
      print "These are the languages I know: "
      Talks.say "These are the languages I know: ", voice: voice if voice
    when :frameworks
      print "I can use those on these: "
      Talks.say "I can use those on these: ", voice: voice if voice
    when :testing_libraries
      print "I can test those using these: "
      Talks.say "I can test those using these: ", voice: voice if voice
    when :web_development
      print "I also know a bit about: "
      Talks.say "I also know a bit about: ", voice: voice if voice
    when :patterns_and_methodology
      print "These are some methodologies I enjoy practicing: "
      Talks.say "These are some methodologies I enjoy practicing: ", voice: voice if voice
    when :templating
      print "I can use these for user interfaces: "
      Talks.say "I can use these for user interfaces: ", voice: voice if voice
    when :other_relevant_skills
      print "Here is some other stuff I think I'm pretty goood at: "
      Talks.say "Here is some other stuff I think I\'m pretty goood at: ", voice: voice if voice
    end
    SKILLS[skill_type].each { |skill| slow_print(skill, skill_type, voice) }
    print "\n"
  end

  def self.slow_print(skill, skill_type, voice)
    if SKILLS[skill_type].last == skill
      sleep 1
      print skill
    else
      sleep 1
      print "#{skill}, "
    end
    Talks.say skill, voice: voice if voice
  end
end
