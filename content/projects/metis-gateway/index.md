---
layout: single
title: metis-gateway
description: "Experimental Go-based LLM API gateway with API-key authentication, provider routing, and streaming chat responses."
date: 2026-10-17
weight: 20261017
tags: ["go", "llm", "gateway", "api"]
private: true
showDate: true
showReadingTime: false
---
Metis Gateway is an experimental LLM API gateway written in Go. It exposes a text-only, OpenAI-style chat endpoint with API-key authentication, optional server-sent event streaming, and configurable OpenAI-compatible or Anthropic upstream providers. The project explores gateway boundaries, request validation, and consistent error handling; full SDK compatibility has not yet been verified.
