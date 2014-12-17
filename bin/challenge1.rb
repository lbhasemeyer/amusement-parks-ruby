require 'yaml'
require 'pp'

parks = YAML.load(File.read('data/amusement_parks.yml'))


parks.each do |park|
  parks_hash = {park[:id] => park}
  pp parks_hash
end
