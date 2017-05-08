install:
	gem install jekyll
	gem install jekyll-paginate
	gem install jekyll-gist

start:
	jekyll serve --future --host $$IP --port $$PORT --baseurl ''

