FROM python:3

ADD test.py /

RUN mkdir ~/.pip && \
    cd ~/.pip/  && \
    echo "[global] \ntrusted-host =  pypi.douban.com \nindex-url = http://pypi.douban.com/simple" >  pip.conf

RUN pip install pystrich

CMD ["python","./test.py"]

