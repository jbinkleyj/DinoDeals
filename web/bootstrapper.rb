require File.join(File.dirname(__FILE__), 'env')

geoloqi = Geoloqi::Session.new :access_token => CONFIG['geoloqi']['app_access_token']

CATEGORIES.each do |k,v|
  puts "creating layer category for #{name}..."
  geoloqi.post 'layer/create', {:name => k, :key => v}
end
