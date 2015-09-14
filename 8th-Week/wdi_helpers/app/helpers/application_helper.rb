module ApplicationHelper

	def sign_in_out_links
		if current_user
			html = "User #{current_user.email} signed in<br />"
			html += link_to "Sign out", destroy_user_session_path, method: "delete"
			html.html_safe
		else
			(link_to "Sign in", new_user_session_path) + " or " + (link_to "Sign up", new_user_registration_path)
		end
	end

	def full_title
		base_title = "Bloggio"
		if defined? @title
			"#{base_title} | #{@title}"
		else
			"#{base_title}"
		end
	end

	def sign_in_out_links
		html = "<aside class=\"right-off-canvas-menu\"><ul class=\"off-canvas-list\">"
	  if user_signed_in?
		  html += "<li><label>Logged in as <strong>#{current_user.email}</strong></label></li><li>"
	    html += link_to 'Edit profile', edit_user_registration_path, :class => 'navbar-link'
		  html += "</li><li>"
		  html += link_to "Logout", destroy_user_session_path, method: :delete, :class => 'navbar-link'
		  html += "</li>"
    else
	   	html += "<li><label>Please sign in</label></li><li>"
		  html += link_to "Sign up", new_user_registration_path, :class => 'navbar-link'
		  html += "</li><li>"
		  html += link_to "Login", new_user_session_path, :class => 'navbar-link'
	  end
	  html += "</li></ul></aside>"
	  html.html_safe
 	end
end
