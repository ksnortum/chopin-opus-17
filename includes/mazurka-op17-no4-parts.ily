%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . 0.5) (0 . -1.5) (0 . -2) (0 . 0)) \etc
slurShapeB = \shape #'((0.5 . 1.5) (0.75 . 1) (0 . 0) (0 . 0)) \etc
slurShapeC = \shape #'((0 . 0) (0 . 1.5) (0 . 0.5) (0 . 0)) \etc
slurShapeD = \shape #'((0 . 0) (0 . -1) (0 . -1) (0 . 0)) \etc
slurShapeE = \shape #'((0 . 0) (0 . 0.5) (0 . 2) (0.25 . 2.5)) \etc
slurShapeF = \shape #'((0 . 0) (0 . 0.5) (0 . 1) (0 . 1.5)) \etc
slurShapeG = \shape #'(
                        ((0 . 0) (0 . 0) (0 . -2) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeH = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.5 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeI = \shape #'((0 . 1) (0 . 1) (0 . 0) (0 . 0)) \etc
slurShapeJ = \shape #'((-0.5 . 0.5) (0 . 0.5) (0 . 0) (0 . 0)) \etc
slurShapeK = \shape #'((0 . -1) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeL = \shape #'((-0.5 . 0.75) (0 . 0.5) (0 . 0) (0 . 0)) \etc

moveTupletNumberA = \tweak TupletNumber.Y-offset 3 \etc
moveRestA = \tweak NoteColumn.X-offset 0.5 \etc
moveTextA = \tweak X-offset 1 \etc

%%% Music %%%

global = {
  \time 3/4
  \key a \minor
}

rightHandUpper = \relative {
  R2. * 3 |
  \moveTupletNumberA \tuplet 3/2 { d'8( e d) } \moveRestA r4 r |
  \bar "||"
  b'8.(^\espressivoMarkup c16 d4 a |
  \slashedGrace { a8 } c2) b8( c |
  d8 e f4 g8.) d16( |
  e2.->)^\ten |
  
  \barNumberCheck 9
  fs4( ds2) |
  f!4( d!2)
  e16( b8.~ b2) |
  c16( gs8.~ gs2) |
  \tuplet 3/2 4 { b8( c b  a b c  e8. d16 a8 } |
  \slashedGrace { a8 } c2->) b8-\slurShapeA ( c |
  \voiceOne \magnifyMusic #2/3 { \scaleDurations 6/15 {
    d8[ e d cs d ds e f fs g gs b a g f]
  } }
  \oneVoice e2.->)-\moveTextA ^\ten |
  
  \barNumberCheck 17
  r4 \acciaccatura { fs8 } ds2 |
  \tuplet 6/4 { e16( f! af g fs f } d!2->) |
  \acciaccatura { gs8 } c8[-. r16 b16\prall]( gs!8-.) r gs,4( |
  a2.) |
  b8.( c16 d4 a |
  \slashedGrace { a8 } c2) b8-\slurShapeC ( c |
  d8\prall cs \tuplet 3/2 { d-. e-. f-. } g8[-.) r16 d]( |
  e2.->)^\ten |
  
  \barNumberCheck 25
  fs4( ds2) |
  f!4( d!2)
  e16( b8.~ b2) |
  c16( gs8.~ gs4..) b16( |
  \tuplet 6/4 { b16 b b b c b } \tuplet 3/2 4 { a8 b c  e d a } |
  \slashedGrace { a8 } c2->) b8-\slurShapeD ( c |
  \voiceOne \magnifyMusic #2/3 { \scaleDurations 6/15 {
    d8[ e d cs d b' f a e g d f a, g d']
  } }
  \oneVoice e2.->)-\moveTextA ^\ten |
  
  \barNumberCheck 33
  r4 \acciaccatura { fs8 } ds2 |
  \tuplet 6/4 { e16( f! af g fs f } d!2->) |
  \acciaccatura { gs8 } c8[-. r16 b16]( gs!8-.) r gs,4( |
  a2) e4->( |
  e'8-.) r ds( b d b |
  \tuplet 3/2 { d8 e d } c[-.) r16 a']( a,4->) |
  \tuplet 3/2 { e'8( f e } ds[) r16 b( d8 b] |
  \tuplet 3/2 { d8 e d } cs[-.) r16 c]( ds,4->) |
  
  \barNumberCheck 41
  \acciaccatura { e8 } e'4 ds16->( b8) r16 d16->( b8) r16 |
  \tuplet 3/2 { d8( e d } c8[-.) r16 <e c'>]( a,4->) |
  \voiceOne \tuplet 3/2 { bf8( e d) } b4-.( b4-.) |
  \tuplet 3/2 { bf8( e d) } b2~ |
  b8.(^\aTempo c16 d4. a8 |
  \oneVoice \slashedGrace { a8 } c2) b8-\slurShapeC ( c |
  d8.\prall cs16 \tuplet 3/2 { d8-. e-. f-. } g8[-.) r16 d]( |
  e2.->)^\ten |
  
  \barNumberCheck 49
  fs4( ds2) |
  f!4( d!2)
  e16( b8.~ b2) |
  c16( gs8.~ gs4..) b16( |
  b16 b c b \tuplet 3/2 4 { a8 b c  e8. d16 a8 } |
  \slashedGrace { a8 } c2->) \tuplet 3/2 { b8-\slurShapeG ( c cs } |
  \voiceOne \magnifyMusic #2/3 { \scaleDurations 6/15 {
    d8[ e d cs d ds e f fs g gs b a g f]
  } }
  \oneVoice e2.->)^\ten |
  
  \barNumberCheck 57
  r4 \acciaccatura { fs8 } ds2 |
  \tuplet 6/4 { e16( f! af g fs f } d!2->) |
  \acciaccatura { gs8 } c8[-. r16 b16](\prall gs!8-.) r gs,4( |
  \voiceOne a2.)^\ten |
  \bar "||"
  \key a \major 
  cs8(^\dolce b a4 fs |
  \grace { gs16 fs } e2.*2/3 s8 \hideNoteHead b) |
  cs'8-\slurShapeH ( b a4 fs |
  \grace { gs16 fs } e2.*2/3 s8 \hideNoteHead b) |
  
  \barNumberCheck 65
  e8( fs gs4 a |
  b8 cs d4 ds |
  e8 d! b4 cs |
  a8 cs) b2-> |
  cs8( b a4 fs |
  \grace { gs16 fs } e2.*2/3 s8 \hideNoteHead b) |
  cs'8( b a4 fs |
  \grace { gs16 fs } e2.*2/3 s8 \hideNoteHead b) |
  
  \barNumberCheck 73
  e8( fs gs4 a |
  b8 bs cs4.-> fs8 |
  e8 b! cs4.-> fs8 |
  e8 ds d4.-> bs8 |
  % like 61
  cs8 b! a4 fs |
  \grace { gs16 fs } e2.*2/3 s8 \hideNoteHead b) |
  cs'8( b a4 fs |
  \grace { gs16 fs } e2.*2/3 s8 \hideNoteHead b) |
  
  \barNumberCheck 81
  e8( fs gs4 a |
  b8 cs d4 ds |
  e8 d! b4 cs8 b |
  a8 cs) b2-> |
  % like 69
  cs8( b a4 fs |
  \grace { gs16 fs } e2.*2/3 s8 \hideNoteHead b) |
  cs'8( b a4 fs |
  \grace { gs16 fs } e2.*2/3 s8 \hideNoteHead b) |
  
  \barNumberCheck 89
  e8( fs gs4 a |
  b8 cs d4 e |
  f8[ r16 e]) \slashedGrace { g8 } f4. e8 |
  \slashedGrace { g8 } f8. e16 f4. b,8-\slurShapeI (_~ |
  \bar "||"
  \key a \minor
  \oneVoice b8. c16 d4 a |
  \slashedGrace { a8 } c2) b8( c |
  \grace { d16 e } d8 cs \tuplet 3/2 { d-. e-. f-. } g[-.) r16 d]( |
  e2.)^\ten |
  
  \barNumberCheck 97
  fs4( ds2) |
  f!4( d!2)
  e16( b8.~ b2) |
  c16( gs8.~ gs4..) b16( |
  \omit TupletBracket
  \tuplet 3/2 4 { b8 c b  a b c  \slashedGrace { c } e8. d16 a8 } |
  \slashedGrace { a8 } c2->) \tuplet 3/2 { b8( c cs } |
  \omit TupletNumber
  \tuplet 3/2 { d8 c'! b  c, b a'  g a, g } |
  e'2.->)^\ten |
  
  \barNumberCheck 105
  r4 \acciaccatura { fs8 } ds2 |
  \tupletOn
  \tuplet 6/4 { e16( f! af g fs f } d2->) |
  \slashedGrace { gs8 } <c e>8[-. r16 <b e>]-. <gs e'>8-. r gs,4( |
  a2) e'4->( |
  e8[) r16 ds]( a8-.) r ds,4( |
  <a' ds>2.->)( |
  ds8[) r16 d]( gs,8-.) r d!4( |
  <gs d'>2.->)( |
  
  \barNumberCheck 113
  d'8[) r16 cs]( g!8-.) r cs,4( |
  <fs c'!>2.->) |
  \voiceOne b8( c d4) a( |
  \oneVoice <e c'>2) e'4->( |
  e8[) r16 ds]( a8-.) r \acciaccatura { \slurUp a'8 } ds,,4( |
  <a' ds>2.->)( |
  ds8[) r16 d]( gs,8-.) r \acciaccatura { \slurUp a'8 } d,,!4( |
  <gs d'>2.->)( |
  
  \barNumberCheck 121
  d'8[) r16 cs]( g!8-.) r \acciaccatura { \slurUp a'8 } cs,,4( |
  <fs c'!>2.->) |
  \voiceOne b8( c d4) a( |
  \oneVoice <e c'>2.) |
  r4 r a( |
  c2) r4 |
  r4 r c( |
  a2.)~ |
  
  \barNumberCheck 129
  a2.~ |
  a2 r4 |
  R2. |
  \moveTupletNumberA \tuplet 3/2 { d,8_( e d) } \moveRestA r4 r\fermata |
  \bar "|."
}

rightHandLower = \relative {
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2. * 2 |
  \voiceFour \tuplet 3/2 { bf'8*2 a8 } gs4 gs |
  \tuplet 3/2 { bf8*2 a8 } gs2~ |
  gs2~ gs8 a |
  s2. * 3 |
  
  \barNumberCheck 49
  s2. * 8 |
  
  \barNumberCheck 57
  s2. * 3 |
  r4 cs, cs |
  \key a \major
  cs4 cs cs |
  d8 d d4 cs8 b |
  cs4 cs cs |
  \tuplet 3/2 { d8 d d } d4 cs8 b |
  
  \barNumberCheck 65
  d4 <d e>4 q |
  <d e gs>4 q <d! e gs> |
  <d e gs>4 q q |
  cs8 r <b e gs>4 <d fs> |
  <cs e>4 cs cs |
  d8 d d4 cs8 b |
  cs4 cs cs |
  \tuplet 3/2 { d8 d d } d4 cs8 b |
  
  \barNumberCheck 73
  d4 <d e> q |
  <d e gs>4 <cs a'> q8 fs |
  <e gs>4 <cs a'> q8 fs |
  <d e gs>4 q q |
  <cs a'>4 cs cs |
  d8 d d4 cs8 b |
  cs4 cs cs |
  \tuplet 3/2 { d8 d d } d4 cs8 b |
  
  \barNumberCheck 81
  d4 <d e>4 q |
  <d e gs>4 q <d! e gs> |
  <d e gs>4 q q |
  cs8 r <b e gs>4. <d fs>8 |
  <cs e>4 cs cs |
  d8 d d4 cs8 b |
  cs4 cs cs |
  \tuplet 3/2 { d8 d d } d4 cs8 b |
  
  \barNumberCheck 89
  d4 <d e> q |
  <d e gs>4 q q |
  <d gs>8 s8 s2 |
  s2. |
  \key a \minor
  s2. * 4 |
  
  \barNumberCheck 97
  s2. * 8 |
  
  \barNumberCheck 105
  s2. * 8 |
  
  \barNumberCheck 113
  s2. * 2 |
  f!4 f f |
  s2. * 5 |
  
  \barNumberCheck 121
  s2. * 2 |
  f!4 f f |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHand = \relative {
  \global
  \clef bass
  r4 <a b f'>_\sotoVoce ( <a c f> |
  <a d f>4 <a b f'> <a c f> |
  <a d f>4 <a b f'> <a c f>)
  r4 q2~ |
  <a d f>4 q q |
  <a c f>4 q q |
  <g c f> <g b f'> q |
  <g b e>4 q q |
  
  \barNumberCheck 9
  <fs as e'>4 <fs as ds> q |
  <f! a! ef'>4 <f a d!> q |
  <e! gs d'>4 q q |
  <e a d>4 <e b' d> q |
  a,4 <a' d f> q |
  <a c f>4 q q |
  <g c f>4 <g b f'> q |
  <g b e>4 q q |
  
  \barNumberCheck 17
  <fs as e'>4 <fs as ds> q |
  <f! a! ef'>4 <f a d!> q |
  <e, e'>4 <e' b' d> q |
  a,4-\slurShapeB ( <e' a c>) <a c e> |
  <a d f>4 q q |
  <a c f>4 q q |
  <g c f> <g b f'> q |
  <g b e>4 q q |
  
  \barNumberCheck 25
  <fs as e'>4 <fs as ds> q |
  <f! a! ef'>4 <f a d!> q |
  <e! gs d'>4 q q |
  <e a d>4 <e b' d> q |
  a,4 <a' d f> q |
  <a c f>4 q <af c f> |
  <g c f>4 <g b f'> q |
  <g b e>4 q q |
  
  \barNumberCheck 33
  <fs as e'>4 <fs as ds> q |
  <f! a! ef'>4 <f a d!> q |
  <e, e'>4 <e' b' d> q |
  a,4-\slurShapeB ( <e' c'>) r |
  <b gs'>4-\slurShapeE ( e,) e-. |
  <c' a'>4-\slurShapeE ( e,) e-. |
  <b' gs'>4-\slurShapeE ( e,) e-. |
  <a fs'>4( e) e-. |
  
  \barNumberCheck 41
  <b' gs'>4-\slurShapeF ( e,) e-. |
  <c' a'>4-\slurShapeE ( e,) e-. |
  \clef treble \tuplet 3/2 { g''8( fs f) } e4-.( e-.) |
  \tuplet 3/2 { g8( fs f) } e2 |
  \clef bass <a, d f>4 q q |
  <a c f>4 q q |
  <g c f> <g b f'> q |
  <g b e>4 q q |
  
  \barNumberCheck 49
  <fs as e'>4 <fs as ds> q |
  <f! a! ef'>4 <f a d!> q |
  <e! gs d'>4 q q |
  <e a d>4 <e b' d> q |
  a,4 <a' d f> q |
  <a c f>4 q <af c f> |
  q4 <b g f'> q |
  <g b e>4 q q |
  
  \barNumberCheck 57
  <fs as e'>4 <fs as ds> q |
  <f! a! ef'>4 <f a d!> q |
  e,4 <e' b' d> q |
  a,2.*1/3 <e' a>4( q |
  \key a \major
  <a, e'>4 q q) |
  q4 q q |
  q4 q q |
  q4 q q |
  
  \barNumberCheck 65
  <a e' b'>4 q q |
  q4 q q |
  q4 q q |
  <a e' a>8-. r <e e'>2 |
  <a e'>4 q q |
  q4 q q |
  q4 q q |
  q4 q q |
  
  \barNumberCheck 73
  <a e' b'>4 q q |
  q4 <a e' a> q |
  <a e' b'>4 <a e'> q |
  <a e' b'>4 q q |
  <a e'>4 q q |
  q4 q q |
  q4 q q |
  q4 q q |
  
  \barNumberCheck 81
  <a e' b'>4 q q |
  q4 q q |
  q4 q q |
  <a e' a>8-. r <e e'>2 |
  <a e'>4 q q |
  q4 q q |
  q4 q q |
  q4 q q |
  
  \barNumberCheck 89
  <a e' b'>4 q q |
  q4 q q |
  q8 r16 \staffUp \voiceTwo e'' \slashedGrace { g8 } f4. e8 |
  \slashedGrace { g8 } f8. e16 \staffDown f2.*2/3^(^\ten |
  \key a \minor
  <<
    { \voiceThree s4 f2.*2/3)( | s4 f2.*2/3)( | s4 f2) | }
    \new Voice { \voiceTwo <a, d>4 q q | <a c>4 q q | <g c>4 <g b> q | }
  >> 
  \oneVoice <g b e>4 q q |
  
  \barNumberCheck 97
  <fs as e'>4 <fs as ds> q |
  <f! a! ef'>4 <f a d!> q |
  <e! gs d'>4 q q |
  <e a d>4 <e b' d> q |
  a,4 <a' d f> q |
  <a c f>4 q <af c f> |
  <g c f>4 <b g f'> q |
  <g b e>4 q q |
  
  \barNumberCheck 105
  <fs as e'>4 <fs as ds> q |
  <f! a! ef'>4 <f a d!> q |
  e,4 <e' b' d> q |
  a,2.*1/3( <e' c'>4 q) |
  a,2.*1/3( <fs' c'>4 q) |
  a,2.*1/3( <f'! c'>4 q) |
  a,2.*1/3( <f' b>4 q) |
  a,2.*1/3-\slurShapeJ ( <f' bf>4 q) |
  
  \barNumberCheck 113
  a,2.*1/3-\slurShapeK ( <e' bf'>4 q) |
  a,2.*1/3( <ef' a>4 q) |
  a,2.*1/3-\slurShapeL ( <d a'>4 q) |
  a2.*1/3( <e' c'>4 q) |
  a,2.*1/3( <fs' c'>4 q) |
  a,2.*1/3( <f'! c'>4 q) |
  a,2.*1/3( <f' b>4 q) |
  a,2.*1/3-\slurShapeJ ( <f' bf>4 q) |
  
  \barNumberCheck 121
  a,2.*1/3( <e' bf'>4 q) |
  a,2.*1/3( <ef' a>4 q) |
  a,2.*1/3-\slurShapeL ( <d a'>4 q) |
  a2.*1/3( <e' c'>4 q) |
  a,2*1/2( <e' c'>4) r |
  r4 q( a,) |
  <e' c'>4( a,) r |
  R2. |
  
  \barNumberCheck 129
  r4 <a' b f'>-.(_\perdendosi <a c f>-. |
  <a d f>4-. <a b f'>-. <a c f>-. |
  <a d f>4-. <a b f'>-. <a c f>-.)\! |
  r4 q2\fermata |
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \override TextScript.Y-offset = -0.5
  \tag layout { s2. | } 
  \tag midi   { s2.\pp | }
  s2. * 7 |
  
  \barNumberCheck 9
  s2.-\tweak Y-offset 1 \p |
  s2. |
  s16 s8.\> s2\! |
  s16 s8.\> s2\! |
  s2. * 2 |
  s2.\tweak Y-offset 1 ^\delicatissimo |
  s2. |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 2 |
  s16 s8.\> s2\! |
  s16 s8.\> s2\! |
  s2. * 4 |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2. * 2 |
  s2.^\pocoRiten |
  s2. * 5 |
  
  \barNumberCheck 49
  s2. * 2 |
  s16 s8.\> s2\! |
  s16 s8.\> s2\! |
  s2. * 4 |
  
  \barNumberCheck 57
  s2. * 4 |
  % key a major
  s2.-\tweak X-offset -2 \p 
  s2. * 3 |
  
  \barNumberCheck 65
  s2.\< |
  s2 s4\! |
  s2\> s4\! |
  s2. * 5 |
  
  \barNumberCheck 73
  s2.\< |
  s8 s\! s2 |
  s2. * 6 |
  
  \barNumberCheck 81
  s2.\< |
  s2 s4\! |
  s2 s8\> s\! |
  s2. * 5 |
  
  \barNumberCheck 89
  s2.\< |
  s2 s4\! |
  s8. s16\ff s4.\> s8\! |
  s8.\> s16\! s4.-\tweak Y-offset 3 \> s8\! |
  % key a minor
  s2.-\tweak Y-offset 1 \p |
  s2. * 3 |
  
  \barNumberCheck 97
  s2. * 8 |
  
  \barNumberCheck 105
  s2. * 8 |
  
  \barNumberCheck 113
  s2. * 2 |
  s4\> s\< s\! |
  s2. |
  s2.^\sotoVoce |
  s2. * 3 |
  
  \barNumberCheck 121
  s2. * 2 |
  s2.^\semprePiuPiano |
  s2. * 3 |
  s2.^\calando |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \textMark \markup \tempo-markup "Lento ma non troppo" #2 #0 152
  \tempo 4 = 100 % 152 seems way too fast
  s2. * 3 |
  \tempo 4 = 92
  s2. |
  \tempo 4 = 108
  s2. * 4 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2. * 4 |
  \tempo 4 = 116
  s2. * 4 |
  
  \barNumberCheck 41
  s2. * 2 |
  \tempo 4 = 108
  s2. |
  \tempo 4 = 100
  s2. |
  \tempo 4 = 108
  s2. * 4 |
  
  \barNumberCheck 49
  s2. * 8 |
  
  \barNumberCheck 57
  s2. * 3 |
  \tempo 4 = 126
  s2. * 5 |
  
  \barNumberCheck 65
  s2. * 8 |
  
  \barNumberCheck 73
  s2. * 8 |
  
  \barNumberCheck 81
  s2. * 8 |
  
  \barNumberCheck 89
  s2. * 2 |
  \tempo 4 = 108
  s2. * 6 |
  
  \barNumberCheck 97
  s2. * 8 |
  
  \barNumberCheck 105
  s2. * 3 |
  \tempo 4= 126
  s2. * 5 |
  
  \barNumberCheck 113
  s2. * 4 |
  \tempo 4 = 116
  s2. * 4 |
  
  \barNumberCheck 121
  s2. * 2 |
  \tempo 4 = 108
  s2. * 6 |
  
  \barNumberCheck 129
  \tempo 4 = 100 
  s2. * 3 |
  \tempo 4 = 92
  s4 \tempo 4 = 60 s2 |
}

pedal = {
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 2 |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2. * 4 |
  
  \barNumberCheck 25
  s2. * 4 |
  s2\sd s8. s16\su |
  s2. * 3 |
  
  \barNumberCheck 33
  s2. * 2 |
  s2\sd s8 s\su |
  s2\sd s4\su |
  \repeat unfold 4 { s4.\sd s\su | } 
  
  \barNumberCheck 41
  s4.\sd s\su |
  s4.\sd s\su |
  s2. * 6 |
  
  \barNumberCheck 49
  s2. * 8 |
  
  \barNumberCheck 57
  s2. * 2 |
  s2\sd s16 s8.\su |
  s2\sd s8 s\su |
  % key a major
  s2. * 4 |
  
  \barNumberCheck 65
  s2. * 8 |
  
  \barNumberCheck 73
  s2. * 8 |
  
  \barNumberCheck 81
  s2. * 8 |
  
  \barNumberCheck 89
  s2. * 4 |
  % key a minor
  s2. * 4 |
  
  \barNumberCheck 97
  s2. * 4 |
  s2\sd s8. s16\su |
  s2. * 3 |
  
  \barNumberCheck 105
  s2. * 2 |
  s2\sd s8 s\su |
  s2. * 5 |
  
  \barNumberCheck 113
  s2. * 8 |
  
  \barNumberCheck 121
  s2. * 3 |
  s2.\sd |
  s2. * 3 |
  s2 s4\su |
  
  \barNumberCheck 129
}

forceBreaks = {
  s2. * 9 \break %
  s2. * 8 \break %
  s2. * 8 \break %
  s2. * 8 \break %
  s2. * 7 \pageBreak %
  
  \grace { s8 } s2. * 8 \break %
  s2. * 7 \break %
  s2. * 8 \break %
  \grace { s8 } s2. * 9 \break %
  s2. * 8 \break %
  s2. * 8 \pageBreak %
  
  s2. * 8 \break %
  s2. * 8 \break %
  s2. * 7 \break % 
  s2. * 9 \break %
}

mazurkaFourNotes =
\score {
  \header {
    title = "Mazurka Four"
    composer = "Frédéric Chopin"
    opus = "Opus 17, No. 4"
  }
  \keepWithTag layout  
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing.basic-distance = 12
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

mazurkaFourMidi =
\book {
  \bookOutputName "mazurka-op17-no4"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
