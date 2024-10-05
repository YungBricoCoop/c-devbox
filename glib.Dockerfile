FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y \
	make \
	cmake \
	valgrind \
	zsh \
	git \
	wget \
	curl \
	ninja-build \
	cppcheck \
	clang \
	clang-tidy \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/*

RUN	sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" --unattended \
	&& git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git /root/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting \
	&& git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions /root/.oh-my-zsh/custom/plugins/zsh-autosuggestions \
	&& git clone --depth 1 https://github.com/MichaelAquilina/zsh-you-should-use.git /root/.oh-my-zsh/custom/plugins/you-should-use 


COPY .zshrc /root/.zshrc

WORKDIR /code

CMD ["zsh", "-l"]
