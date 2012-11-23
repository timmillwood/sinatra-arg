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
