docker start p2nv3
docker cp .\config\sav\cles-epo.txt p2nv3:/home/p2n/P2N-V3/ 
docker cp .\config\sav\dex.js p2nv3:/home/p2n/P2N-V3/ 
docker cp .\config\sav\dex.json p2nv3:/home/p2n/P2N-V3/ 
docker cp .\config\sav\run-all.sh p2nv3:/home/p2n/P2N-V3/ 
docker cp .\config\sav\RequestsSets p2nv3:/home/p2n/P2N-V3/
docker cp p2nv3:/home/p2n/P2N-V3/DATA/ .\P2N-V3\
docker exec -it --user root p2nv3 chown -R p2n:p2n /home/p2n/P2N-V3/
docker compose up -d
REM put the following in comment to avoid automatic update. 
docker exec -it p2nv3 sh -c "/home/p2n/P2N-V3/run-all.sh"
docker-compose logs -f p2nv3

