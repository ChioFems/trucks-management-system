# Custom commands for this project
# 1. Open docker and run the DB
#OR
#cd trucks_server && docker compose up --build --detach && dart bin/main.dart
#cd trucks_flutter && flutter run -d chrome
#cd utube link: https://www.youtube.com/watch?v=8sCxWBWhm2Y&t=41s
server_run:
	cd trucks_server && dart bin/main.dart

server_generate:
	cd trucks_server && serverpod generate --watch

flutter_gen:
	cd trucks_flutter && flutter packages pub run build_runner build --delete-conflicting-outputs