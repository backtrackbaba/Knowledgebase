mkdocs build
source ~/environments/general/bin/activate
docker stop nginx && docker rm nginx
docker run -itd -p 8080:80 -v $PWD/build:/usr/share/nginx/html --name nginx nginx