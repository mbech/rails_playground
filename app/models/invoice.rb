class Invoice < ActiveRecord::Base
  belongs_to :customer


  delegate :name,
    :street,
    :city,
    :state,
    :zip_code,
    :to => :customer,
    :prefix => true

end
