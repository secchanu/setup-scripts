#!/bin/bash

select OS in `ls -d */`
do
  echo selected $OS
  break;
done

select SCRIPT in `ls $OS`
do
  echo selected $SCRIPT
  break;
done

source "$OS$SCRIPT"
