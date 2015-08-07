class Contact
  attr_reader :name, :job, :description

  CONTACTS =
  { cory: { name: "Cory Flanagan", job: "Evil Genius", description: "Professional yak-shaver/programmer extraoridnaire"},
    gustavo: { name: "Gustavo Pares", job: "Professional hacker", description: "1337 designer turned developer"},
    kelly: { name: "Kelly Becker", job: "All the jobs", description: "Given enough time, she would rule the world"}}

  def initialize(name, job, description)
    @name = name
    @job = job
    @description = description
  end

  def display(voice)
    puts "#{name}, #{job}"
    puts description
    Talks.say name + " " + job + " " + description, voice: voice if voice
    print CONTACTS.values.last[:name] == name ? "" : "\n"
    sleep 1
  end

  def self.get_contacts
    contacts = []
    CONTACTS.values.each do |properties|
      contacts.push(Contact.new(properties[:name], properties[:job], properties[:description]))
    end
    contacts
  end

  private

    def set_contacts
      @contacts ||= CONTACTS
    end
end
