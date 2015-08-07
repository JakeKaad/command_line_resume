require 'rspec'
require './resume'


describe Resume do
  let(:resume) { Resume.new }
  describe "resume#print_my_info" do
    it "prints to the command line" do
      expect { resume.print_my_info }.to output.to_stdout
    end
  end
end
