class ApplicationRecord < ActiveRecord::Base
  include HasBarcode
  self.abstract_class = true
end
