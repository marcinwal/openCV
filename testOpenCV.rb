require 'opencv'
include OpenCV

if ARGV.size == 0
	puts "Usage: ruby #{__FILE__} ImageToLoadAndDisplay"
	exit
end

image = nil
begin
	image = CvMat.load(ARGV[0],CV_LOAD_IMAGE_COLOR)
rescue
	puts 'Could not open the image'
	exit
end

window = GUI::Window.new('Display window')
window.show(image)
GUI::wait_key
	