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

  def self.show_off(skill_type)
    case skill_type
    when :languages
      print "These are the languages I know: "
    when :frameworks
      print "I can use those on these: "
    when :testing_libraries
      print "I can test those using these: "
    when :web_development
      print "I also know a bit about: "
    when :patterns_and_methodology
      print "These are some methodologies I enjoy practicing: "
    when :templating
      print "I can use these for user interfaces: "
    when :other_relevant_skills
      print "Here is some other stuff I think I'm pretty goood at: "
    end
    SKILLS[skill_type].each { |skill| slow_print(skill, skill_type) }
    print "\n"
  end

  def self.slow_print(skill, skill_type)
    if SKILLS[skill_type].last == skill
      sleep 1
      print skill
    else
      sleep 1
      print "#{skill}, "
    end
  end
end
