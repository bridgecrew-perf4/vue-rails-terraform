openapi:
	rm -rf ./rails; 
	openapi-generator generate -i user/swagger.yaml -g ruby-on-rails -o ./rails 

mock:
	prism mock user/swagger.yaml