test-ci:
	flutter pub get
	dart format --output=none --set-exit-if-changed .
	flutter analyze --fatal-infos
	flutter test

launch-emulator:
	flutter emulators --launch Pixel_3a_API_33_x86_64
