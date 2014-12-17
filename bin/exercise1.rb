require 'yaml'
require 'pp'

raw_data = File.read('data/amusement_parks.yml')
parks = YAML.load(raw_data)


parks.each do |park|
  parks_hash = {"#{park[:id]}" => park}
  pp parks_hash
end
