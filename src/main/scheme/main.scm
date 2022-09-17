(module-name javafx-from-kawa)
(module-compile-options main: #t)

(import (class com.gluonhq.richtextarea RichTextArea)
        (class java.lang System)
        (class javafx.application Platform)
        (class javafx.scene.layout BorderPane)
        (class javafx.scene Scene)
        (class javafx.stage Stage))

(define (start (stage ::Stage))
  (let* ((editor (RichTextArea))
         (root   (BorderPane editor)))
    (set! stage:scene (Scene root 800 600))
    (stage:show)))

(Platform:startup
 (lambda ()
   (let ((stage (Stage)))
     (start stage))))
