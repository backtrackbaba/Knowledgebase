# Requests Module

## Installation

`pip install requests`

## Basic Examples

#### Making a GET Request

<pre>

    headers = {'Content-Type': 'application/json'}
    request = requests.get(url, headers = headers)
    
    status_code = request.status_code
    response_json = request.json()

</pre>

#### Making a POST Request


#### Making a DELETE Request