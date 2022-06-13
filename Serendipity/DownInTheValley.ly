\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Down in the Valley"
  subtitle    = "(Hear that Train Blow)"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Frank Luther"
  arranger    = "Arr. William Stickles"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18.1)

global = {
  \key g \major
  \time 3/4
}

TempoTrack = {
%  \set Score.tempoHideNote = ##t
  \tempo Moderato 4=114
  s2.*7
  \tempo Tenderly 4=114
  s2.
  \repeat volta 2 {
    s2.*26
    \alternative {
      {
        s2.*2
      }
      {
        s2.
      }
    }
  }
  s2.*26
  s2 \tempo 4=100 s4
  s2.
  s2.
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "1a" } s2.*7
  \mark \markup { \box "1b" } s2.
  \repeat volta 2 {
    s2.*4
    \mark \markup { \box "2a" } s2.*5
    \mark \markup { \box "2b" } s2.*5
    \mark \markup { \box "3a" } s2.*5
    \mark \markup { \box "3b" } s2.*5
    \mark \markup { \box "4a" } s2.*2
    \alternative {
      {
        s2.*2
      }
      {
        s2.
      }
    }
  }
  s2.
  \mark \markup { \box "4b" } s2.*6
  \mark \markup { \box "5a" } s2.*5
  \mark \markup { \box "5b" } s2.*6
  \mark \markup { \box "6a" } s2.*5
  \mark \markup { \box "6b" } s2.*6
}

sopranoA = \relative {
  R2.*7
  d'4^\p g a % 1b
}

