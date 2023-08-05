# Custom commands for this project
server_run:
	cd trucks_server && dart bin/main.dart

server_generate:
	cd trucks_server && serverpod generate --watch

flutter_gen:
	cd trucks_flutter && flutter packages pub run build_runner build --delete-conflicting-outputs