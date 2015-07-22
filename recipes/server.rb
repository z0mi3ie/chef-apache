package "apache2"

file "/var/www/html/index.html" do
  action :create
  content "<h1>Hello, world!</h1>"
end

service "apache2" do
  action [ :start, :start ]
end
