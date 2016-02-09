#!/bin/bash

ctags -R --exclude=.git --exclude=log $1
ctags -R `bundle show rails`/../*
