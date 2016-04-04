class Address < ActiveRecord::Base
  belongs_to :user

  def formatted_address
    street.to_s + city.to_s + state.to_s + zip.to_s
  end
end

