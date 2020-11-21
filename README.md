# kawa-javafx-graalvm

Let's build a JavaFX app with Kawa Scheme!

This is a work-in-progress to integrate the [GluonHQ work for JavaFX](https://gluonhq.com/developers/samples/) and make it work using Kawa Scheme.

### What works

To build,
```
mvn compile
```

To run,
```
mvn javafx:run
```

This is a standalone solution, and does not require setting `JAVAFX_HOME` using environment variables.

### What doesn't work

Native image cannot be built:
```
mvn client:build
```
