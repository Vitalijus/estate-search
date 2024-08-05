# address = DogBreedService::Base.new
# address.breed_endpoint

class DogBreedService::Base
  def base_address
    ENV.fetch("DOG_API_BASE_ADDRESS")
  end

  def breed_endpoint(breed)
    base_address + "/breed/#{breed}/images"
  end
end
