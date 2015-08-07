class Myself
  attr_reader :name, :email, :phone, :description, :skills, :references

  def initialize(name, email, phone)
    @name = name
    @email = email
    @phone = phone
    @description = my_description
    @experience = Experience.new
    @references = Contact.get_contacts
  end

  def pretty_skills
    @experience.skills.keys.each do |skill_type|
      Experience.show_off(skill_type)
    end
  end

  def pretty_references
    references.each do |reference|
      reference.display
    end
  end

  def pretty_contacts

  end

  private

    def my_description
      "I like to make things with Ruby, Java or JavaScript. I have been working \n
in the industry since May, 2015 and have been learning how to do all this \n
stuff since October 2014. I love programming, testing and solving problems."
    end
end
