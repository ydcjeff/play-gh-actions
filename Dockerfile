FROM pytorch/pytorch:latest

RUN apt-get update -y && \
    ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime && \
    apt-get install -y tzdata && \
	apt-get install -y --no-install-recommends \
	build-essential \
	ca-certificates && \
    apt-get -y install --no-install-recommends libglib2.0 \
                                           libsm6 \
                                           libxext6 \
                                           libxrender-dev && \
	apt-get autoremove -y && \
	apt-get remove -y && \
	rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pytorch-ignite
RUN pip uninstall -y pillow && CC="cc -mavx2" pip install -U --force-reinstall pillow-simd
