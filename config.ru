require "sinatra"
require "sinatra/contrib"

# you dont need to do control C
require "sinatra/reloader" if development?
require_relative "./controllers/post_controller.rb"

use Rack::Reloader
run PostController
