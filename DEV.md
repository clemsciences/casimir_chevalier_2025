# Developer instructions

## Run app
`flutter run -d chrome`

## Generate Json serialization classes

* `dart run build_runner build`


## Generate Github Pages

* `flutter build web --base-href "/casimir_chevalier_2025/"`
* `ghp-import -n -p -f build/web`
* Visit the website at [https://clemsciences.github.io/casimir_chevalier_2025/](https://clemsciences.github.io/casimir_chevalier_2025/).

