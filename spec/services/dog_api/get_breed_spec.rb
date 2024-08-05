require "rails_helper"
require "pry"

describe DogApi::GetBreed, type: :request do
  describe "call to the Dog API" do
    let(:breed) {"Beagle"}

    subject { DogApi::GetBreed }

    it "should return list of images" do
      dog_api = subject.new(breed)

      expect(dog_api.build_result).not_to be_empty
    end

    it "should return an error message" do
      dog_api = subject.new("Maine Coon")
      dog_api.build_result

      expect(dog_api.error).to eq("Unsuccessful response, couldn't get maine coon images")
    end
  end
end
