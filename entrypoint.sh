#!/bin/sh -l
aws configure set aws_access_key_id "$1"  AWS_SECRET_ACCESS_KEY "$2"  AWS_DEFAULT_REGION "$3"
chalice "$4"
