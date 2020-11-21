(module-name javafx-app)
(module-extends javafx.application.Application)

(import (class java.lang System)
        (class javafx.application Application)
        (class javafx.scene.control Button)
        (class javafx.scene.layout StackPane)
        (class javafx.scene Scene)
        (class javafx.stage Stage))

(define (hello-world) (System:out:println "Hello World!"))

(define (start (stage ::Stage))
  (let* ((btn (Button text: "Say 'Hello World'" on-action: (lambda (e) (hello-world))))
         (root (StackPane)))
    (root:children:add btn)
    (set! stage:scene (Scene root 300 250))
    (stage:show)))

(Application:launch (module-class) @command-line-arguments)
