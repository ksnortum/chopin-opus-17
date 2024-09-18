%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 0) (2 . 0) (2 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeB = \shape #'((0 . -1) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeC = \shape #'((0 . 1) (0 . 1) (0 . 1) (0 . 1)) \etc
slurShapeD = \shape #'((0 . 2) (0 . 0.5) (0 . 0.5) (0 . 2)) \etc
slurShapeE = \shape #'((0 . 0.5) (0 . 0) (0 . 0) (0 . 2)) \etc
slurShapeF = \shape #'((0 . 1) (0 . 1) (0 . 0.5) (0 . 0)) \etc
slurShapeG = \shape #'((0 . 2) (0 . 1.75) (0 . 1.5) (0 . 2)) \etc
slurShapeH = \shape #'((0 . 0) (0 . 0.5) (0 . 2) (0 . 3)) \etc
slurShapeI = \shape #'((0 . 0.5) (0 . 0.5) (0 . 0) (0 . 0)) \etc
slurShapeJ = \shape #'((0 . 1.5) (0 . 0) (0 . -0.5) (0 . 0)) \etc
slurShapeK = \shape #'((0 . -1.5) (0 . 0) (0 . 0) (0 . 0)) \etc

moveHairpinA = \tweak extra-offset #'(0 . -3) \etc

%%% Music %%%

global = {
  \time 3/4
  \key bf \major
  \set Score.fineBarType = "||"
}

rightHandUpper = \relative {
  \repeat segno 2 {
    \partial 4 f'4( |
    <d' f>4. <cs e>8 \grace { <d f>16[ g] } <d f>8 <cs e> |
    <d f>8[-.) r16 bf]( <g ef'!>4 <f d'>) |
    <ef c'!>4.( <g ef'>8 <f d'> <ef c'> |
    <f d'>8[-.) r16 f]( <d bf'>4-.) <d f d'>-> |
    <d' f>8[ r16 q] q4 \appoggiatura { q16[ g] } <d f>8->( <cs e> |
    <d f>8[-.) r16 bf]( <g ef'!>4-.) <f bf d>-> |
    \voiceOne c'4.-> ef8( d c |
    \oneVoice <f, d'>[-.) r16 f]( <d f bf>4-. <d f d'>-.) |
    \bar "||"
    
    \barNumberCheck 9
    c4-. <bf' e bf'>4.-> <bf e a>8 |
    <bf e fs>8.( <bf e g>16 <bf e a>4-.) <bf e g>-. |
    c,4-. <bf' e a>4.-> <bf e g>8( |
    <a f'>[-.) r16 <bf d>]( <a c>4-. <a f'>-.) |
    c,4-. <bf' e bf'>4.-> <bf e a>8 |
    <bf e fs>8.( <bf e g>16 <bf e a>4 <bf e g> |
    <ef! c'>8[-.) r16 <d f!>]( <df bf'>4 <c ef> |
    <c af'>8[-.) r16 <b d!>]-\slurShapeA ( <bf g'>4 <a! c> |
    
    \barNumberCheck 17
    \voiceOne <d f>4.)-\slurShapeB ( g8[ \grace { f16 g } <d f>8 <cs e>] |
    <d f>8[-.) s16 bf]-\slurShapeC ( \oneVoice <gf bf ef!>4 <f bf d>) |
    \voiceOne c'4.-\slurShapeD ( ef8 d c |
    \oneVoice <f, d'>8[-.) r16 f]-\slurShapeE ^( <d f bf>4 <d f d'> |
    \voiceOne f'4. g8 f\prall e |
    f8[) s16 b,]-\slurShapeF ( \oneVoice <b ef!>4-. <b d>-.) |
    \voiceOne c4.->-\slurShapeG ( ef8-\moveHairpinA ^\> d c\! |
    \oneVoice <bf d>8[-.) r16 <f c'>]( <d bf'>4-.) <bf' bf'> |
    
    \barNumberCheck 25
    c,4-. <bf' e bf'>4.-> <bf e a>8 |
    <bf e fs>8.( <bf e g>16 <bf e a>4-.) <bf e g>-. |
    c,4-. <bf' e a>4.-> <bf e g>8( |
    <a f'>[-.) r16 <bf d>]( <a c>4-. <a f'>-.) |
    c,4-. <bf' e bf'>4.-> <bf e a>8 |
    <bf e fs>8.( <bf e g>16 <bf e a>4 <bf e g> |
    <ef! c'>8[-.) r16 <d f!>]( <df bf'>4 <c ef> |
    <c af'>8[-.) r16 <b d!>]( <bf g'>4 <a! c> |
    
    \barNumberCheck 33
    \voiceOne <d f>4.)-\slurShapeB ( g8[ \grace { f16 g } <d f>8 <cs e>] |
    <d f>8[-.) s16 bf]-\slurShapeC ( \oneVoice <gf bf ef!>4 <f bf d>) |
    \voiceOne c'4.-\slurShapeD ( ef8 d c |
    \oneVoice <f, d'>8[-.) r16 f]-\slurShapeE ^( <d f bf>4 <d f d'> |
    \voiceOne f'4. g8 f\prall e |
    f8[) s16 b,]-\slurShapeF ( \oneVoice <b ef!>4-. <b d>-.) |
    \voiceOne c4.->-\slurShapeG ( ef8-\moveHairpinA ^\> d c\! |
    \oneVoice <bf d>8[-.) r16 <f c'>]( <d bf'>4-.) <bf' bf'> |
    \volta 2 \fine
    
    \volta 1 {
      \barNumberCheck 41
      \key ef \major
      R2. * 4 |
      g8-.[ r16 af]( \slashedGrace { af8 } g'4. f8 |
      e8 f af4-.) c-\slurShapeH ( |
      g,8-.[) r16 af]-\slurShapeI ( \slashedGrace { af8 } g'4. f8 |
      ef8[) r16 c]( a4 bf |
      
      \barNumberCheck 49
      g8) af!( \slashedGrace { af } g'4. f8 |
      e8 f af4-.) \acciaccatura { c8 } f4-> |
      b,4\prall bf8 g bf4\prall |
      a8 fs a4\prall af8 f |
      g,8-.[ r16 af]-\slurShapeI ( \slashedGrace { af8 } g'4. f8 |
      e8 f af4-.) c-\slurShapeH ( |
      g,8-.[) r16 af]-\slurShapeJ ( \slashedGrace { af8 } g'4. f8 |
      ef8[) r16 c]-\slurShapeK ( a4 bf |
      
      \barNumberCheck 57
      g8) af!( \slashedGrace { af } g'4. f8 |
      e8 f af4-.) \acciaccatura { c8 } \ottava 1 f'8-> \ottava 0 r\fermata |
      c,8( b bf a af bf, |
      f'8[-.) r16 g] ef4 % partial measure
      \bar "|."
    }
  }
}

