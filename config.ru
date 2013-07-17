


map "http://localhost/" do
  run Rack::Directory.new("public")
end
