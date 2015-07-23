package "apache2"

file "/var/www/html/index.html" do
  action :create
  content "<h1>Hello, world!</h1>
  <h3>IP ADDRESS: #{node["ipaddress"]}</h3>
  <h3>Hostname  : #{node["hostname"]}</h3>
  "
end

service "apache2" do
  action [ :start, :start ]
end
