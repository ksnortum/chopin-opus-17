%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . 0) (0 . -2) (0 . -1) (0 . 0)) \etc
slurShapeB = \shape #'((0 . 0) (0 . -0.5) (0 . -0.5) (0 . 0)) \etc 
slurShapeC = \shape #'((0 . 0) (0 . 3) (0 . 0) (0 . -0.5)) \etc
slurShapeD = \shape #'((0 . -1) (0 . -0.5) (0 . 1) (0 . -1)) \etc
slurShapeE = \shape #'((0 . -1) (0 . 0.5) (0 . 0.5) (0 . -1)) \etc
slurShapeF = \shape #'(
                        ((0 . 3) (0 . 3) (0 . 3) (0 . 3))
                        ((0 . 0.25) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeG = \shape #'((0 . 0) (0 . -0.5) (0 . -0.5) (0 . 0)) \etc
slurShapeH = \shape #'((0 . -1) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeI = \shape #'((0 . 3) (0 . 3) (0 . 1) (0 . 0)) \etc
slurShapeJ = \shape #'((0 . -1) (0 . 0) (0 . 0.5) (0 . -0.5)) \etc
slurShapeK = \shape #'((0 . -1) (0 . 0.5) (0 . 0.5) (0 . -0.5)) \etc
slurShapeL = \shape #'(
                        ((0 . 2) (0 . 2) (0 . 2) (0 . 2))
                        ((0 . 0) (0 . 0) (0 . 1) (0 . 3))
                        ) \etc
slurShapeM = \shape #'((-1 . 0) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeN = \shape #'((0 . 0) (0 . 0) (0 . 0) (-0.75 . 0)) \etc
slurShapeO = \shape #'((0 . 0) (0 . -1) (0 . 0) (0 . 3)) \etc
slurShapeP = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 2) (0 . 2) (0 . 2) (0 . 2))
                        ) \etc

moveFine = \tweak JumpScript.X-offset -16 \etc

%%% Music %%%

global = {
  \time 3/4
  \key af \major
}

