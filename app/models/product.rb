class Product < ActiveRecord::Base
    belongs_to :category
    belongs_to :invoicedetail
    def to_s
        descripproduct
    end
end
