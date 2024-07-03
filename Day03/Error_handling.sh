#!/bin/bash

create_directory() {
	mkdir demo
}
if ! create_directory; then
	echo "The directory already exits"
	exit 1
fi

echo "The directory created"