rightHandUpper = \relative {
  \partial 4 c''4->~ |
  c8.-\slurShapeA ( bf16 af8 bf c4->)~ |
  \repeat segno 2 {
    \bar "||"
    c8.( bf16 af8 f'! ef4->) |
    c8.-\slurShapeB ( bf16 af8 bf c4 |
    ef,2.) |
    c'8.-\slurShapeA ( bf16 af8 bf c4->)~ |
    \voiceFour c8.-\slurShapeC ^( bf16 af8. g'16 f!4 |
    s4 af,8. g'16 f4 |
    af,8. g'16 f4 \hideNoteHead bf4) |
    
    \barNumberCheck 9
    \oneVoice c,8.-\slurShapeD ( bf16 af8 bf c4->)~ |
    c8.( bf16 af8 f'! ef4->) |
    c8.-\slurShapeE ( bf16 \tuplet 3/2 4 { g8 af bf  b[ df-.) r16 c] } |
    \acciaccatura { c8 } ef,2.-\slurShapeF ( |
    c'8[-.) r16 bf]-\slurShapeG ( af8 bf c4->)~ |
    c8~( c32 bf c bf af8[-.) r16 af']( f4->) |
    bf,8.-\slurShapeH ( c16 df4 \voiceOne c8. bf16 |
    df8. c16 af4) 
    \repeat volta 2 {
      \oneVoice f4( |
      
      \barNumberCheck 17
      df'4) bf8.( df16 <f, f'>4->) |
      e'8.( c16 ef8 df) <bf bf'>4-> |
      \appoggiatura { df16 ef } df4( bf8 df <f, f'>4->)~ |
      \voiceOne f'2 bf4->~ |
      bf2 bf4->~ |
      bf2 bf4-> |
      \oneVoice df,2(^\legato cf4 |
      df4 cf bf) |
      
      \barNumberCheck 25
      c!8.-\slurShapeA (^\aTempo bf16 af8 bf c4->)~ |
      c8.( bf16 af8[ r16 f'] ef4) |
      c8.( bf16 af8[ bf \tuplet 3/2 { b df r16 c]) }
      \acciaccatura { c8 } ef,2.-\slurShapeI (
      c'8[) r16 bf16]( af8 bf c4->)~ |
      \voiceFour c8.-\slurShapeC ^( bf16 af8 g' f!4 |
      s4 af,8. g'16 f4 |
      af,8. g'16 f4 \hideNoteHead bf4) |
      
      \barNumberCheck 33
      \oneVoice c,8.-\slurShapeJ ( bf16 af8 bf c4->)~ |
      c8[( bf af8 f'!] ef4->) |
      \tuplet 3/2 4 { c8-\slurShapeK ( cf bf  g af bf  b[ df-.) r16 c] } |
      \acciaccatura { c8 } ef,2.-\slurShapeI ( |
      c'8[-.) r16 bf]( af8 bf c4->)~ |
      c8~( c32 bf c bf af8[-.) r16 af']( f4->) |
      bf,8.( c16 df4 \voiceOne c8. bf16 |
      \alternative {
        {
          df8. c16 af4) 
        }
        {
          df8.-\slurShapeM ( c16 af2)_( |
        }
      }
    }
    \volta 2 { \moveFine \fine }
    \volta 1 {
      \bar "||"
      \key e \major
      
      \barNumberCheck 41
      \oneVoice gs8.)( a16 fs4. b8 |
      gs[-.) r16 b,]( e4 gs |
      b8. cs16 as4. ds8 |
      b8[) r16 ds,]( gs4 b |
      ds8. e16 cs4. fs8 |
      ds8 b a!4. cs8 |
      b8 gs fs a ds b |
      a8 cs b gs fs a |

      \barNumberCheck 49
      gs8 a fs4.) b8( |
      gs[-.) r16 b,]( e4 gs | 
      b8. cs16 as4. ds8 |
      b8[) r16 ds,]( gs4 b |
      ds8. e16 cs4. fs8 |
      ds8 b a!4. cs8 |
      b8 gs fs4 a |
      gs8[) r16 b,]( e4) 
      
      \repeat volta 2 {
        gs4-> |
        
        \barNumberCheck 57
        \tuplet 3/2 { gs8-.( as-. b-. } cs4-. \tuplet 3/2 { ds8-. e-. fs-. } |
        \tuplet 3/2 { gs8-. as-. b-. } cs4-. ds) |
        \tupletOff
        \tuplet 3/2 { gs,,8-.( as-. b-. } cs8.-. ds16-. 
          \tuplet 3/2 { e8-. fs-. gs-. } | 
        \tuplet 3/2 { as8-. b-. cs-. } ds2->) |
        \tuplet 3/2 { gs,,8-.( as-. b-. } cs4-. 
          \tuplet 3/2 { ds8-. e-. fs-. } |
        \tuplet 3/2 { gs8-. as-. b-. } cs4-. ds) |
        \tuplet 3/2 { gs,,8-.( as-. b-. } cs8.-. ds16-. 
          \tuplet 3/2 { e8-. fs-. gs-. } | 
        \tuplet 3/2 { as8-. b-. cs-. } ds4-.) b,->-\slurShapeO ( |
        
        \barNumberCheck 65
        gs8. a!16 fs4. b8 |
        gs[-.) r16 b,]-\slurShapeP ( e4 gs-> |
        b8. cs16 as4. ds8 |
        b8[) r16 ds,] gs4-. b-. |
        ds8.( e16 cs4. fs8 |
        ds8 b a!4. cs8 | 
        b8 gs fs a ds b |
        a8 cs b gs fs a |
        
        \barNumberCheck 73
        gs8 a fs4.) b8( |
        gs[-.) r16 b,]( e4 gs-> | 
        b8. cs16 as4. ds8 |
        b8[) r16 ds,]( gs4 b-> |
        ds8. e16 cs4. fs8 |
        ds8 b a!4. cs8 |
        b8 gs fs4. a8 |
        \alternative {
          {
            gs8[) r16 b,]( e4) 
          }
          { 
            gs8[^\repeatTie r16 b,]( e2->)\fermata |
          }
        }
      }
      \bar "||"
      \key af \major
      c'8.( bf16 af8 bf) c4->\laissezVibrer |
      \bar "|."
    }
  }
}

rightHandLower = \relative {
  \partial 4 s4 |
  s2. |
  \repeat segno 2 {
    s2. * 4 |
    s4 \voiceOne af'2->
    <g bf>4 af2-> |
    af2-> <g bf>4 |
    
    \barNumberCheck 9
    s2. * 6 |
    s2 \voiceFour g4 |
    af4 af 
    \repeat volta 2 {
      s4 |
      
      \barNumberCheck 17
      s2. * 3 |
      e'8( c ef df) bf4 |
      e8( c ef df) bf4 |
      e8( c ef df) bf4 |
      s2. * 2 |
      
      \barNumberCheck 25
      s2. * 5 |
      s4 \voiceOne af2->
      <g bf>4 af2-> |
      af2-> <g bf>4 |
      
      \barNumberCheck 33
      s2. * 6 |
      s2 \voiceFour g4 |
      \alternative {
        {
          af4 af
        }
        {
          af4 s2 |
        }
      }
    }
    \volta 2 { \moveFine \fine }
    \volta 1 {
      \key e \major
      
      \barNumberCheck 41
      s2. * 8 |
      
      \barNumberCheck 49
      s2. * 7 |
      s2
      \repeat volta 2 {
        s4 |
        
        \barNumberCheck 57
        s2. * 8 |
        
        \barNumberCheck 65
        s2. * 8 |
        
        \barNumberCheck 73
        s2. * 7 |
        \alternative {
          {
            s2
          }
          { 
            s2. |
          }
        }
      }
      s2. |
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

leftHandUpper = \relative {
  \partial 4 s4 |
  \voiceThree s4 <c' ef>2 |
  \repeat segno 2 {
    s4 <c ef>2 |
    s4 <c ef>2 |
    df2.-> |
    s4 <c ef>2 |
    s4 ef2~ |
    ef4 d2 |
    <cf d>2 <bf ef>4 |
    
    \barNumberCheck 9
    s4 <c ef>2 |
    s4 <c ef>2 |
    s4 <c ef>2 |
    df2.-> |
    s4 <c ef>2 |
    s2. |
    s2 ef8.( df!16 |
    f8. ef16 c4) 
    \repeat volta 2 {
      s4 |
      
      \barNumberCheck 17
      s2. * 8 |
      
      \barNumberCheck 25
      s4 <c ef>2 |
      s4 <c ef>2 |
      s4 <c ef>2 |
      df2.-> |
      s4 <c ef>2 |
      s4 ef2~ |
      ef4 d2 |
      <cf d>2 <bf ef>4 |
      
      \barNumberCheck 33
      s4 <c ef>2 |
      s4 <c ef>2 |
      s4 <c ef>2 |
      df2.-> |
      s4 <c ef>2 |
      s2. |
      s2 ef8.( df!16 |
      \alternative {
        {
          f8. ef16 c4) 
        }
        {
          f8.-\slurShapeM ( ef16 c4) cf->-\slurShapeN ( |
        }
      }
    }
    \volta 2 { \moveFine \fine }
    \volta 1 {
      \key e \major
      
      \barNumberCheck 41
      \hideNoteHead b4) s2 |
      s2. * 7 |
      
      \barNumberCheck 49
      s2. * 7 |
      s2 
      \repeat volta 2 {
        s4 |
        
        \barNumberCheck 57
        s2. * 8 |
        
        \barNumberCheck 65
        s2. * 8 |
        
        \barNumberCheck 73
        s2. * 7 |
        \alternative {
          {
            s2
          }
          { 
            s2. |
          }
        }
      }
      s4 <c ef>2 |
    }
  }
}

leftHandLower = \relative {
  \partial 4 r4 |
  <g df' ff>4-> \voiceTwo af ef |
  \repeat segno 2 {
    \oneVoice <g df' ff>4-> \voiceTwo af ef |
    \oneVoice <g df' ff>4-> \voiceTwo af ef |
    af8.[( g16 f!8 g] ef4) |
    \oneVoice <g df' ff>4-> \voiceTwo af ef |
    \oneVoice <g df' ff>4-> << { \voiceFour c4 cf } \\ { \voiceTwo af2 } >> |
    \voiceTwo <ef bf'>4 cf' ef, |
    r4 ef2 |
    
    \barNumberCheck 9
    \oneVoice <g df'! ff>4-> \voiceTwo af ef |
    \oneVoice <g df' ff>4-> \voiceTwo af ef |
    \oneVoice <g df' ff>4-> \voiceTwo af ef |
    af8.[( g16 f8 g] ef4) |
    \oneVoice <g df' ff>4-> \voiceTwo af ef |
    \oneVoice <g df' ff>4->( <af c ef>) \clef treble <d af' cf>4^>^( |
    <ef g>4 <bf f'>) \clef bass ef,4 |
    af2 
    \repeat volta 2 {
      \oneVoice r4 |
      
      \barNumberCheck 17
      r4 <bf, f' df'>-. q-. |
      r4 <bf f' c'>-. <bf f' df'>-. |
      r4 <bf f' df'>-. q-. |
      r4 <bf f' c'>-. <bf f' df'>-. |
      r4 <bf f' c'>-. <bf f' df'>-. |
      r4 <bf f' c'>-. <bf f' df'>-. |
      r4 <g' bf ff'> <af cf ff> |
      <g bf ff'>4 <af cf ff> <g df' ff>~ |
      
      \barNumberCheck 25
      q4 \voiceTwo af ef |
      \oneVoice <g df' ff>4 \voiceTwo af ef |
      \oneVoice <g df' ff>4 \voiceTwo af ef |
      af8.[( g16 f8 g] ef4) |
      \oneVoice <g df' ff>4 \voiceTwo af ef |
      \oneVoice <g df' ff>4 << { \voiceFour c4 cf } \\ { \voiceTwo af2 } >> |
      \voiceTwo <ef bf'>4 cf' ef, |
      r4 ef2 |
      
      \barNumberCheck 33
      \oneVoice <g df'! ff>4 \voiceTwo af ef |
      \oneVoice <g df' ff>4 \voiceTwo af ef |
      \oneVoice <g df' ff>4 \voiceTwo af ef |
      af8.[( g16 f8 g] ef4) |
      \oneVoice <g df' ff>4 \voiceTwo af ef |
      \oneVoice <g df' ff>4( <af c ef>) \clef treble <d af' cf>4^>
        -\slurShapeL ^( |
      <ef g>4 <bf f'>) \clef bass ef,4 |
      \alternative {
        {
          af2 
        }
        {
          af2. |
        }
      }
    }
    \volta 2 { \moveFine \fine }
    \volta 1 {
      \key e \major
      
      \barNumberCheck 41
      <b, b'>4( <b ds a'> q |
      e,4-.) <e' gs> <e gs b>~( |
      <ds gs b>4 <ds fss ds'> <ds fss cs'> |
      gs,4-.) <gs' b>( <gs b ds> |
      r4 <g b e>\> <fs as e'>\! |
      b,4-.) <fs' a! ds> q |
      b,4-. <fs' a ds> q |
      b,4-. <fs' a ds> q |
      
      \barNumberCheck 49
      r4 <b, ds a'>( q |
      e,4-.) <e' gs> <e gs b>~( |
      <ds gs b>4 <ds fss ds'> <ds fss cs'> |
      gs,4-.) <gs' b> <gs b ds> |
      r4 <g b e>\> <fs as e'>\! |
      b,4-. <fs' a! ds> q |
      r4 <b, ds a'> q |
      e,4-. <e' gs> 
      \repeat volta 2 {
        r4 |
        
        \barNumberCheck 57
        <fs b e>4 q <fs as e'> |
        <fs cs' e>4 <fs as e'> <fs b ds>
        <fs b e>4 q <fs as e'> |
        <fs e'>4-> <fs b ds> q |
        <fs b e>4 q <fs as e'> |
        <fs cs' e>4 <fs as e'> <fs b ds>
        <fs b e>4 q <fs as e'> |
        <fs e'>4\> <b ds>\! r |
        
        \barNumberCheck 65
        % like 41
        r4 <b, ds a'!> q |
        e,4-. <e' gs> <e gs b>~ |
        <ds gs b>4 <ds fss ds'> <ds fss cs'> |
        gs,4-. <gs' b> <gs b ds> |
        r4 <g b e>\> <fs as e'>\! |
        b,4-. <fs' a! ds> q |
        b,4-. <fs' a ds> q |
        b,4-. <fs' a ds> q |
        
        \barNumberCheck 73
        r4 <b, ds a'>( q |
        e,4-.) <e' gs> <e gs b>~( |
        <ds gs b>4 <ds fss ds'> <ds fss cs'> |
        gs,4-.) <gs' b> <gs b ds> |
        r4 <g b e>\> <fs as e'>\! |
        b,4-. <fs' a! ds> q |
        r4 <b, ds a'> q |
        \alternative {
          {
            e,4-. <e' gs> 
          }
          { 
            e,4-. <e' gs> e'(\fermata |
          }
        }
      }
      \key af \major
      <g, df' ff>4) \voiceTwo af ef |
    }
  }
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
  \override TextScript.Y-offset = -0.5
  \partial 4 s4^\dol |
  s2. |
  \repeat segno 2 {
    s2. * 7 |
    
    \barNumberCheck 9
    s2. * 7 |
    s2 
    \repeat volta 2 {
      s4 |
      
      \barNumberCheck 17
      s2. * 4 |
      s2.^\stretto |
      s2. |
      s2.^\ritenuto |
      s2. |
      
      \barNumberCheck 25
      s2. * 8 |
      
      \barNumberCheck 33
      s2. * 6 |
      s4-\tweak extra-offset #'(0 . -2) \< s2\! |
      \alternative {
        {
          s2 
        }
        {
          s2. |
        }
      }
    }
    \volta 2 { \moveFine \fine }
    \volta 1 {
      
      \barNumberCheck 41
      s2. * 2 |
      s2.-\tweak Y-offset -1 \cresc |
      s2. |
      s2 s8 s\! |
      \override DynamicTextSpanner.style = #'none
      s8 s\dim s2 |
      s2 s4^\smorz |
      s2 s4\! | %
      
      \barNumberCheck 49
      s2. |
      \revert DynamicTextSpanner.style
      s2. |
      s4 s2\cresc |
      s2. |
      s2 s8 s\! |
      s2. * 2 |
      s2
      \repeat volta 2 {
        s4 |
        
        \barNumberCheck 57
        s2. * 8 |
        
        \barNumberCheck 65
        s2. * 8 |
        
        \barNumberCheck 73
        s2. * 7 |
        \alternative {
          {
            s2
          }
          { 
            s2. |
          }
        }
      }
      s2. |
    }
  }
}

tempi = {
  \set Score.tempoHideNote = ##t
  \once \override Score.TextMark.outside-staff-priority = 1425 
  \textMark \markup \tempo-markup "Legato assai" #2 #0 144
  \tempo 4 = 144
  \partial 4 s4 |
  s2. |
  \repeat segno 2 {
    s2. * 7 |
    
    \barNumberCheck 9
    s2. * 7 |
    \tempo 4 = 126
    s2 
    \repeat volta 2 {
      s4 |
      
      \barNumberCheck 17
      \tempo 4 = 144
      s2. * 6 |
      \tempo 4 = 132
      s2. |
      \tempo 4 = 120
      s2. |
      
      \barNumberCheck 25
      \tempo 4 = 144
      s2. * 8 
      
      \barNumberCheck 33
      s2. * 7 |
      \alternative {
        {
          \tempo 4 = 126
          s2 
        }
        {
          \tempo 4 = 126
          s2. |
        }
      }
    }
    \volta 2 { \moveFine \fine }
    \volta 1 {
      \barNumberCheck 41
      \tempo 4 = 144
      s2. * 8 |
      
      \barNumberCheck 49
      s2. * 7 |
      s2
      \repeat volta 2 {
        \tempo 4 = 144
        s4 |
        
        \barNumberCheck 57
        s2. * 8 |
        
        \barNumberCheck 65
        s2. * 8 |
        
        \barNumberCheck 73
        s2. * 7 |
        \alternative {
          {
            \tempo 4 = 126
            s2
          }
          { 
            \tempo 4 = 126
            s2 \tempo 4 = 80 s4 |
          }
        }
      }
      \tempo 4 = 144
      s2. |
    }
  }
}

pedal = {
  \partial 4 s4 |
  s2. | 
  \repeat segno 2 {
    s2. * 7 |
    
    \barNumberCheck 9
    s2. * 7 |
    s2
    \repeat volta 2 {
      s4 |
      
      \barNumberCheck 17
      s2. * 8 |
      
      \barNumberCheck 25
      s2. * 8 |
      
      \barNumberCheck 33
      s2. * 7 |
      \alternative {
        {
          s2
        }
        {
          s2. |
        }
      }
    }
    \volta 2 { \moveFine \fine }
    \volta 1 {
      
      \barNumberCheck 41
      s2. |
      s2\sd s4\su |
      s2. |
      s2\sd s4\su |
      s2. |
      s2.\sd |
      s2. * 2 | 
      
      \barNumberCheck 49
      s2 s8 s\su |
      s2\sd s4\su |
      s2.
      s2\sd s4\su |
      s2. |
      s2.\sd |
      s4\su s2 |
      s2
      \repeat volta 2 {
        s4 |
        
        \barNumberCheck 57
        s2. * 8 |
        
        \barNumberCheck 65
        s2. |
        s2\sd s4\su |
        s2. |
        s2\sd s4\su |
        s2. |
        s2.\sd |
        s2. * 2 | 
        
        \barNumberCheck 73
        s2 s8 s\su |
        s2\sd s4\su |
        s2.
        s2\sd s4\su |
        s2. |
        s2.\sd |
        s4\su s2 |
        \alternative {
          {
            s2
          }
          { 
            s2. |
          }
        }
      }
      s2. |
    }
  }
}

forceBreaks = {
  % page 1
  \partial 4 s4
  s2. * 5 \break
  s2. * 7 \break
  s2. * 6 \break
  \grace { s8 } s2. * 7 \break
  s2. * 7 \break
  s2. * 6 \pageBreak
  
  % page 2
  s2. s2 s2. * 6 \break
  s2. * 8 \break
  s2. * 7 \break
  s2. * 7 \break
  s2. * 8 \break
  
}

mazurkaThreeNotes =
\score {
  \header {
    title = "Mazurka Three"
    composer = "Frédéric Chopin"
    opus = "Opus 17, No. 3"
  }
  \keepWithTag layout  
  \new PianoStaff <<
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

% The MIDI playback is incorrect.  I couldn't find a way for the music to end
% at the first ending of the first repeat volta, only the second.  For the
% PDF, I just moved the "Fine" to the left so it is under the first ending,
% but this doesn't affect the playback.

mazurkaThreeMidi =
\book {
  \bookOutputName "mazurka-op17-no3"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
