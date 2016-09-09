json.array!(@cars) do |car|
  json.extract! car, :id, :descr, :small_photo, :big_photo, :price1, :price2, :integer, :price3, :article
  json.url car_url(car, format: :json)
end
