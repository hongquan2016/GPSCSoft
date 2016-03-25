class Representative < ActiveRecord::Base
    belongs_to :department
    attr_accessible :uin, :name
end
