class VehicleFactory

  def initialize; end

  def create_vehicles(source)
    source.map do |car|
      Vehicle.new({vin: car[:vin_1_10], year: car[:model_year], 
      make: car[:make], model: car[:model], engine: :ev})
    end
  end
end