rightHandLower = \relative {
  \repeat segno 2 {
    \partial 4 s4 |
    s2. * 6 |
    \voiceFour <ef' bf'>4 a8 g f ef |
    s2. |
    
    \barNumberCheck 9
    s2. * 8 |
    
    \barNumberCheck 17
    af4 af af |
    af8[ b16\rest bf] s2 |
    << { \voiceFour bf2 a!4 } \\ { \voiceTwo ef4 gf f8 ef } >> |
    s2. |
    \voiceFour c'4 c c |
    b8[ b16\rest b] s2 |
    bf!4 a2 |
    s2. |
    
    \barNumberCheck 25
    s2. * 8 |
    
    \barNumberCheck 33
    af4 af af |
    af8[ b16\rest bf] s2 |
    << { \voiceFour bf2 a!4 } \\ { \voiceTwo ef4 gf f8 ef } >> |
    s2. |
    \voiceFour c'4 c c |
    b8[ b16\rest b] s2 |
    bf!4 a2 |
    s2. |
    \volta 2 \fine
    
    \volta 1 {
      \barNumberCheck 41
      \key ef \major
      s2. * 8 |
      
      \barNumberCheck 49
      s2. * 8 |
      
      \barNumberCheck 57
      s2. * 3 |
      s2 % parial measure
    }
  }
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
  \repeat segno 2 {
    \partial 4 r4 |
    <bf,, bf'>4 <f'' bf d> q |
    bf,4-. <ef bf'> <bf bf'> |
    <f, f'>4 <f'' a> r |
    <bf,, bf'>4 <bf' f' bf> q-> |
    <bf, bf'>4 <f'' bf d> q |
    bf,4-. <ef bf'> <bf bf'> |
    <f, f'>4 <f'' c'> r |
    <bf,, bf'>4 <bf' f' bf> q |
    
    \barNumberCheck 9
    <c, c'>4 \clef treble <c'' g'>4.-> q8 |
    q8. q16 q4-. q-. |
    \clef bass  <c,, c'>4 \clef treble <c'' g'>4.-> q8 |
    \clef bass <f, c' f>8[ r16 <f d' f>] <f c' f>4 q |
    <c, c'>4 \clef treble <c'' g'>4.-> q8 |
    q8. q16 q4 q |
    <f a>8[-. r16 <bf, af'>]( <ef g>4 <af, gf'> |
    <d! f>8[-.) r16 <g, f'>]( <c e>4 <f, ef'>) |
    
    \barNumberCheck 17
    \clef bass
    <bf,, bf'>4 <bf'' f'> q |
    <bf, bf'>4 <ef bf'> <f bf> |
    <gf bf>4 ef f |
    <bf,, bf'> <bf' f' bf> q |
    <af' d f>4 q q |
    <g d'>8[-. r16 q]( <g g'>4-. <g f'>-.) |
    <c e> << { ef8( g f ef) } \\ { f,2 } >> |
    <bf d>8[ r16 <f c'>]( <bf, bf'>4-.) <bf, bf'> |
    
    \barNumberCheck 25
    <c c'>4 \clef treble <c'' g'>4.-> q8 |
    q8. q16 q4-. q-. |
    \clef bass  <c,, c'>4 \clef treble <c'' g'>4.-> q8 |
    \clef bass <f, c' f>8[ r16 <f d' f>] <f c' f>4 q |
    <c, c'>4 \clef treble <c'' g'>4.-> q8 |
    q8. q16 q4 q |
    <f a>8[-. r16 <bf, af'>]( <ef g>4 <af, gf'> |
    <d! f>8[-.) r16 <g, f'>]( <c e>4 <f, ef'>) |
    
    \barNumberCheck 33
    \clef bass
    <bf,, bf'>4 <bf'' f'> q |
    <bf, bf'>4 <ef bf'> <f bf> |
    <gf bf>4 ef f |
    <bf,, bf'> <bf' f' bf> q |
    <af' d f>4 q q |
    <g d'>8[-. r16 q]( <g g'>4-. <g f'>-.) |
    <c e> << { ef8( g f ef) } \\ { f,2 } >> |
    <bf d>8[ r16 <f c'>]( <bf, bf'>4-.) <bf, bf'> |
    \volta 2 \fine
    
    \volta 1 {
      \barNumberCheck 41
      \key ef \major
      ef4-.( <bf' g'>-. ef, |
      <bf' g'>8-. q-. ef,4-. <bf' g'> |
      ef,4-. <bf' g'>-. ef, |
      <bf' g'>8-. q-. ef,4-. <bf' g'>-.) |
      ef,4^\dolce <bf' af'> ef, |
      <bf' af'>8 q ef,4 <bf' af'> |
      ef,4 <bf' af'> ef, |
      <bf' g'>8 q ef,4 <bf' g'> |
      
      \barNumberCheck 49
      ef,4 <bf' af'> ef, |
      <bf' af'>8 q ef,4 <bf' af'> |
      ef,4 <af' d> q |
      ef,4 <af' d> q |
      ef,4 <bf' af'> ef, |
      <bf' af'>8 q ef,4 <bf' af'> |
      ef,4 <bf' af'> ef, |
      <bf' g'>8 q ef,4 <bf' g'> |
      
      \barNumberCheck 57
      ef,4 <bf' af'> ef, |
      <bf' af'>8 q ef,4 <bf' af'>8 r\fermata |
      ef,4 \clef treble <bf'' d af'> q |
      \clef bass ef,4 <bf' g'> % parial measure
    }
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \override TextScript.Y-offset = -0.5
  \repeat segno 2 {
    \partial 4 s4\f |
    s2.\sf |
    s2. |
    s4.\> s\! |
    s2. |
    s2.\sf |
    s2. * 3 |
    
    \barNumberCheck 9
    s2.\sf |
    s2. |
    s2.\sf |
    s2. * 2 |
    s2.-\tweak to-barline ##f \< |
    s8\! s s s4.\dim |
    s2. |
    
    \barNumberCheck 17
    s2.\f |
    s2. |
    s4\> s\! s |
    s4 s\< s\! |
    s4\> s\! s |
    s2. * 2 |
    s2 s4\sf |
    
    \barNumberCheck 25
    s2.\sf |
    s2. |
    s2.\sf |
    s2. * 2 |
    s2.-\tweak to-barline ##f \< |
    s8\! s s s4.\dim |
    s2. |
    
    \barNumberCheck 33
    s2.\f |
    s2. |
    s4\> s\! s |
    s4 s\< s\! |
    s4\> s\! s |
    s2. * 2 |
    s2 s4\sf |
    \volta 2 \fine
    
    \volta 1 {
      \barNumberCheck 41
      s2.\p |
      s2. * 3 |
      s4\< s4.\> s8\! |
      s2 s4-\tweak to-barline ##f \> |
      s8\! s s4.\> s8\! |
      s2. |
      
      \barNumberCheck 49
      s4\< s4.\> s8\! |
      s2. * 2 |
      s2.\dim |
      s4\< s4.\> s8\! |
      s2 s4-\tweak to-barline ##f \> |
      s8\! s s4.\> s8\! |
      s2. |
      
      \barNumberCheck 57
      s4\< s4.\> s8\! |
      s2. |
      s4.\> s\! |
      s2 % parial measure
    }
  }
}

