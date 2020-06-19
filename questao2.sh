#!/bin/bash

grep /Aug/ access.log | grep "12:\|13:" | wc -l
