#Sinatra arg

This is a very simple helper for Sinatra allowing you to quickly and easily get each argument within the url path.

##Installation:
Install the gem:

    gem install sinatra-arg

Require sinatra-arg

    require 'sinatra-arg'

Done!

##Usage
Anywhere within your Sinatra application you can now call `arg()` to get the value of any argument. For example if you had the route `/blog/2012/11/23/getting-started` you could use `arg(0)` to return `blog` and `arg(4)` to return `getting-started`.

##example
    require 'sinatra'
    require 'sinatra-arg'
    
    get '/hello/:name' do
      erb "Hello #{arg(1).capitalize}"
    end
    
    get '/goodbye/:name' do
      erb "Goodbye #{arg(1).capitalize}"
    end
    
    __END__
    
    @@ layout
    <html>
    <head>
      <% if arg(0) == 'hello' %>
        <link href="/css/hello.css" rel="stylesheet">
      <% else %>
        <link href="/css/other.css" rel="stylesheet">
      <% end %>
    </head>
    <body><%= yield %></body>
    </html>

##Other information
Sinatra arg was built by and is copyright of [Tim Millwood](http://www.millwoodonline.co.uk "Millwood Online") who you can follow on [Twitter](http://www.twitter.com/timmillwood).