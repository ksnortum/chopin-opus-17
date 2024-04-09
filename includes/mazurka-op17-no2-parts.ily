%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 1) (3 . 1) (3 . 0))
                        ((0.25 . 0.5) (0 . 0.5) (0 . 0.5) (0 . 0))
                        ) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0.5) (0 . 0.5) (0 . 0.5) (0 . 0))
                        ) \etc
slurShapeC = \shape #'((0 . 0) (0 . 0) (0 . 1) (0 . 0)) \etc

moveClefA = \once \override Score.Clef.X-extent = #'(2 . 2)

%%% Music %%%

global = {
  \time 3/4
  \key e \minor
}

rightHandUpper = \relative {
  \partial 4 b'4( |
  a8. g16 fs4 e |
  d'2-> c4 |
  b8.[ a16 e8 fs] d4 |
  \slashedGrace { g8 } <g c>2->\arpeggio b4~ |
  b8[-.) r16 <b c>-.( <b cs>8-. <b d>]-. <b ds>4)-\slurShapeA (_~ |
  <b e>8[-.) r16 fs'( g8 c] b4->) |
  as8[-. r16 fs( as8) r16 a]( fs4) |
  a8[-. r16 fs( a8-.) r16 g]( e4) |
  
  \barNumberCheck 9
  b8[-. r16 <b c>-.( <b cs>8-. <b d>]-. <b ds>4) |
  e16( g'8-.) r16 fs8(\prall e c b) |
  as8[( cs <b ds> gs e) r16 <fs as>]( |
  \slashedGrace { <fs as>8 } <ds b'>2->) b4->-\slurShapeB ( |
  a8. g16 fs4 e |
  d'2-> c4 |
  b8.[ a16 e8 fs] d4 |
  \slashedGrace { g8 } <g c>2->\arpeggio b4~ |
  
  \barNumberCheck 17
  b8[-.) r16 <b c>-.( <b cs>8-. <b d>]-. <b ds>4)(_~ |
  <b e>8[-.) r16 fs'( g8 c] b4->) |
  as8[-. r16 fs( as8) r16 a]( fs4) |
  a8[-. r16 fs( a8-.) r16 g]( e4) |
  b8[-. r16 <b c>-.( <b cs>8-. <b d>]-. <b ds>4) |
  e16( g'8-.) r16 fs8(\prall e c b) |
  as8 fs \tuplet 3/2 4 { c'( as b) a( bf gs) } |
  \tuplet 3/2 { a8( g! fs) } e2->~ |
  \bar "||"
  
  \barNumberCheck 25
  \voiceOne e8(^\dolce d b4 a |
  \grace { b16 a } g2) e'4->(~ |
  e8 d b4 a |
  \grace { b16 a } g2) c4-> |
  c8.[( b16 d8 c] a4->) |
  c8.[( b16 d8 c] a4->) |
  gs8.[ fs16 a8. <ds, gs>16] e4->( |
  \oneVoice e'4-.) e-. e->(~ |
  
  \barNumberCheck 33
  \voiceOne e8 d b4 a |
  \grace { b16 a } g2) e'4->(~ |
  e8 d b4 a |
  \grace { b16 a } g2) c4-> |
  b8.[(a16 b8 a] d,4) |
  b'8.[->( a16 b8-> a b-> a] |
  g4) af2->~ |
  af2. |
  
  \barNumberCheck 41
  bf8.[( af16 bf8 af] d,4) |
  bf'8.[( af16 bf8 af bf af] |
  g4) a!2->~ |
  a2. |
  g4 af2->( |
  gs4) a!2->( |
  g!4) a2->(~ |
  a2 af4->) |
  
  \barNumberCheck 49
  \oneVoice <b, g'>4 <c af'> q |
  q4^\stretto <cs a'> q |
  q4 <cs as'> q |
  q4 <d b'> <ds b'> |
  \grace { b16-\slurShapeC ^(^\aTempo e } a!8. g16 fs4 e |
  d'2-> c4 |
  b8.[ a16 e8 fs] d4 |
  \acciaccatura { g8 } <g c>2^> b4~ |
  
  \barNumberCheck 57
  b8[-.) r16 <b c>-.( <b cs>8-. <b d>]-. <b ds>4)(_~ |
  <b e>8[-.) r16 fs'( g8 c] b4->) |
  as8[-. r16 fs( as8) r16 a]( fs4) |
  a8[-. r16 fs( a8-.) r16 g]( e4) |
  b8[-. r16 <b c>-.( <b cs>8-. <b d>]-. <b ds>4) |
  e16( g'8-.) r16 fs8(\prall e c b) |
  as8( b c as) \tuplet 3/2 { b fs a } |
  g16( g'8-.) r16 fs8(\prall e c b) |
  
  \barNumberCheck 65
  as8( b c as) \tuplet 3/2 { b fs a } |
  \ottava 1 g16( e''8) r16 \grace { c16 d } \tuplet 3/2 4 { c8( b g) e( c b) } |
  \ottava 0 as8 fs \tuplet 3/2 4 { c'(as b) a( bf gs) } |
  \tuplet 3/2 { a8( g! fs) } e2\fermata |
  \bar "|."
}

rightHandLower = \relative {
  \partial 4 s4 |
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  \voiceFour f'4 f f |
  e4 e e |
  f4 f f |
  e4 e e |
  f4 e2 |
  f4 e2 |
  ds4 s2 |
  s2. |
  
  \barNumberCheck 33
  f4 f f |
  e4 e e |
  f4 f f |
  e4 e e |
  c4 c b |
  c4 c c |
  b4 c cs |
  d4 cs c |
  
  \barNumberCheck 41
  c4 c b! |
  c4 c c |
  b!4 c cs |
  d4 cs c |
  \repeat unfold 2 {
    b4 c cs |
    d4 cs c |
  }
  
  \barNumberCheck 49
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \partial 4 s4 |
  s2. * 2 |
  \voiceThree <c' e>4 <b d> <a c> |
  s2. * 3 |
  r4 <as cs fs> <a c fs> |
  r4 <a ds> <g e'> |
  
  \barNumberCheck 9
  s2. * 6 |
  <c e>4 <b d> <a c> |
  s2. |
  
  \barNumberCheck 17
  s2. * 2 |
  r4 <as cs fs> <a c fs> |
  r4 <a ds> <g e'> |
  s2. * 4 |
  
  \barNumberCheck 25
  s2. * 5 |
  a2 c4 |
  b8.[ a16 \staffUp \stemDown cs8. \staffDown \stemUp b16] gs4( |
  \oneVoice e'-.) e-. e-> |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2. * 8 
  
  \barNumberCheck 49
  s2. * 6 |
  \voiceThree <c e>4 <b d> <a c> |
  s2. |
  
  \barNumberCheck 57
  s2. * 2 |
  r4 <as cs fs> <a c fs> |
  r4 <a ds> <g e'> |
  s2. * 2 |
}

leftHandLower = \relative {
  \partial 4 r4 |
  e,4 <g' b> q |
  a,4 <a' c e> q |
  \voiceTwo d,2. |
  \oneVoice g,4 <g' d'> r |
  b,4-. \clef treble <b' fs' a> q |
  \clef bass e,4-. \clef treble <b' g'> q |
  \clef bass \voiceTwo e,2. |
  e2. |
  
  \barNumberCheck 9
  \oneVoice b4-. \clef treble <b' fs' a> q |
  \clef bass e,4( <b' g'>) r |
  fs,4-. <fs' cs' e> q |
  b,4 <b' fs'> r |
  e,,4 <g' b> q |
  a,4 <a' c e> q |
  \voiceTwo d,2. |
  \oneVoice g,4 <g' d'> r |
  
  \barNumberCheck 17
  b,4-. \clef treble <b' fs' a> q |
  \clef bass e,4-. \clef treble <b' g'> q |
  \clef bass \voiceTwo e,2. |
  e2. |
  \oneVoice b4-. \clef treble <b' fs' a> q |
  \clef bass e,4( <b' g'>) r |
  b,4-. \clef treble <b' ds a'> q |
  \clef bass e,4( <g b g'>2) |
  
  \barNumberCheck 25
  g,4-. <g' d'> q~ |
  <c, g'>4 q <c_~ g'> |
  \slashedGrace { af'8 } <c, g'>4 q q |
  q4 q <c a'!>~ |
  << { \voiceThree a'2 c4 } \new Voice { \voiceTwo d,4 <a e'>2 } >> |
  \voiceTwo d4 <a e'>2 |
  b2 e4 |
  s2. |
  
  \barNumberCheck 33
  \oneVoice r4 g!4-. g->~ |
  <c, g'>4 q <c_~ g'> |
  \slashedGrace { af'8 } <c, g'>4 q q |
  q4 q q |
  <d fs>4 q <g, d' g>~ |
  <g d' fs>4 q q |
  <g d' g>4 <g ef'> <g e'> |
  <g f'>4 <g e'> <g ef'> |
  
  \barNumberCheck 41
  q4 q <g d'> |
  <g ef'>4 q q |
  \repeat unfold 3 {
    <g d'>4 <g ef'> <g e'> |
    <g f'> <g e'> <g ef'> |
  }
  
  \barNumberCheck 49
  <g d'>4 <g ef'> q |
  q4 <g e'> q |
  q4 <fs! e'> q |
  q4 <b es> <b fs'> |
  <e, e'!>4 <g' b> q |
  a,4 <a' c e> q |
  \voiceTwo d,2. |
  \oneVoice g,4 <g' d'> r |
  
  \barNumberCheck 57
  b,4-. \clef treble <b' fs' a> q |
  \clef bass e,4-. \clef treble <b' g'> q |
  \clef bass \voiceTwo e,2. |
  e2. |
  \oneVoice b4-. \clef treble <b' fs' a> q |
  \clef bass e,4( <b' g'>) r |
  e,4-. \clef treble <b' ds a'> q |
  \clef bass e,4( <b' g'>) r |
  
  \barNumberCheck 65
  e,4-. \clef treble <b' ds a' b> q |
  \moveClefA \clef bass e,4-. \clef treble <b' e g b> r |
  \moveClefA \clef bass e,4-. \clef treble <b' ds a' b> q |
  \moveClefA \clef bass e,2.*1/3(_\fermata \voiceThree <b' g'>2)\fermata |  
}

leftHand = {
  \global
  \clef bass
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \override TextScript.Y-offset = -0.5
  \partial 4 s4\f |
  s2. * 4 |
  s8.\sf s16\< s8 s\> s s\! |
  s2. * 3 |
  
  \barNumberCheck 9
  s8.\sf s16\< s8 s\> s s\! |
  s4 s4.-\tweak Y-offset 1 \> s8\! |
  s4 s2\f |
  s2. * 5 |
  
  \barNumberCheck 17
  s8.\sf s16\< s8 s\> s s\! |
  s2. * 3 |
  s8.\sf s16\< s8 s\> s s\! |
  s4 s4.-\tweak Y-offset 2 \> s8\! |
  s2.^\leggiero |
  s2. |
  
  \barNumberCheck 25
  s2.\p |
  s2. * 7 |
  
  \barNumberCheck 33
  s2. * 6 |
  s2\< s4\! |
  s2\> s4\! |
  
  \barNumberCheck 41
  s2. * 7 |
  s2.\pp |
  
  \barNumberCheck 49
  s8 s\< s2 |
  s2. * 2 |
  s2 s4\! |
  s2.\f |
  s2. * 3 |
  
  \barNumberCheck 57
  s8.\sf s16\< s8 s\> s s\! |
  s2. * 3 |
  s8.\sf s16\< s8 s\> s s\! |
  s4 s2\tweak Y-offset 1 \> |
  s2.\p |
  s2. |
  
  \barNumberCheck 65
  s2. |
  s8. s16\tweak Y-offset -6 ^\ritenuto s2 |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \textMark \markup \tempo-markup "Lento ma non troppo" #2 #0 144
  \tempo 4 = 144
  \partial 4 s4 |
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 2 |
  \tempo 4 = 132
  s2. |
  \tempo 4 = 120
  s2. |
  \tempo 4 = 144
  s2. * 4 |
  
  \barNumberCheck 17
  s2. * 6
  \tempo 4 = 132
  s2. |
  \tempo 4 = 120
  s2. |
  
  \barNumberCheck 25
  \tempo 4 = 144
  s2. * 7  |
  \tempo 4 = 126
  s2. |
  
  \barNumberCheck 33
  \tempo 4 = 144
  s2. * 8 |
  
  \barNumberCheck 41
  s2. * 8 |
  
  \barNumberCheck 49
  s2. |
  \tempo 4 = 152
  s2. |
  \tempo 4 = 160
  s2. |
  \tempo 4 = 168
  s2. |
  \tempo 4 = 144
  s2. * 4
  
  \barNumberCheck 57
  s2. * 8 |
  
  \barNumberCheck 65
  s2. |
  \tempo 4 = 132
  s2. |
  \tempo 4 = 120
  s2. |
  \tempo 4 = 112
  s2. |
}

pedal = {
  \partial 4 s4 |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2. |
  s2\sd s4\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2. * 2 |
  
  \barNumberCheck 9
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8. s16\su |
  s2\sd s4\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2. |
  s2\sd s4\su |
  
  \barNumberCheck 17
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2. * 2 |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8. s16\su |
  s4\sd s2\su |
  
  \barNumberCheck 25
  s2\sd s8 s\su |
  s2. * 7 |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2. * 8 |
  
  \barNumberCheck 49
  s2. * 8 |
  
  \barNumberCheck 57
  s2. * 6 |
  s2\sd s8. s16\su |
  s2\sd s8. s16\su |
  
  \barNumberCheck 65
  \repeat unfold 3 { s2\sd s8. s16\su | }
  s2.\sd |
}

forceBreaks = {
  \partial 4 s4
  s2. * 5 \break\noPageBreak
  s2. * 5 \break\noPageBreak
  s2. * 6 \break\noPageBreak
  s2. * 5 \break\noPageBreak
  s2. * 6 \break\noPageBreak
  \grace { s8 } s2. * 6 \pageBreak
  
  \grace { s8 } s2. * 6 \break\noPageBreak
  s2. * 6 \break\noPageBreak
  s2. * 7 \break\noPageBreak
  \grace { s8 } s2. * 6 \break\noPageBreak
  s2. * 5 \break\noPageBreak
}

mazurkaTwoNotes =
\score {
  \header {
    title = "Mazurka Two"
    composer = "Frédéric Chopin"
    opus = "Opus 17, No. 2"
  }
  \keepWithTag layout  
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing.basic-distance = 10
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

mazurkaTwoMidi =
\book {
  \bookOutputName "mazurka-op17-no2"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
