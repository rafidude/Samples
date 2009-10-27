require 'rubygems'
require 'active_record'
ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :dbfile  => "paper"
)
class Product < ActiveRecord::Base
    has_many :purchases
end

class Purchase < ActiveRecord::Base
    belongs_to :store
end

class Store < ActiveRecord::Base
end

my_prods = Product.find(:all)

require 'pp'
pp my_prods