FROM python:3.8-alpine

RUN apk add --no-cache \
	musl-dev \
	make \
	cmake \
	valgrind \
	zsh \
	git \
	wget \
	curl \
	ninja \
	ncurses \
	cppcheck \
	clang \
	clang-extra-tools \
	&& rm -rf /var/cache/apk/*

RUN pip install cpplint

RUN sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" --unattended

ENV ZSH /root/.oh-my-zsh
RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH/custom/plugins/zsh-syntax-highlighting
RUN git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH/custom/plugins/zsh-autosuggestions
RUN git clone https://github.com/MichaelAquilina/zsh-you-should-use.git $ZSH/custom/plugins/you-should-use

COPY .zshrc /root/.zshrc

WORKDIR /code

CMD ["zsh", "-l"]