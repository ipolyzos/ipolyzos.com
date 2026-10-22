# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Commands

```
make server        # build then serve locally with drafts (hugo server -D)
make build         # clean + production build → public/
make clean         # remove public/
```

CI pins Hugo (non-extended is sufficient; the theme uses plain CSS) to the version in `.github/workflows/hugo.yaml` (`HUGO_VERSION`). Match that version locally when debugging build differences.

## Architecture

This is a [Hugo](https://gohugo.io/) static site using a custom local theme, `themes/apple/` (plain CSS in `themes/apple/assets/css/main.css`, no JS build step, no Hugo modules). `go.mod` declares only the module path.

**Config split** (`config/_default/`):

- `config.toml` — base URL, theme, pagination, build flags, output formats. Top-level keys must stay above any `[table]` header or Hugo ignores them.
- `params.toml` — site description, `[site]` metadata, and `[author]` (name, headline, bio, social links)
- `menus.en.toml` — top-nav links
- `languages.en.toml`, `markup.toml` — language and Markdown renderer settings
- `module.toml` — minimum Hugo version

**Theme** (`themes/apple/layouts/`): `_default/{baseof,single,list,simple}.html`, `about/simple.html`, `index.html`, `404.html`, `robots.txt`, and partials (`head`, `header`, `footer`, `social-links`).

**Content** (`content/`):

- `_index.md` — homepage intro
- `about/index.md` — about page (TOML front matter: stats, skills, industries, motivations; `layout = "simple"`)
- `projects/<name>/<name>.md` — one file per project (newer ones use `index.md`)
- `writing/index.md` — links to the Cloudflare-hosted notes sites (judgment.ipolyzos.com, architecture.ipolyzos.com); `/notes/` is kept as an alias
- `publications/index.md` — publications, defined as `[[publication]]` entries in front matter

**Project front matter conventions:**

```
layout: single
title: project-name
description: "One-line summary"
date: YYYY-MM-DD
weight: YYYYMMDD       # integer derived from date, controls sort order
tags: [tag1, tag2]
github_url: "https://github.com/..."   # optional; shows a repo link
private: false                         # true shows a private badge
showDate: true
showReadingTime: false
```

**Deployment**: GitHub Actions (`.github/workflows/hugo.yaml`) builds on push to `main` and deploys to GitHub Pages. `static/CNAME` carries the custom domain (`ipolyzos.com`); `public/` is gitignored (built in CI). Pull requests to `main` run `.github/workflows/pr-check.yaml`, which does a production build with `--panicOnWarning` so broken builds are caught before merge.

## Updating personal info

- **Author name, headline, bio, social links** → `[author]` in `config/_default/params.toml`. Links are a list of single-key tables; the key selects the icon.
- **Profile photo** → `assets/img/profile.jpg` (also used as the og:image)
- **Custom icons** → `assets/icons/*.svg`
