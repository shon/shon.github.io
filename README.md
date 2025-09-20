- Install

    *Fedora (Asahi Remix)
    cargo install --locked --git https://github.com/getzola/zola

- New journal entry

    vi content/journal/`date +"%Y.%m.%d"`.md

- Build

    zola build; cp -rv public/* ../shon.github.io/
