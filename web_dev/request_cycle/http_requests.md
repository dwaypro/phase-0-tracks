2. What are some common HTTP status codes?
	-	404 - not found, 403 - forbidden, 200, 504 time out
3. What is the difference between a GET request and a POST request? When might each be used?	- When I built the bodytypecalculator app the android device(client) needed to produce a post request containing the user input, in a background thread to the server in order for the server to generate the necessary search results. A Get request was then generated in order to return and display the results to the same user. So, a Get request is used to return information from the server, while a post is used to supply information to the server. 
4. What is a cookie? How does it relate to HTTP requests?
	- Cookies are used as peices of information sent from servers that client browsers typically store, in order to return that information back to the same server. Used many times to keep users logged in. 
	