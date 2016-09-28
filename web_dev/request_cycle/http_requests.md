1. Common status codes include
 * 200 - Everything is okay. Anything that starts with 2 means everything is okay
 * 1xx - informational messages, rare
 * 3xx - redirection response. Sends user to new location
 * 4xx - Client side errors
 * 5xx - Server side errors

 * 404 - Not found, the requested page is no longer available
 * 403 - access to information is forbidden. Only certain machines are allowed access
 * 500 - Internal Server Error. Generic server error, catchall.
 * 503 - Service unavailable, web server isn't available. Most likely temp issue
 * 504 - Gateway Timeout - Connection to secondary web server times out and can't be reached. DNS issue or network device might be down

2. GET vs POST request
* GET - Requests data from a specified resource, such as loading a webpage.
* POST - Submits data to be processed to a specified resource. Such as login information, keystrokes, clicking etc

3. A cookie is a small piece of data sent from a website and stores in the user's web browser while the user is browsing. This can include login information and other
saved information so the user doesn't have to re login or reenter the info every time.