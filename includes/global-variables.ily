\version "2.24.0"

%
% Scheme functions
%

#(define-markup-command (tempo-markup layout props tempo dur dots mm) 
                        (markup? integer? integer? markup?)
  "\tempo emulator, but with no parens around MM"
  ; tempo = the text of the tempo, so Allegro, Lento, etc.
  ; dur   = log 2 of the duration, so 0 = whole, 1 = half, 2 = quarter, ..."
  ; dots  = the number of dots after the duration
  ; mm    = the metronome mark, so 100 or 63-76
  ; example: \textMark \markup \tempo-markup Vivace #2 #1 63-76 c'1
  (interpret-markup layout props
    (let ((dura (ly:make-duration dur dots)))
      #{\markup {
        \hspace #1.5 \bold { #tempo \teeny "M.M." }
        \raise #0.4 \tiny \note { #dura } #UP
        \small { "=" #mm }
      }#})))

perdendosi =
  #(make-music 'DecrescendoEvent 'span-direction START 'span-type 'text
               'span-text "perdendosi")

%
% Redefine
%

staffUp   = \change Staff = "upper"
staffDown = \change Staff = "lower"

sd = \sustainOn
su = \sustainOff

hideNoteHead = \once {
  \omit Stem
  \omit Dots
  \omit Flag
  \hideNotes
  \override NoteColumn.ignore-collision = ##t
}

tupletOff = {
  \omit TupletNumber
  \omit TupletBracket
}
tupletOn = {
  \undo \omit TupletNumber
  \undo \omit TupletBracket
}

%
% Markup
%

dolce = \markup \large \italic dolce
dol = \markup \large \italic dol.
leggiero = \markup \large \italic leggiero
stretto = \markup \large \italic stretto
aTempo = \markup \large \italic "a tempo"
ritenuto = \markup \large \italic ritenuto
legato = \markup \large \italic legato
smorz = \markup \large \italic \whiteout \pad-markup #0.5 smorz.
sotoVoce = \markup \large \italic "soto voce"
espressivoMarkup = \markup \large \italic espressivo
ten = \markup \large \italic ten.
delicatissimo = \markup \large \italic delicatissimo
pocoRiten = \markup \large \italic "poco riten."
calando = \markup \large \italic \whiteout \pad-markup #0.5 calando
semprePiuPiano = 
  \markup \large \italic \whiteout \pad-markup #0.5 "sempre più piano"