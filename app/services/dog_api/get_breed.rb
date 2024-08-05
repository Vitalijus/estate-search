# response = DogApi::GetBreed.new("Beagle")
# response.build_result

class DogApi::GetBreed < DogApi::Base
  attr_reader :error, :result

  def initialize(breed)
    @breed = breed.downcase
  end

  def call
    response = HTTP.get(breed_endpoint(@breed))
    response.parse
  rescue HTTP::Error => e
    Rails.logger.error("Request to the API failed. Endpoint: #{breed_endpoint}")
    {}
  end

  def build_result
    response = call
    @error = "Unsuccessful response, couldn't get #{@breed} images" if response["status"] != "success" ||
                                                                       response["code"] == 404

    @result = breed_details(response["message"])
  end

  private

  def breed_details(images)
    images
  end
end
