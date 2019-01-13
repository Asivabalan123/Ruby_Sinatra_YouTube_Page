# sparta_ruby_youtube

This is a youtube page created through Ruby Sinatra. Sinatra is desired to be lightweight and flexible. In this YouTube page, the routes are manually set up and connected to other pieces of the application.

First install the following gems:
- gem "sinatra"
- gem "sinatra-contrib"
- gem "rack"

This youtube can be accessed by going into Git bash and enter rackup, this will then provide you with a port number by a HTTP request. You then go into google and type in localhost/'portnumber' to get to the index page of the youtube page.

The navigation bar and footer of the page have been linked in through partials. The have been created in the view folder and then another folder called partials. Partials are another form of the rendering process by breaking it into more manageable chunks, it moves the rendered part of a particular feature like the footer into another file. These files have been created with a erb file extension (footer.erb), this is an embedded ruby file. This means that its a HTML file with embedded ruby code in it. These partials are then included in the layout.erb file, where the files are rendered in. Also in the layout.erb file there is a ruby function called yield which has been embedded into it. Yield renders the template of the current controller. In this case the index and show pages in the controller file have been yielded into the page, without the yield function the body of the current YouTube page (the video and description) would not be on display.
