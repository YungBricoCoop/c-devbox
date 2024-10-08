FROM alpine

RUN apk add --no-cache \
	gcc \
	g++ \
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

RUN sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" --unattended \
	&& git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git /root/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting \
	&& git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions /root/.oh-my-zsh/custom/plugins/zsh-autosuggestions \
	&& git clone --depth 1 https://github.com/MichaelAquilina/zsh-you-should-use.git /root/.oh-my-zsh/custom/plugins/you-should-use

COPY .zshrc /root/.zshrc

WORKDIR /code

CMD ["zsh", "-l"]
