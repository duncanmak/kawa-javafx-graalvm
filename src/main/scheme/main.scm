(module-name javafx-from-kawa)
(module-compile-options main: #t)

(import (class java.lang System)
        (class javafx.application Platform)
        (class javafx.scene.control Button)
        (class javafx.scene.layout StackPane)
        (class javafx.scene Scene)
        (class javafx.stage Stage)

        (class org.fxmisc.flowless VirtualizedScrollPane)
        (class org.fxmisc.richtext CodeArea LineNumberFactory)
        (class org.fxmisc.richtext.model StyleSpans StyleSpansBuilder)
        )

(define (start (stage ::Stage))
  (let* ((area (CodeArea))
         (root (StackPane (VirtualizedScrollPane area))))
    (set! stage:scene (Scene root 600 400))
    (set! stage:title "Editor")
    (stage:show)))

(Platform:startup
 (lambda ()
   (let ((stage (Stage)))
     (start stage))))