sopranoB = \relative {
    b'2.
    g2.
    b4 a g
    b4(a~8 gis^\<
    a2\!~8 gis^\< % 2a
    a2.\!)
    d,4 fis a
    c2. b2.
    fis4 g a % 2b
    << {\voiceTwo g2(~8 fis_\< | g4.\! fis8_\< g4\! | d2.) }
       \new Voice {\voiceOne \tiny g4^\markup "(Solo voice)" (g'4~8 fis^\< | g4.\! fis8^\< g4\! | d2.) }
     >>
    d,4 g a
    b2. % 3a
    g2.
    b4 a g
    b4(a~8 gis^\<
    a2\!~8 gis^\<
    a2.\!) % 3b
    d,4 fis a
    c2.
    b2.
    fis4 g a
    << {\voiceTwo g2(~8 fis_\< | g4.\! fis8_\< g4\! }
       \new Voice {\voiceOne \tiny g4^\markup "(Solo voice)" (g'4~8 fis^\< | g4.\! fis8^\< g4\! ) }
     >>
  }

sopranoC = \relative {
  << {\voiceTwo g'2.)} \new Voice {\voiceOne \tiny g'2.\repeatTie } >>
  d,4 g a
}

sopranoD = \relative {
  << {\voiceTwo g'2.\repeatTie} \new Voice {\voiceOne \tiny g'2.} >> \bar "||"
}

sopranoE = \relative {
  d'4^\p g a
  b2. % 4b
  g2.
  b4 a g
  b4(a~8 gis^\<
  a2\! ~8 gis^\<
  a2.\!)
  d,4 fis a % 5a
  c2.
  b2.
  fis4 g a
  << {\voiceTwo g2(~8 fis_\< | g4.\! fis8_\< g4\! | d2.) }
     \new Voice {\voiceOne \tiny g4^\markup "(Solo voice)" (g'4~8 fis^\< | g4.\! fis8^\< g4\! | d2.) }
   >>
  d,4 g a % 5b+
  b2.
  g2.
  4 a g
  b4(a~8 gis^\< % 6a
  a2\! ~8 gis^\<
  a2.\!)
  d,4 fis a
  c2.
  b2. % 6b
  fis4 g a
  << {\voiceTwo g2(~8 fis\omit\< | g2\!) fis4\omit\pp | g2. ~ | g2\fermata }
     \new Voice {\voiceOne \tiny g4^\markup "(Solo voice)" (g'4~8 fis^\< | g2\!) fis4^\pp^\markup Hm. ^\markup\italic "poco rall." ( | g2.~ | g2.\fermata) }
   >>
}

soprano = \relative {
  \global
  \sopranoA
  \repeat volta 2 {
    \sopranoB
    \alternative {
      {
        \sopranoC
      }
      {
%        \sopranoD
        << {\voiceTwo g'2.\repeatTie} \new Voice {\voiceOne \tiny g'2.} >> \bar "||"
      }
    }
  }
  \sopranoE
  \bar "|."
}

sopranoSingle = {
  \sopranoA
  \sopranoB
  \sopranoC
  \sopranoB
%  \sopranoD
  << {\voiceTwo g'2.)} \new Voice {\voiceOne \tiny g'2.} >> \bar "||"
  \sopranoE
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Down in the val -- ley,
  Val -- ley so low, __
  late in the eve -- nin',
  Hear that train blow. __

  Hear that train blow, Love
  Hear that train blow, __
  Late in the eve -- nin',
  Hear that train blow. __

  \set stanza = "2."
  The train don't
  _ __

  \set stanza = "3."
  Down in the val -- ley,
  Val -- ley so low __
  Late in the eve -- nin',
  Hear that train blow. __
  The train is gone, Love,
  And out of sight, __
  Good -- night my darl -- in',
  Darl -- in', good -- night,
  Good -- night. __
}

wordsTwo = \lyricmode {
  _ _ _
  \set stanza = "2."
  stay, Love, it goes right through, __
  And now it's gone, Love,
  And so are you. __
  Be -- fore you go, Love,
  For old time's sake __
  Put your arms 'round me
  Feel my heart break. __
}

wordsSingle = \lyricmode {
  \set stanza = "1."
  Down in the val -- ley,
  Val -- ley so low, __
  late in the eve -- nin',
  Hear that train blow. __

  Hear that train blow, Love
  Hear that train blow, __
  Late in the eve -- nin',
  Hear that train blow. __

  \set stanza = "2."
  The train don't stay, Love,
  it goes right through, __
  And now it's gone, Love,
  And so are you. __
  Be -- fore you go, Love,
  For old time's sake __
  Put your arms 'round me
  Feel my heart break. __

  \set stanza = "3."
  Down in the val -- ley,
  Val -- ley so low __
  Late in the eve -- nin',
  Hear that train blow. __
  The train is gone, Love,
  And out of sight, __
  Good -- night my darl -- in',
  Darl -- in', good -- night,
  Good -- night. __
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "Down " "in " "the " val "ley, "
  "\nVal" "ley " "so " "low, " 
  "\nlate " "in " "the " eve "nin', "
  "\nHear " "that " "train " "blow. " 

  "\nHear " "that " "train " "blow, " "Love "
  "\nHear " "that " "train " "blow, " 
  "\nLate " "in " "the " eve "nin', "
  "\nHear " "that " "train " "blow. " 

  \set stanza = "2."
  "\nThe " "train " "don't " "stay, " "Love, "
  "\nit " "goes " "right " "through, " 
  "\nAnd " "now " "it's " "gone, " "Love, "
  "\nAnd " "so " "are " "you. " 
  "\nBe" "fore " "you " "go, " "Love, "
  "\nFor " "old " "time's " "sake " 
  "\nPut " "your " "arms " "'round " "me "
  "\nFeel " "my " "heart " "break. " 

  \set stanza = "3."
  "\nDown " "in " "the " val "ley, "
  "\nVal" "ley " "so " "low " 
  "\nLate " "in " "the " eve "nin', "
  "\nHear " "that " "train " "blow. " 
  "\nThe " "train " "is " "gone, " "Love, "
  "\nAnd " "out " "of " "sight, " 
  "\nGood" "night " "my " darl "in', "
  "\nDarl" "in', " good "night, "
  "\nGood" "night. " 
}

alto = \relative {
  \global
  s2.*7
  d'4^\p 4 fis
  \repeat volta 2 {
    g2.
    d2.
    g4 fis e
    fis2(~8 eis8^\<fis2\! ~ 8 eis8^\<
    fis2.\!)
    d4 4 fis
    fis2.
    fis2.
    d4 4 4 % 2b
    d2(~8 cis^\<
    d4.\! cis8^\< d4\!
    b2.)
    d4 4 fis
    g2. % 3a
    d2.
    g4 fis e
    fis2( ~8 eis^\<
    fis2\! ~8 eis^\<
    fis2.\!) % 3b
    d4 4 fis
    fis2.
    fis2.
    d4 4 4
    d2(~8 cis^\< % 4a
    d2\! ~8 cis^\<
    \alternative {
      {
        d2.\!)
        d4 4 fis
      }
      {
        d2.\repeatTie
      }
    }
  }
  d4^\p 4 fis
  g2. % 4b
  d2.
  g4 fis e
  fis2( ~8 eis^\<
  fis2\! ~8 eis^\<
  fis2.\!)
  d4 4 fis % 5a
  fis2.
  fis2.
  d4 4 4
  d2( ~8 cis^\<
  d4.\! cis8^\< d4 % 5b
  b2.\!)
  d4 4 fis
  g2.
  d2.
  g4 fis e
  fis2( ~8 eis^\< % 6a
  fis2\! ~8 eis^\<
  fis2.\!)
  d4 4 fis
  fis2.
  fis2. % 6
  d4 4 4
  d2( ~8 cis^\<
  d2\!) cis4^\pp^\markup\italic "poco rall."
  d2.~
  d2.\fermata
  \bar "|."
}

wordsAltoOne = \lyricmode {
  \set stanza = "1."
  Down in the
}

wordsAltoTwo = \lyricmode {
  _ _ _
  \set stanza = "2."
  stay, Love,
}

tenor = \relative {
  \global
  s2.*7
  b4^\p 4 c
  \repeat volta 2 {
    d2.
    b2.
    d4 c b
    d4(c~8 b^\<
    c2\! 8 b^\<
    c2.\!)
    c4 4 4
    e2.
    d2.
    c4 4 4 % 2b
    b2(~8 ais^\<
    b4.\! ais8^\< b4\!
    g2.)
    b4 4 c
    d2. % 3a
    b2.
    d4 c b
    d4(c~8 b^\<
    c2\! ~8 b^\<
    c2.\!) % 3b
    c4 4 4
    e2.
    d2.
    c4 4 4
    b2(~8 ais^\< % 4a
    b2\! ~8 ais^\<
    \alternative {
      {
        b2.\!)
        b4 4 c
      }
      {
        b2.\repeatTie
      }
    }
  }
  b4 4 c
  d2. % 4b
  b2.
  d4 c b
  d4(c~8 b^\<
  c2\! ~8 b^\<
  c2.\! )
  c4 4 4 % 5a
  e2.
  d2.
  c4 4 4
  b2( ~8 ais^\<
  b4.\! ais8^\< b4\! % 5b
  g2.)
  b4 4 c
  d2.
  b2.
  d4 c b
  d4(c~8 b^\< % 6a
  c2\!~8 b^\<
  c2.\!)
  c4 4 4
  e2.
  d2. % 6b
  c4 4 4
  b2(~8 ais^\<
  b2\!) ais4^\pp^\markup\italic "poco rall."
  b2.~
  b2.\fermata
  \bar "|."
}

wordsTenorOne = \lyricmode {
  \set stanza = "1."
  Down in the
}

wordsTenorTwo = \lyricmode {
  _ _ _
  \set stanza = "2."
  stay, Love,
}

bass = \relative {
  \global
  s2.*7
  g4^\f g d
  \repeat volta 2 {
    g,2.
    g2.
    g4 d' d
    d2.~
    d2. ~ % 2a
    d2.
    fis4 d d
    d2.
    d2.
    d4 e fis % 2b
    g4(g,2~)
    g2.~
    g2.
    g'4 g d
    g,2. % 3a
    g2.
    g4 d' d
    d2.~
    d2.~
    d2. % 3b
    fis4 d d
    d2.
    d2.
    d4 e fis
    g4( g,2)~ % 4a
    g2.~
    \alternative {
      {
        g2.
        g'4 4 d
      }
      {
        g,2.\repeatTie
      }
    }
  }
  g'4^\p g d
  g,2. % 4b
  g2.
  g4 d' d
  d2.~
  d2.~
  d2.
  fis4 d d % 5a
  d2.
  d2.
  d4 e fis
  g4(
  g,2)~
  g2.~ % 5b
  g2.
  g'4 4 d
  g,2.
  g2.
  g4 d' d
  d2.~ % 6a
  d2.~
  d2.
  fis4 d d
  d2.
  d2. % 6b
  d4 e fis
  g4(g,2) ~
  g2 d'4^\pp^\markup\italic "poco rall."
  g,2.~
  g2.\fermata
  \bar "|."
}

wordsBassOne = \lyricmode {
  \set stanza = "1."
  Down in the
}

wordsBassTwo = \lyricmode {
  _ _ _
  \set stanza = "2."
  stay, Love,
}

pianoRH = \relative {
  \global
  d'4( fis a\bar "||"
  <e fis c'>2.
  <d fis b>2.)
  <c d fis>4( <c g'> <c d a'>
  <b d g>4 <b' d g>4~8 <ais cis fis>
  <b d g>2~8 <ais cis fis>
  <b d g>2.) \bar "||"
  d,4~ (<b d g> <c fis a>
  \repeat volta 2 {
    <d g b>2.
    <b d g>2.)
    <d g b>4 (<c fis a>  <b e g>
    <d fis b>4 <c fis a>4~8 <b fis' g>
    <c fis a>2~8 <b f' gis> % 2a
    <c fis a>2.)
    <fis, c' d>4(<a c fis> <c fis a>
    <e fis c'>2.
    <d fis b>2.)
    <c d fis>4\( <c g'> <c d a'> % 2b
                 <b d g>4 <b' d g>4~8 <ais cis fis>
                 <b d g>4. <ais cis fis>8 <b d g>4
                 <g b d>2. \)
    d4( ~ <b d g> <c fis a>
    <d g b>2. % 3a
    <b d g>2.)
    <d g b>4(<c e g> <b e g>
    <d fis b> <c fis a>~ << {\voiceTwo q8) <b fis' g> |
                             <c fis a>2~8 <b fis' g> |
                             <c fis a>2.} % 3b
                            \new Voice {\tiny \voiceOne \tuplet 3/2 {<d' fis>8 <e g> <eis gis>} |
                                        <fis a>2 \tuplet 3/2 {<eis gis>8 <fis a> <gis b>} |
                                        <a c>2.} % 3b
                          >>
    <fis,, c' d>4(<a c fis> <c fis a>
    <e fis c'>2.
    <d fis b>2.)
    <c d fis>4(
    <c g'>
    <c d a'>
    <b d g>4 <b' d g>~8 <ais cis fis> % 4a
    <b d g>2~8 <ais cis fis>
    \alternative {
    {
      <b d g>2.)
      d,4( ~ <b d g> <c fis a>)
    }
    {
      <b' d g>2.\repeatTie
    }
  }
  }
  d,4~ (<b d g> <c fis a>
  <d g b>2. % 4b
  <b d g>2.)
  <d g b>4(<c fis a> <b e g>
  <d fis b>4 <c fis a>~8 <b f' g>
  <c fis a>2~8 <b f' g>
  <c fis a>2.)
  <fis, c' d>4(<a c fis> <c fis a> % 5a
  <e fis c'>2.
  <d fis b>2.)
  <c d fis>4(<c g'> <c d a'>
  <b d g>4 <b' d g>4~8 <ais cis fis>
  <b d g>4. <ais cis fis>8 <b d g>4 % 5b
  <g b d>2.)
  d4( ~<b d g> <c fis a>
  <d g b>2.
  <b d g>2.)
  <d g b>4( <c fis a> <b e g>
  <d fis a>4 <c fis a>~ << {\voiceTwo q8) <b f' gis> | % 6a
                            <c fis a>2~8 <b f' gis> |
                            <c fis a>2.}
                           \new Voice {\tiny \voiceOne \tuplet 3/2 {<d' fis>8 <e g> <eis gis>} |
                                       <fis a>2 \tuplet 3/2 {<eis gis>8 <fis a> <gis b>} |
                                       <fis a>2.}
                         >>
  <fis,, c' d>4(<a c fis> <c fis a>
  <e fis c'>2.
  <d fis b>2.) % 6b
  <c d fis>4(<c g'> <c d a'>
  <b d g>4 <b' d g>~8 <ais cis fis>
  <b d g>2) <ais cis fis>4--
  <b d g>4-- b,8(d g b
  <b d>2.\fermata)
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.
  s2.\mf
  s2.
  s2.
  s2.\<
  s2.\>
  s2.
  s2.\! % 1b
  \repeat volta 2 {
    s2.-\markup{\dynamic p - \dynamic mf}
    s2.*10
    s2.\< % 2b++
    s2.\>
    s2.\!
%    s2.
    s2.*10 % 3
    s2. % 4a
    s2.
    \alternative {
      {
        s2.
        s2.
      }
      {
        s2.
      }
    }
  }
  s2.*12
  s2.\< % 5b
  s2.\>
  s2.\!
  s2.*10
  s2 s4-\markup\italic "poco rall."
  s4 s2\<
  s2\> s8.. s64\!
}

pianoLH = \relative {
  \global
  R2. \bar "||"
  d,4 a' d8(a)
  d,4 a' d8(a)
  d,4 e fis
  g4 d' g8(d)
  g,4 d' g8(fis)
  g,4(d' g) \bar "||"
  R2.
  \repeat volta 2 {
    g,4 d' g8(d)
    g,4 d' g8(d)
    fis,4 r r
    d4 g' d
    d,4 a' d % 2a
    d,4 a' d
    R2.
    d,4 a' d8(a)
    d,4 a' d8(a)
    d,4 e fis % 2b
    g4 d' g8(d)
    g,4 d' g
    g,4(d' g)
    R2.
    g,4 d' g8(d) % 3a
    g,4 d' g8(d)
    g,4 r r
    d4 a' d
    d,4 a' d
    d,4 a' d % 3b
    R2.
    d,4 a' d8(a)
    d,4 a' d8(a)
    d4 e fis
    g,4 d' g8(d) % 4a
    g,4 d' g8(d)
    \alternative {
      {
        g,4(d' g)
        R2.
      }
      {
        g,4(d' g)
      }
    }
  }
  R2.
  g,4 d' g8(d) % 4b
  g,4 d' g8(d)
  g,4 r r
  d4 a' d
  d,4 a' d
  d,4 a' d
  R2. % 5a
  d,4 a' d8(a)
  d,4 a' d8(a)
  d,4 e fis
  g4 d' g8(d)
  g,4 d' g % 5b
  g,4(d' g)
  R2.
  g,4 d' g8(d)
  g,4 d' g8(d)
  g,4 r r
  d4 a' d % 6a
  d,4 a' d
  d,4 a' d
  R2.
  d,4 a' d8(a)
  d,4 a' d8(a) % 6b
  d,4 e fis
  g4 d' g8(d)
  g,4(d') d,--
  g4-- d'8( g b d
  << {g2.\fermata)} \new Voice {\voiceTwo r4 g,,2\fermata} >>
  \bar "|."
}

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSingle
            \addlyrics \wordsSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSingle
            \addlyrics \wordsSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSingle
            \addlyrics \wordsMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
%            \addlyrics \wordsSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
%            \addlyrics \wordsSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
%            \addlyrics \wordsSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRH
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \midi {}
  }
}
