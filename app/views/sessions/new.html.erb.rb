		
 <h1>Log in</h1>
 
 	<% form_for @user, {url:session_path} do |f| %>	
	<%= f.text_field :email, placeholder: "your super secret email address..  we will be spamming.." %>
	<%= f.password_field :password, placeholder: "password ..." %>
	<%= f.submit %>

<% end %>