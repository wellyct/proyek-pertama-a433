
## masuk ke folder proyek-pertama
cd /home/welly/dicoding/proyek-pertam-a433

## membuat image berdasarkan Dockerfiile
docker build -t item-app:v1 .

## menyimpan kode token akses ghcr.io ke variable
echo "EXPORT WELLYCT_PAT = ##KODE_TOKEN_ACCESS##" >> /home/welly/.bashrc

## login ghcr.io dengan menggunakan username dan token
echo $WELLYCT_PAT | docker login ghcr.io -u wellyct --password-stdin

## memberikan informasi image tag 
docker tag item-app:v1 ghcr.io/wellyct/item-app:v1

## mengirimkan image ke ghcr.io
docker push ghcr.io/wellyct/item-app:v1

## melihat informasi image yang sudah di upload
docker inspect ghcr.io/wellyct/item-app:v1


