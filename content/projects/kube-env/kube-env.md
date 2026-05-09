---
layout: single
github_url: "https://github.com/ipolyzos/kube-env"
title: kube-env
description: "direnv-based workspace init script for Kubernetes that sets up kubectl context, environment variables, and tooling per project directory."
date: 2021-11-11
weight: 20211111
tags: ["kubernetes", "direnv", "shell", "k8s", "devops", "tooling"]
showDate: true
showReadingTime: false
---
[kube-env](https://github.com/ipolyzos/kube-env) is a [direnv](https://direnv.net/)-based workspace initialisation script for [Kubernetes](https://kubernetes.io/). It automatically sets up the correct kubectl context, environment variables, and project-specific tooling when you enter a directory — keeping multiple cluster contexts cleanly separated across projects.
