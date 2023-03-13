#!/bin/bash

tb_name='Books'

# Define the JSON code for the Book table
tb_json_location='path...'

# Create the Book table
awslocal dynamodb create-table --cli-input-json file:"$tb_json_location"

# Wait for the table to be created
awslocal dynamodb wait table-exists --table-name "$tb_name"

# Define the JSON code for the example book
item_json_location='path...'

# Add the example book to the Books table
aws dynamodb put-item --table-name "$tb_name" --item "$item_json_location"
