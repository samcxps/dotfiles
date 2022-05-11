declare -r NVIM_DIR="${NVIM_DIR:-"$(which nvim)"}"

function install() {
    "$NVIM_DIR" --headless -u installation_config.lua \
    -c 'autocmd User PackerComplete quitall' \
    -c 'PackerSync'
}

install