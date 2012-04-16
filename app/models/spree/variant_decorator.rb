module Spree
  Variant.class_eval do

    attr_accessible :use_master_price
    
    def price
      return product.master.price if use_master_price? && !use_master?

      self[:price]

    end

  end
end
