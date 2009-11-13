require 'rubygems'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => "mysql",
  :host => "localhost",
  :database => "ESAWorkflows"
)

class Departments < ActiveRecord::Base
end

class Employees < ActiveRecord::Base
end

class Projects < ActiveRecord::Base
end

def insert_records
  # Employees.create(:Name=>'Rafi Dudekula', :HRNumber => 'a123', :ADUserName => 'a123')
  # Employees.create(:Name=>'Greg Renner', :HRNumber => 'b456', :ADUserName => 'a123')
  # Employees.create(:Name=>'Harry Butler', :HRNumber => 'c789', :ADUserName => 'a123')
  emp = Employees.find(:first) # returns the first object fetched by SELECT * FROM people  
  puts %{#{emp.Name}'s HRNumber is #{emp.HRNumber}}
end

insert_records