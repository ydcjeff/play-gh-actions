# Dockerfile.base
ARG PTH_VERSION

FROM pytorch/pytorch:${PTH_VERSION}-runtime

# Install tzdata / git
RUN apt-get update && \
    ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime && \
    apt-get install -y tzdata git g++ && \
    dpkg-reconfigure --frontend noninteractive tzdata && \
    apt-get autoremove -y && \
    apt-get clean -y && \
    rm -rf /root/.cache && \
    rm -rf /var/lib/apt/lists/* && \

# Ignite main dependencies
    pip install --upgrade --no-cache-dir pytorch-ignite \
                                         tensorboard \
                                         tqdm && \

# replace pillow with pillow-simd
    pip uninstall -y pillow && \
    CC="cc -mavx2" pip install --upgrade --no-cache-dir --force-reinstall pillow-simd && \
    apt-get remove -y g++ && \
    apt-get autoremove -y && \

# Checkout Ignite examples only
    mkdir -p pytorch-ignite-examples && \
    cd pytorch-ignite-examples && \
    git init && \
    git config core.sparsecheckout true && \
    echo examples >> .git/info/sparse-checkout && \
    git remote add -f origin https://github.com/pytorch/ignite.git && \
    git pull origin master
