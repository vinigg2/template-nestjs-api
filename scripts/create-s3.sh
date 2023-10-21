#!/bin/sh

aws s3api create-bucket --endpoint-url ${AWS_ENDPOINT} --bucket local-bucket