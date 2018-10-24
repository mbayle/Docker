FROM debian:buster-slim

RUN apt-get update && apt-get -y install \
		apt-transport-https \
		ca-certificates \
		curl \
		gnupg \
		locales \
		--no-install-recommends \
		&& rm -rf /var/lib/apt/lists/*

# Sublime might nag about Ascii issue w/ Package Control otherwise
RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen && \
    echo "LANG=en_US.UTF-8" > /etc/locale.conf

# Add the sublime debian repo
RUN curl -sSL https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -
RUN echo "deb https://download.sublimetext.com/ apt/stable/" > /etc/apt/sources.list.d/sublime-text.list

# Installing the libcanberra-gtk-module gets rid of a lot of annoying error messages.
RUN apt-get update && apt-get -y install \
    libcanberra-gtk-module \
    sublime-text \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
