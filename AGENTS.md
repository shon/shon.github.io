# Project Context: Shon's Blog

This is a personal blog and digital garden built with **Zola**, a fast static site generator written in Rust. The site focuses on minimalism, performance, and clean typography.

## Tech Stack
- **Generator:** Zola (Rust-based SSG)
- **Theme:** Anemone (Customized)
- **Styling:** SCSS / Sass
- **Deployment:** GitHub Pages via GitHub Actions

## Directory Structure
- `content/`: Markdown source files.
  - `blog/`: Long-form articles and technical essays.
  - `journal/`: Short-form daily logs or thoughts.
  - `wishlist.md`, `work.md`: Standalone pages.
- `templates/`: Zola Tera templates (overrides theme defaults).
- `sass/`: Custom styles (compiled by Zola).
- `static/`: Assets like images, favicons, and robots.txt.
- `config.toml`: Main site configuration (URL, navigation, taxonomies).

## Content Guidelines
- **Format:** Markdown with TOML front matter.
- **Tone:** Personal, technical, and reflective.
- **Taxonomies:**
  - `tags`: Used for blog posts (e.g., `python`, `linux`).
  - `hashtags`: Used for journal entries (e.g., `#diary`, `#ideas`).
- **Images:** Stored in `static/images/`. Use relative paths in Markdown.

## Development Workflow
1. **Serve Local:** `zola serve` (Accessible at `127.0.0.1:1111`).
2. **Build:** `zola build` (Output to `public/`).
3. **Deploy:** Automated via `.github/workflows/main.yml` on push to `main`.

## Agent Rules
- **Configuration:** Check `config.toml` before assuming site-wide settings.
- **Theme:** Respect the "anemone" theme structure. Check `themes/anemone` before modifying `templates/`.
- **Clean Code:** Prefer semantic HTML and standard CSS over frameworks unless specified.
- **No Secrets:** Never commit `.env` or sensitive data.
