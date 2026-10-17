---
layout: single
title: service-control-mcp
description: "stdio MCP server providing safe, structured read-write access to system services on Linux and macOS."
date: 2026-04-19
weight: 20260419
tags: ["go", "mcp", "systemd", "launchd", "linux", "macos"]
private: false
showDate: true
showReadingTime: false
---
[service-control-mcp](https://github.com/ipolyzos/service-control-mcp) is a [Model Context Protocol](https://modelcontextprotocol.io/) stdio server written in Go. It wraps system service managers (systemd, launchd) in a safe, structured, read-write interface — enabling AI agents to inspect and manage services with validated operations, explicit confirmation for disruptive actions, and structured audit logging.
