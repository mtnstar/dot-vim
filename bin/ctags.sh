#!/bin/bash

ctags -R --exclude=.git --exclude=log ./ `bundle show rails`/../*
