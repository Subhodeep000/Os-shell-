#!/bin/bash
a="Joy Mohunbagan";
if [ `echo $a | grep -c "Mohunbagan" ` -gt 0 ]
then
  echo "Success"
else
  echo "Fail";
fi