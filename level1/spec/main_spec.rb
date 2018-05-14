require_relative '../main'

describe Rental do
  describe '#total_price' do
    it 'should return the total price of rental' do
      rental_1 = Rental.new('id' => 1, 'car_id' => 1, 'start_date' => '2017-12-8', 'end_date' => '2017-12-10', 'distance' => 100)
      rental_2 = Rental.new('id' => 2, 'car_id' => 1, 'start_date' => '2017-12-14', 'end_date' => '2017-12-18', 'distance' => 550)
      rental_3 = Rental.new('id' => 3, 'car_id' => 2, 'start_date' => '2017-12-8', 'end_date' => '2017-12-10', 'distance' => 150)

      expect(rental_1.total_price).to eq 7000
      expect(rental_2.total_price).to eq 15500
      expect(rental_3.total_price).to eq 11250
    end
  end
end
