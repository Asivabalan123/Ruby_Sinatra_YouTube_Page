class PostController<Sinatra::Base

    set :root, File.join(File.dirname(__FILE__), "..")

    set :view, Proc.new { File.join(root, "views") }

  configure:development do
    register Sinatra::Reloader
  end

  $videos = [
  {
    id:0,
    title: "Animals",
    body: "This is the video 1 body (text)",
    src: "https://www.youtube.com/embed/jZtenZltJYQ"
  },
  {
    id:1,
    title: "Awesome Pigs",
    body: "This is the video 2 body (text)",
    src: "https://www.youtube.com/embed/0OAG990F1qE"
  },
  {
    id:2,
    title: "Peppa Pig English",
    body: "This is the video 3 body (text)",
    src: "https://www.youtube.com/embed/hiEdMIAy4q4"
  },
  {
    id:3,
    title: "Peter Rabbit",
    body: "This is the video 4 body (text)",
    src: "https://www.youtube.com/embed/yzPlbK1iCK0"
  },
  {
    id:4,
    title: "Peppa Pig",
    body: "This is the video 5 body (text)",
    src: "https://www.youtube.com/embed/JpEgWO5Zyt0"
  }
]
get "/" do
    @title_for_the_page = "YouTube"
    @videos = $videos
    erb :'videos/index'
  end

  get "/:id_from_url" do
    id = params[:id_from_url].to_i
    @video = $videos[id]
    erb :"videos/show"
  end

end
