require_relative '../main'

describe Rental do
  rental_1 = Rental.new('id'=> 1, 'car_id'=> 1, 'start_date'=> '2015-12-8', 'end_date'=> '2015-12-8', 'distance'=> 100)
  rental_2 = Rental.new('id'=> 2, 'car_id'=> 1, 'start_date'=> '2015-03-31', 'end_date'=> '2015-04-01', 'distance'=> 300)
  rental_3 = Rental.new('id'=> 3, 'car_id'=> 1, 'start_date'=> '2015-07-3', 'end_date'=> '2015-07-14', 'distance'=> 1000)
  describe '#total_price' do
    it 'should return the total price of rental' do
      expect(rental_1.total_price).to eq 3000
      expect(rental_2.total_price).to eq 6800
      expect(rental_3.total_price).to eq 27800
    end
  end

  describe '#commission' do
    it 'should return the commission of rental' do
      expect(rental_1.commission).to eq ({'insurance_fee': 450, 'assistance_fee': 100, 'drivy_fee': 350})
      expect(rental_2.commission).to eq ({'insurance_fee': 1020, 'assistance_fee': 200, 'drivy_fee': 820})
      expect(rental_3.commission).to eq ({'insurance_fee': 4170, 'assistance_fee': 1200, 'drivy_fee': 2970})
    end
  end
end
