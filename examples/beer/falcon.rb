#!/usr/bin/env falcon-host
# frozen_string_literal: true

load :rack, :self_signed_tls, :supervisor, :supervised

supervisor

rack 'beer.localhost', :self_signed_tls, :supervised
