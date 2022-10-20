#  My firts docker file

# the FROM keyboard tells Docker where to pull the base image from
FROM nginx
#  the COPY command copies a file or directory into a pod/container
COPY ./index.html /usr/share/nginx/html