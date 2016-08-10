<div class="container">
  <h2>Register a New Account!</h2>

<% if @errors %>
    <ul>
      <% @errors.each do |error| %>
        <li><%= error %></li>
      <% end %>
    </ul>
  <% end %>

<form class="" action="/users" method="post">
  <label for="user[username]">Username:</label>
  <input type="text" name="user[username]"><br><br>
  <label for="user[password]">Password:</label>
  <input type="password" name="user[password]"><br><br>
  <input type="submit" value="Register"><br>
</form>

</div>
