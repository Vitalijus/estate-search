require "rails_helper"
# require "pry"

describe DogApi::GetBreed, type: :request do
  describe "call to the Dog API" do
    let(:breed) {"Beagle"}

    subject { DogApi::GetBreed }

    it "should return list of images", vcr: { re_record_interval: 30.days } do
      VCR.use_cassette("dog_api/breed_images") do
        dog_api = subject.new(breed)

        expect(dog_api.build_result).not_to be_empty
      end
    end

    it "should return an error message", vcr: { re_record_interval: 30.days } do
      VCR.use_cassette("dog_api/error_message") do
        dog_api = subject.new("Maine Coon")
        dog_api.build_result

        expect(dog_api.error).to eq("Unsuccessful response, couldn't get maine coon images")
      end
    end
  end
end
