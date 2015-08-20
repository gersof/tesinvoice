class Invoice < ActiveRecord::Base
    belongs_to :client
    has_many :invoicedetails, :dependent => :destroy
    accepts_nested_attributes_for :invoicedetails,  :reject_if => :all_blank, :allow_destroy => true
end
