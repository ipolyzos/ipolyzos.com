---
layout: single
title: compare-mcp
description: "stdio MCP server over diff(1) delivering structured JSON unified diffs and parsed hunks to AI agents."
date: 2026-03-29
weight: 20260329
tags: ["go", "mcp", "diff", "golang"]
private: false
showDate: true
showReadingTime: false
---
[compare-mcp](https://github.com/ipolyzos/compare-mcp) is a [Model Context Protocol](https://modelcontextprotocol.io/) stdio server written in Go. It wraps the host diff(1) utility and delivers structured JSON — unified diff text, parsed hunks, and directory deltas — giving AI agents a typed, read-only layer for comparing files and directories.
