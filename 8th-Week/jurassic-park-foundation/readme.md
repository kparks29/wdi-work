#Foundation - Jurassic Park

This lab session will give you an opportunity to explore the Foundation framework by Zurb. It's a front-end framework with a mobile-first slant and a grid system, and it's an alternative to using Bootstrap or styling by hand.

###Getting started with Foundation

- Find all the Foundation docs and goodness [here](http://foundation.zurb.com/)
- If you'd like to bring Foundation into your Rails app, you can do so with the gem
	- ```gem 'foundation-rails'``` goes in your Gemfile (& bundle install)
	- Configure with a generate statement ```rails g foundation:install```
	- You may be prompted to overwrite your **application.html.erb** -- say yes if you're ok with that! (Things that change: your ```<title>``` tag gets a Foundation flavor, you're pulling in **modernizr** via ```<%= javascript_include_tag "vendor/modernizr" %>```, and  ```<%= javascript_include_tag "application" %>``` pops below ```<%= yield %>``` (in the body) so you can properly use Foundation's JS)
	- You'll get a new stylesheet called **foundation_and_overrides.scss**
	- If you plan to deploy to Heroku (or otherwise need to do a precompile), make sure that your **config/enviroments/production.rb.** includes the line ```config.assets.precompile += %w( vendor/modernizr.js )```
	- Peek at the docs and find some things you like!
	
###Well!  Mr. DNA!  Where'd you come from?

- This starter Rails app is your playground for Foundation -- feel free to add/remove/use existing content as you wish.
- Your seed file includes three dinosaurs; we've also generated a scaffold for them.
- Clone down, bundle install, and rake db:create db:migrate db:seed. Check the doors for velociraptors.
- We popped in a welcome page (we'll start applying Foundation to this page as a class).
- We've put some awesome Jurassic Park images in the assets directory (but you're welcome to grab some more!).
	
###Hold onto your butts

Try some new things! During lab time, you might want to:

- Play around with Foundation's [grid](http://foundation.zurb.com/docs/components/grid.html) and see how it's different from Bootstrap's (or your own).
- Add an [off-canvas](http://foundation.zurb.com/docs/components/offcanvas.html) or [top bar nav](http://foundation.zurb.com/docs/components/topbar.html) to take us from **welcome** to the dinosaurs **index** (feel free to create new content/views to make this nav more meaningful).
- Spiff up buttons with Foundation's [button styling](http://foundation.zurb.com/docs/components/buttons.html).
- Zip up your text content into an [accordion](http://foundation.zurb.com/docs/components/accordion.html) (You may want to find some text content for this one! We recommend looking up dinosaurs on Wikipedia, or snagging some [dino ipsum](http://dinoipsum.herokuapp.com/) text.)
- Add an [orbit slider](http://foundation.zurb.com/docs/components/orbit.html) (it's like a carousel) to show off some images.
- Style the app for multiple device sizes [using ems in your media queries](http://foundation.zurb.com/docs/media-queries.html) or the [visibility](http://foundation.zurb.com/docs/components/visibility.html) classes.
	
	