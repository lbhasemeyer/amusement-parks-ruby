require 'yaml'
require 'pp'

raw_data = File.read('data/amusement_parks.yml')
parks = YAML.load(raw_data)


result = {}
parks.each do |park|
  result["#{park[:state]}, #{park[:country]}"] = result["#{park[:state]}, #{park[:country]}"] || []
  # result[:1] = result[:1] || []
  result["#{park[:state]}, #{park[:country]}"] << park
end
pp result
