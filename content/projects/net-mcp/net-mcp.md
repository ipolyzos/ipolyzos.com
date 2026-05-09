---
layout: page
title: net-mcp
description: "Read-only MCP server exposing structured, deterministic views of host network state via ss and lsof parsing."
date: 2025-03-31
weight: 20250331
tags: ["go", "mcp", "networking", "lsof", "golang"]
private: true
showDate: true
showReadingTime: false
---
net-mcp is a read-only [Model Context Protocol](https://modelcontextprotocol.io/) server written in Go. It exposes structured, deterministic views of host network state by parsing and normalising ss and lsof output — giving AI agents reliable network introspection without raw shell access.
