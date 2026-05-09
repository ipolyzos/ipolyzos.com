---
layout: single
title: file-meta-mcp
description: "Read-only MCP server for file metadata, disk usage, filesystem usage, and SHA-256 hashing via stdio transport."
date: 2025-04-02
weight: 20250402
tags: ["go", "mcp", "metadata", "filesystem", "golang"]
private: true
showDate: true
showReadingTime: false
---
file-meta-mcp is a read-only [Model Context Protocol](https://modelcontextprotocol.io/) server written in Go. It exposes file stat, disk usage, filesystem usage, and SHA-256 hashing over stdio transport — designed for use with Cursor and similar MCP-compatible AI clients.
