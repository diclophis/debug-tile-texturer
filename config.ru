map "/" do
  run Rack::Directory.new("public")
end
