#!/usr/bin/env bash

. ../template.sh

THING="TEMPLATE"

template "ex.tmpl" | tee ex.tmpl.render

