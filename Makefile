all: 
	bundle exec jekyll serve

test:
	bundle exec jekyll serve -H 0.0.0.0 -P 80

merge: 
	git remote update && git merge dt-np/master 

 
