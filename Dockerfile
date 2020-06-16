FROM python:3.6
COPY . /opt/
RUN pip3 install -r /opt/requirements.txt && mkdir /data
RUN apt-get update && apt-get install -y \
    fio \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /opt/
#CMD  ./bench_fio --target /data -b 4k 16k 64k 1M --type directory -s 1G -m randrw --readmix 90 --iodepth 1 8 16 32 --numjobs 1 8 16 32 -o /data/output
CMD ./run.sh
