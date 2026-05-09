---
layout: single
github_url: "https://github.com/ipolyzos/cloudamqp-broker"
permalink: "cloudamqpbroker"
title: cloudamqp-broker
description: "Cloud Foundry service broker for provisioning and managing CloudAMQP-hosted RabbitMQ instances as on-demand platform services."
icon: cloudamqp-broker
date: 2017-06-25
weight: 20170625
tags: [component, amqp, rabbitmq, cloudfoundry, integration, cloudamqp]
showDate: true
showReadingTime: true
---
[cloudamqp-broker](https://github.com/ipolyzos/cloudamqp-broker) offers [RabbitMQ](https://www.rabbitmq.com/) message broker instances as an on-demand [Cloud Foundry](https://www.cloudfoundry.org/) service. It's important to note that the broker itself does not encompass a [RabbitMQ](https://www.rabbitmq.com/) server or cluster. Its purpose is to be deployed alongside a managed [CloudAMQP](https://www.cloudamqp.com/) account that provides [RabbitMQ](https://www.rabbitmq.com/) instance provisioning and maintenance through APIs.