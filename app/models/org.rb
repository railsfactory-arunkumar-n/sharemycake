class Org < ActiveRecord::Base
#belongs_to :event
has_many :organizations
has_many :events , through: :organizations
belongs_to :cause
end