tempi = {
  \set Score.tempoHideNote = ##t
  \repeat segno 2 {
    \textMark \markup \tempo-markup "Vivo risoluto" #2 #0 160
    \tempo 4 = 160
    \partial 4 s4 |
    s2. * 8 |
    
    \barNumberCheck 9
    s2. * 6 |
    \tempo 4 = 144
    s2. |
    \tempo 4 = 132
    s2. |
    
    \barNumberCheck 17
    \tempo 4 = 160
    s2. * 8 |
    
    \barNumberCheck 25
    s2. * 6 |
    \tempo 4 = 144
    s2. |
    \tempo 4 = 132
    s2. |
    
    \barNumberCheck 33
    \tempo 4 = 160
    s2. * 8 |
    \volta 2 \fine
    
    \volta 1 {
      \barNumberCheck 41
      s2. * 8
      
      \barNumberCheck 49
      s2. * 2
      \tempo 4 = 144
      s2. |
      \tempo 4 = 132
      s2. |
      \tempo 4 = 160
      s2. * 4 
      
      \barNumberCheck 57
      s2. |
      s2 s8 \tempo 4= 40 s |
      \tempo 4 = 144
      s2. |
      \tempo 4 = 132
      s2 % parial measure
    }
  }
}

pedal = {
  \repeat segno 2 {
    \partial 4 s4 |
    s2.\sd |
    s8 s\su s2 |
    s2\sd s8 s\su |
    s2.\sd |
    s2. |
    s8 s\su s2 |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    
    \barNumberCheck 9
    s2.\sd |
    s2 s8 s\su |
    s2\sd s8. s16\su |
    s2. |
    s2.\sd |
    s2 s8 s\su |
    s2. * 2 |
    
    \barNumberCheck 17
    s2.\sd |
    s8 s\su s2 |
    s2. |
    s2\sd s8 s\su |
    s2. * 4 |
    
    \barNumberCheck 25
    s2.\sd |
    s2 s8 s\su |
    s2\sd s8. s16\su |
    s2. |
    s2.\sd |
    s2 s8 s\su |
    s2. * 2 |
    
    \barNumberCheck 33
    s2.\sd |
    s8 s\su s2 |
    s2. |
    s2\sd s8 s\su |
    s2. * 4 |
    \volta 2 \fine
    
    \volta 1 {
      \barNumberCheck 41
      s2.\sd |
      s2. * 2 |
      s2 s8 s\su |
      s2.\sd |
      s2. |
      s2 s8 s\su |
      s2\sd s8 s\su |
      
      \barNumberCheck 49
      s2.\sd |
      s2 s8 s\su |
      s2. * 2 |
      s2.\sd |
      s2. |
      s2 s8 s\su |
      s2\sd s8 s\su |
      
      \barNumberCheck 57
      s2.\sd |
      s2 s8 s\su |
      s2. |
      s2 % parial measure
    }
  }
}

forceBreaks = {
  % page 1
  \partial 4 s4
  s2. * 4 \break
  s2. * 6 \break
  s2. * 6 \break
  s2. * 6 \break
  s2. * 6 \pageBreak
  
  % page 2
  s2. * 6 \break
  s2. * 6 \break
  s2. * 7 \break
  s2. * 6 \break
}

mazurkaOneNotes =
\score {
  \header {
    title = "Mazurka One"
    composer = "Frédéric Chopin"
    opus = "Opus 17, No. 1"
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

mazurkaOneMidi =
\book {
  \bookOutputName "mazurka-op17-no1"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
