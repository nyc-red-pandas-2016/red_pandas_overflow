<div class=container>
  <h2>Log In</h2><br>
<% if @message %>
    <p id="banner"><%= @message %></li>
<% end %>


<% if @errors %>
    <ul>
    <% @errors.each do |error| %>
      <li id="banner"><%= error %></li>
    <% end %>
    </ul>
 <% end %>

 <form class="" action="/users/login" method="post">
  <label for="user[username]">Username:</label>
  <input type="text" name="user[username]"><br><br>
  <label for="user[password]">Password:</label>
  <input type="password" name="user[password]"><br><br>
  <input type="submit" value="Log In"><br>
</form>
</div>
