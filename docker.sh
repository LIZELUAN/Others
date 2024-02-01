# any password I want
password=123456
# pull image
# docker pull rocker/rstudio:4.3.1

# Run container, and Rstudio can be assessed by http://localhost:8888
docker run --rm -p 8686:8787 
-v /data/lizeluan/project:/home/rstudio/r-docker-tutorial \
-v ~/.Renviron:/home/rstudio/.Renviron \
-v /data/lizeluan/R/library:/home/rstudio/R/library \
-e USERID=$(id -u) -e GROUPID=$(id -g) \
-e PASSWORD=$password \
-e LD_LIBRARY_PATH=/home/rstudio/R/library \
--privileged=true rocker/rstudio:4.3.1




# open the broswer and login with username "rstudio" and password "123456", and that's it!
# docker stop rstudio
