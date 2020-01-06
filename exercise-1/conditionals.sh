#!/bin/#!/usr/bin/env bash

if [ -e /etc/shadow ]
then
  echo "Shadow passwords are enabed"
fi

if [ -w /etc/shadow ]
then
  echo "You have permission to edit /etc/shadow"
else
  echo "You DO NOT have permission to edit /etc/shadow"
fi
