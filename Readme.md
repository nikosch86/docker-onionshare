# docker-onionshare

by default the service shares everything under `/shared`  

For quick and easy sharing, mount your desired folder into `/shared` in the container like so:  
`docker run -v /whatever/you/want:/shared docker-onionshare`
