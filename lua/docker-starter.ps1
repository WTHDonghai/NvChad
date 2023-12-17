docker run -w /root -it --rm alpine:latest sh -uelic '
  apk add git nodejs neovim ripgrep build-base wget --update
  git clone git@github.com:WTHDonghai/NvChad.git ~/.config/nvim
  nvim
  '
