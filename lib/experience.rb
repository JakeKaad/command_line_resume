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
    message = get_message_based_on_skill(skill_type)
    print message
    Talks.say message, voice: voice if voice
    SKILLS[skill_type].each { |skill| slow_print(skill, skill_type, voice) }
    print "\n"
  end

  def self.slow_print(skill, skill_type, voice)
    if SKILLS[skill_type].last == skill
      print skill
    else
      print "#{skill}, "
    end
    Talks.say skill, voice: voice if voice
  end

  private

    def self.get_message_based_on_skill(skill_type)
      case skill_type
      when :languages
        "These are the languages I know: "
      when :frameworks
        "I can use those on these: "
      when :testing_libraries
        "I can test those using these: "
      when :web_development
        "I also know a bit about: "
      when :patterns_and_methodology
        "These are some methodologies I enjoy practicing: "
      when :templating
        "I can use these for user interfaces: "
      when :other_relevant_skills
        "Here is some other stuff I think I am pretty goood at: "
      end
    end
end
