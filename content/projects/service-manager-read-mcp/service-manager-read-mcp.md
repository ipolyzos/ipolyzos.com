---
layout: page
title: service-manager-read-mcp
description: "stdio MCP server providing a safe, structured, read-only interface over host service managers for AI agents on Linux and macOS."
date: 2025-05-07
weight: 20250507
tags: ["go", "mcp", "systemd", "linux", "macos"]
private: true
showDate: true
showReadingTime: false
---
service-manager-read-mcp is a [Model Context Protocol](https://modelcontextprotocol.io/) stdio server written in Go. It wraps system service managers (systemd, launchd) in a safe, structured, read-only layer — enabling AI agents to inspect service state without direct shell access.
