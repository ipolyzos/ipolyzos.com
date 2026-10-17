---
layout: single
title: Metis Gateway
description: "An experimental Go-based gateway for text-only language-model chat APIs with authentication and provider adapters."
date: 2026-10-17
weight: 20261017
tags: ["go", "llm", "api-gateway", "streaming"]
private: true
showDate: true
showReadingTime: false
---
Metis Gateway is an experimental Go-based API gateway for language-model chat requests. It provides a focused OpenAI-style chat endpoint, API-key authentication, and adapters for OpenAI-compatible and Anthropic upstream services.

The current implementation supports text-only requests and optional server-sent-event streaming with a single upstream configured at startup. Tool calls, multimodal requests, and full SDK compatibility are outside its currently verified scope.
