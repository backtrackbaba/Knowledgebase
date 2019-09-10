## Installation

`pip install jupyter`


## Jupyter Config

    c.NotebookApp.allow_remote_access = True
    c.NotebookApp.base_url = '/'
    c.NotebookApp.ip = '*'
    c.NotebookApp.port = 8888
    c.NotebookApp.token = ''
    c.NotebookApp.open_browser = False
    c.NotebookApp.disable_check_xsrf = False
    c.NotebookApp.certfile = '/etc/nginx/ssl.crt'
    c.NotebookApp.keyfile = '/etc/nginx/ssl.key'
    c.NotebookApp.max_body_size = 52428800
    c.NotebookApp.max_buffer_size = 52428800
    c.NotebookApp.tornado_settings = {'max_body_size': 52428800, 'max_buffer_size': 52428800, 'headers': { 'Content-Security-Policy': "frame-ancestors 'self' *.greyatom.com *.uat-commit.live *.qa-commit.live *.local-commit.live"}}