# any password I want
password=123456
# pull image
docker pull rocker/rstudio:4.3.1

# Run container, and Rstudio can be assessed by http://localhost:8888
docker run --rm -p 8888:8787 \
-e PASSWORD=$password \
rocker/rstudio:4.3.1

docker run -d --rm \
-p 8888:8787 \
-e PASSWORD=xxxxxx \
-v /data/lizeluan/rstudio:/data/lizeluan/rstudio \
rocker/rstudio:4.3.1



# open the broswer and login with username "rstudio" and password "123456", and that's it!
