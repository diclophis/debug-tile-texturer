require 'rake'
require 'imageruby'
require 'imageruby-bmp'
require 'mini_magick'
 
desc "build by default"
task :default => [ :build ]

desc "build"
task :build do
  image = ImageRuby::Image.new(150,150, ImageRuby::Color.black)
  image.save("out.bmp", :bmp)
  image = MiniMagick::Image.open("out.bmp")
  #image.resize "100x100"
  image.combine_options do |c|
    c.box "yellow"
    c.draw "text 8,8 X" 
  end

  image.format "png"
  image.write  "out.png"
  File.unlink("out.bmp")
end
