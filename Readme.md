# docker-onionshare

by default the service shares everything under `/shared`  

For quick and easy sharing, mount your desired folder into `/shared` in the container like so:  
`docker run -t -v /whatever/you/want:/shared docker-onionshare`  

the default behavior is to connect to TOR using the bundled connector and share everything in the `/shared` folder and stop the service after one download.


Credit goes to micahflee for the excellent onionshare  
https://github.com/micahflee/onionshare
