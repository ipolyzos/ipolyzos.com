# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Commands

```bash
make server        # build then serve locally with drafts (hugo server -D)
make build         # clean + production build → public/
make clean         # wipe public/
make update-theme  # hugo mod get -u  (upgrades Congo theme)
```

CI pins Hugo **extended** `0.111.3`. Match that version locally when debugging build differences.

## Architecture

This is a [Hugo](https://gohugo.io/) static site using the [Congo v2](https://github.com/jpanther/congo) theme, managed as a Hugo module (no local `themes/` directory). The theme is declared in `go.mod` / `config/_default/module.toml` and fetched via `hugo mod`.

**Config split** (`config/_default/`):
- `config.toml` — base URL, pagination, permalink patterns, output formats
- `params.toml` — appearance, layout choices, feature flags (search, code-copy, etc.)
- `menus.en.toml` — top-nav links
- `languages.en.toml`, `markup.toml` — language and Markdown renderer settings

**Content** (`content/`):
- `_index.md` — homepage profile text
- `about/index.md` — about page
- `projects/<name>/<name>.md` — one file per project (some use `index.md` for page bundles with local assets)
- `publications/index.md` — publications list

**Project front matter conventions:**
```yaml
layout: page
permalink: "slug"      # used in URL
title: project-name
icon: icon-name        # matches an icon in assets/icons/
date: YYYY-MM-DD
weight: YYYYMMDD       # integer derived from date, controls sort order
description: >
tags: [tag1, tag2]
showDate: true
showReadingTime: true
```

**Deployment**: GitHub Actions (`.github/workflows/hugo.yaml`) builds on push to `main` and deploys to GitHub Pages. The `docs/CNAME` file holds the custom domain (`ipolyzos.com`); `public/` is gitignored (built in CI).

## Updating personal info

The three locations that are non-obvious:

- **Author name, tagline, social links** → `config/_default/languages.en.toml`  
  Social fields (`github`, `linkedin`, `twitter`, `googleScholar`, etc.) live here, not in `params.toml`.
- **Profile photo** → `assets/img/profile.jpg`
- **Custom icons** → `assets/icons/*.svg` (filename stem = `icon:` value in project front matter).  
  Congo provides a large built-in icon set; only add an SVG here when the icon isn't already in the theme.
