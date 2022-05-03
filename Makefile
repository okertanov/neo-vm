##
## Copyright (c) 2022 - Team11. All rights reserved.
##

all: build

build: restore
	dotnet publish -c Release -o ./dist

restore:
	dotnet restore

test:
	cd tests/neo-vm.Tests && dotnet test

clean:
	-@dotnet clean 2>&1 > /dev/null
	-@rm -rf ./dist
	-@rm -rf ./src/neo-vm/bin
	-@rm -rf ./src/neo-vm/obj
	-@rm -rf ./tests/neo-vm.Tests/bin
	-@rm -rf ./tests/neo-vm.Tests/obj

.PHONY: all build test restore clean

.SILENT: clean
