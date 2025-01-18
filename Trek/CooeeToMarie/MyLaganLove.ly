\version "2.25.23"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "My Lagan Love"
  subtitle    = "Belfast Maid"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Sue Whitehead"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Joseph Campbell"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 4/4
}

TempoTrack = {
  \global
  \tempo 4=80
  s1*3 |
  \repeat volta 3 {
    s1*23 |
  }
  s1*11 |
  \repeat volta 2 {
    s1*20 |
    \alternative {
      { s1*3 | }
      { \tempo 4=80 s1 | }
    }
  }
  s1*6 | s2 \tempo 4=70 s | s \tempo 4=60 s | s \tempo 4=40 s | s1 |
%  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "1a" s1*3
  \repeat volta 3 {
    s1*2
    \textMark \markup\box "1b" s1*4
    \textMark \markup\box "1c" s1*5
    \textMark \markup\box "2a" s1*5
    \textMark \markup\box "2b" s1*5
    \textMark \markup\box "2c" s1*2
  }
  s1*3
  \textMark \markup\box "2d" s1*7 |
  \textMark \markup\box "3a" s1
  \repeat volta 2 {
    s1*4
    \textMark \markup\box "3b" s1*6 |
    \textMark \markup\box "3c" s1*5 |
    \textMark \markup\box "4a" s1*5 |
    \alternative {
      { s1 | \textMark \markup\box "4b" s1*2 }
      { s1 }
    }
  }
  s1*3 |
  \textMark \markup\box "4c" s1*7 |
}

ChordTrack = \chordmode {
  c2 g:m | s4 a2.:m | a2:m c |
  \repeat volta 2 {
    c4 f g:m c | s2. c4 |
    s4 d:m c g:m | s c c2 | s4 a:m c2 | c f4 g:m |
    c2 c | d4:m c g2:m | c f | s4 a:m c2 | s c |
    f2. c4 | s g2:m f4 | s4. c2 f8 | s4. g4:7 c4. | s2. c4:m |
    s2 s8 c4. | s4 f c g:m | s c2 f4 | s2 a4:m c | s2 c |
    g4:m c2 a4:m | c1 |
  }
  c1 | f2. c4 | s4. g:m f4 |
  s4. c f4 | c2 g4:7 c | s2 c:m | s c | s4 f c g:m | s4 c2 f4 | s2 a4:m c |
  s2 c4 f
  \repeat volta 2 {
    g4:m c2. | s4 c2 d4:m | c g2:m c4 | c2. a4:m |
    c2 c | f4 g:m c2 | c d4:m c | g2:m c | f2. a4:m c1 |
    c2 f | s4 c2 g4:m | s f2 c4 | s4. f2 g8:7 | s8 c2.. |
    c1:m | c2. f4 | c g2:m c4 | s f2. | a4 c2. |
    \alternative {
      { c2 g4:m c | s4 a2:m c4 | s2 c4 f | }
      { c1 | }
    }
  }
  f2. c4 | s4. g:m f4 | s2 c4 f |
  s2 g4:7 c | s2 c:m | c2. c4:m | s4 f c g:m | s4 c2 f4 | f2 a4:m c | s1 |
}

melody = \relative {
  \global
  R1*3 |
  \repeat volta 3 {
    g'4 a bes c~ | 2. g4~ \section \key f \major
    g4 \slashedGrace a8 f e c4(bes)~ | bes c e f8(e) | c4 4 2\fermata | r4 g' a \tuplet 3/2 {bes8(a bes)} |
    c2 g | f8(e) c4 bes2 | c4 e f f8(e | c4) 4 2~ | 4 r e8(d) e4 |
    f4 a2 g4~ | 4 8(f4) ees8 f4 | r8 a(bes) c2 f,8~ | f \tuplet 3/2 {a(g a)} b4 c4.~ \section | 2 r4 ees8 c~ |
    c8 bes c2 g4~ | 4 f8(e) c4 bes | r c e f8(e) | c2 4 4~ | 2 r |
    R1 | r2. r4 |
  }
  R1*3 |
  R1*7 |
  r2 g'4 f | % 3a
  \repeat volta 2 {
    bes4 c2.~ | 4 g2 \slashedGrace a8 f(e) | c4 bes2 c4 | e4 f8(e) c4 4 |
    c2\fermata r4 g' | a \tuplet 3/2 {bes8(a bes)} c2 | g f8(e) c4 | bes2 c4 e | f4 8(e c4) c | c2. r4 |
    e8(d) e4 f a~ | 4 g2 8(f | f) ees f4 r8 a(bes) c~ | 4. f,4 \tuplet 3/2 {a8(g a)} b~ | 8 c2.. |
    r4 ees8 c4 bes8 c4~ | 4 g2 f8(e) | c4 bes r c | e4 f8(e) c2 | 4 2. |
    \alternative {
      { R1 | R1 | r2 g'4 a | }
      { R1 | }
    }
  }
  R1*3 |
  R1*7 |
  \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

wordsOne = \lyricmode {
  Where La -- gan stream sings lul -- la -- by
  There blooms a __ li -- ly fair.
  The twi -- light gleam is in her eye
  The night is on her hair.
  And like a love -- sick lean -- an -- sidhe
  She has my heart in thrall.
  Nor life I owe nor li -- ber -- ty,
  For love is lord of all.

  Her wel -- come, like her love for me
  Is from her heart with -- in.
  Her warm kiss is fel -- i -- ci -- ty
  That knows no taint of sin.
  And when I stir my foot to go,
  ’Tis leav -- ing love and light,
  To feel the wind of long -- ing blow
  From out the dark of night.

  Where La-
}

wordsTwo = \lyricmode {
  Her fa -- ther sails a \nom run -- ning barge, \yesm _
  ’Twixt Leamh -- beag and the druim;
  And on the lone -- ly riv -- er marge,
  She clears her hearth for him.
  When she was on -- ly fair -- y high,
  Her gen -- tle mo -- ther died.
  But dew -- love keeps her mem -- or -- y
  Green on the La -- gan side.

  "(Where" La) -- gan stream sings lul -- la -- by,
  There blooms a li -- ly fair.
  The twi -- light gleam is in her eye,
  The night is on her hair.
  And like a love -- sick lea -- nan -- sidhe,
  She hath my heart in thrall.
  Nor life I owe, nor li -- ber -- ty.
  For love is lord of all.
}

wordsThree = \lyricmode {
  And oft -- times, when the bee -- tle’s horn
  Hath lulled the eve to sleep,
  I steal un -- to her shiel -- ing lorn,
  And through the door -- ing peep.
  There on the crick -- et’s sing -- ing stone,
  She spares ther bog -- wood fire,
  And home in sad sweet un -- der tone,
  The song of heart’s de -- sire.
}

wordsSingle = \lyricmode {
  \set stanza = "1."
  Where La -- gan stream sings lul -- la -- by
  There blooms a __ li -- ly fair.
  The twi -- light gleam is in her eye
  The night is on her hair.
  And like a love -- sick lean -- an -- sidhe
  She has my heart in thrall.
  Nor life I owe nor li -- ber -- ty,
  For love is lord of all.

  \set stanza = "2."
  Her fa -- ther sails a \nom run -- ning barge, \yesm _
  ’Twixt Leamh -- beag and the druim;
  And on the lone -- ly riv -- er marge,
  She clears her hearth for him.
  When she was on -- ly fair -- y high,
  Her gen -- tle mo -- ther died.
  But dew -- love keeps her mem -- or -- y
  Green on the La -- gan side.

  \set stanza = "3."
  And oft -- times, when the bee -- tle’s horn
  Hath lulled the eve to sleep,
  I steal un -- to her shiel -- ing lorn,
  And through the door -- ing peep.
  There on the crick -- et’s sing -- ing stone,
  She spares ther bog -- wood fire,
  And home in sad sweet un -- der tone,
  The song of heart’s de -- sire.

  \set stanza = "4."
  Her wel -- come, like her love for me
  Is from her heart with -- in.
  Her warm kiss is fel -- i -- ci -- ty
  That knows no taint of sin.
  And when I stir my foot to go,
  ’Tis leav -- ing love and light,
  To feel the wind of long -- ing blow
  From out the dark of night.

  \set stanza = "5."
  Where La -- gan stream sings lul -- la -- by,
  There blooms a li -- ly fair.
  The twi -- light gleam is in her eye,
  The night is on her hair.
  And like a love -- sick lea -- nan -- sidhe,
  She hath my heart in thrall.
  Nor life I owe, nor li -- ber -- ty.
  For love is lord of all.
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "Where " La "gan " "stream " "sings " lul la "by "
  "\nThere " "blooms " "a "  li "ly " "fair. "
  "\nThe " twi "light " "gleam " "is " "in " "her " "eye "
  "\nThe " "night " "is " "on " "her " "hair. "
  "\nAnd " "like " "a " love "sick " lean an "sidhe "
  "\nShe " "has " "my " "heart " "in " "thrall. "
  "\nNor " "life " "I " "owe " "nor " li ber "ty, "
  "\nFor " "love " "is " "lord " "of " "all.\n"

  \set stanza = "2."
  "\nHer " fa "ther " "sails " "a " \nom run "ning " "barge, " \yesm ""
  "\n’Twixt " Leamh "beag " "and " "the " "druim; "
  "\nAnd " "on " "the " lone "ly " riv "er " "marge, "
  "\nShe " "clears " "her " "hearth " "for " "him. "
  "\nWhen " "she " "was " on "ly " fair "y " "high, "
  "\nHer " gen "tle " mo "ther " "died. "
  "\nBut " dew "love " "keeps " "her " mem or "y "
  "\nGreen " "on " "the " La "gan " "side.\n"

  \set stanza = "3."
  "\nAnd " oft "times, " "when " "the " bee "tle’s " "horn "
  "\nHath " "lulled " "the " "eve " "to " "sleep, "
  "\nI " "steal " un "to " "her " shiel "ing " "lorn, "
  "\nAnd " "through " "the " door "ing " "peep. "
  "\nThere " "on " "the " crick "et’s " sing "ing " "stone, "
  "\nShe " "spares " "ther " bog "wood " "fire, "
  "\nAnd " "home " "in " "sad " "sweet " un "der " "tone, "
  "\nThe " "song " "of " "heart’s " de "sire.\n"

  \set stanza = "4."
  "\nHer " wel "come, " "like " "her " "love " "for " "me "
  "\nIs " "from " "her " "heart " with "in. "
  "\nHer " "warm " "kiss " "is " fel i ci "ty "
  "\nThat " "knows " "no " "taint " "of " "sin. "
  "\nAnd " "when " "I " "stir " "my " "foot " "to " "go, "
  "\n’Tis " leav "ing " "love " "and " "light, "
  "\nTo " "feel " "the " "wind " "of " long "ing " "blow "
  "\nFrom " "out " "the " "dark " "of " "night.\n"

  \set stanza = "5."
  "\nWhere " La "gan " "stream " "sings " lul la "by, "
  "\nThere " "blooms " "a " li "ly " "fair. "
  "\nThe " twi "light " "gleam " "is " "in " "her " "eye, "
  "\nThe " "night " "is " "on " "her " "hair. "
  "\nAnd " "like " "a " love "sick " lea nan "sidhe, "
  "\nShe " "hath " "my " "heart " "in " "thrall. "
  "\nNor " "life " "I " "owe, " "nor " li ber "ty. "
  "\nFor " "love " "is " "lord " "of " "all. "
}

harpOne = \relative {
  \global
  ees'4 g bes2 | 4 c2. | a2 g4 r |
  \repeat volta 3 {
    R1 | R | \section \key f \major
    R1*4 |
    R1*5 |
    R1*4 \section | R1 |
    R1*5 |
    R1*2
  }
  c,4 e8 g c b a g | f a c4. a8 g e | g e g f ees4 f8 c'~ |
  c4 bes8 c g e g f~ | f \tuplet 3/2 {a g a} b4 c4.~ | 2 <ees, g>4 g8 c | ees bes c2 g4~ | g f8 g c g8 4 | g c g c8 g | f2 a4 c~ |
  c2 r |
  \repeat volta 2 {
    R1*4 |
    R1*6 |
    R1*5 |
    R1*5 |
    \alternative {
      { R1 | R1*2 | }
      { \vo e,4~8 g c8 b a g | }
    }
  }
  f a c4. a8 g e | g e g f ees4 f8 c'~ | 4 bes8 c g e g f~ |
  f8 \tuplet 3/2 {a g a} b4 c4.~ | 2 r4 g8 c | ees bes c2 g4~ | 4 f8 g c g d4 | g c g c8 g | f2 a,4 <g c>4~ | \ov 2 r |
}

harpTwo = \relative {
  \global \vt
  s1*3 |
  \repeat volta 3 {
    s1*23 |
  }
  s1*11 |
  \repeat volta 2 {
    s1*20 |
    \alternative {
      { s1*3 | }
      { r2 g'4 c, | }
    }
  }
  c4 a'4. r8 c,4 | c d bes c~ | 4 e c2 |
  c4. g'4 4.~ | 2 <ees g>4 r | g2 <c, e> | c e4 bes | bes4 e2 f8 e | c4 a e r | s1 |
}

recorderOne = \relative {
  \global
  \vo c'''2 g8 a bes a | g e~2 a4 | <e c'>1 |
  \repeat volta 3 {
    \ov g4 a bes c~ | 2. g4~ \section \key f \major |
    g4 \slashedGrace a8 f e <c c'>4 <bes bes'>~ | q c e f8(e) | c4 4 2\fermata | r4 g' a \tuplet 3/2 {bes8 a bes} |
    c2 g | f8(e) c4 <bes bes'>2 | c4 e f f8(e | c4) 4 2~ | 4 r e8(d) e4 |
    f4 a2 g4~ | 4 8(f4) ees8 f4 | r8 a(bes) c2 f,8~ | 8 \tuplet 3/2 {a(g a)} b4 c4. \section | 2 r4 ees8 c~ |
    c8 bes c2 g4~ | 4 f8(e) c4 bes | r c e f8(e) | c2 4 4~ | 2 r |
    <g g'>8(<a a'>) <c c'>2 <a a'>4 | \slashedGrace d'8 <c, c'>8~2. r8 |
  }
  c4 r e8(d) e4 | f4 a2 g4~ | 4 8(f4) ees8 f4 |
  r8 a(bes) c2 f,8~ | 8 \tuplet 3/2 {a(g a)} b4 c4.~ | 2. ees8 c~ | 8 bes c2 g4~ | 4 f8(e) c4 <bes bes'> | r c e f8(e) | c2 4 \slashedGrace d8 c4~ |
  c2 g'4 f | % 3a
  \repeat volta 2 {
    bes4 c2.~ | 4 g2 \slashedGrace a8 f(e) | c4 bes2 c4 | e4 f8(e) c4 4 |
    c2\fermata r4 g' | a \tuplet 3/2 {bes8(a bes)} c2 | g f8(e) c4 | bes2 c4 e | f4 8(e c4) c | c2. r4 |
    e8(d) e4 f a~ | 4 g2 8(f | f) ees f4 r8 a(bes) c~ | 4. f,4 \tuplet 3/2 {a8(g a)} b~ | 8 c2.. |
    r4 ees8 c4 bes8 c4~ | 4 g2 f8(e) | c4 bes r c | e4 f8(e) c2 | 4 2. |
    \alternative {
      { <c c'>4 <g g'>4 8(<a a'>) <c c'>4~ | q4 <a a'> \slashedGrace d'8 <c, c'>2~ | q4 r g' a | }
      { c,2 e8 d e4 | }
    }
  }
  f4 a2 g4~ | 4 8 f ees4 f~ | 8 a bes c2 f,8~ |
  f8 \tuplet 3/2 {a(g a)} b4 c4.~ | 2. ees8 c~ | c bes c2 g4~ | g f8 e c4 <bes bes'> | r c e f8 e | \vo c2 4 4~ | 2 r |
}

recorderTwo = \relative {
  \global \vt
  g''2 d4 g | d a2 e'4 | a2 g |
  \repeat volta 3 {
    s1*2 \section \key f \major |
    s1*4 |
    s1*5 |
    s1*4 \section s1 |
    s1*5 |
    s1*2 |
  }
  s1*3 |
  s1*7 |
  s1 |
  \repeat volta 2 {
    s1*4
    s1*6 |
    s1*5 |
    s1*5 |
    \alternative {
      { s1 | s1*2 | }
      { s1 | }
    }
  }
  s1*3 |
  s1*5 | a8 g f a a c <c e>4~ | 2 r |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

cello = \relative {
  \global
  R1*3 |
  \repeat volta 3 {
    c1 | c \section \key f \major |
    f,1 | f | c' | c |
    c1 | f, | c' | c | c |
    c1 | g2. f4~ | 8 c'~2. | a4. g4 c8~4 \section | c1 |
    c1 | g | c | c | c |
    g2 c | c1
  }
  R1*3 |
  R1*7 |
  r2 c |
  \repeat volta 2 {
    c1 | f, | f | c' |
    c1 | c | 2 f, | g1 | c | c |
    c1~ | 4 2 f,4 | c'1 | 4.~4 g8~4~ | 8 c~2. |
    c1 | g | c | c | c2. r4 |
    \alternative {
      { g2 c | c1 | c | }
      { R1 | }
    }
  }
  R1*3 |
  R1*7 |
}

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
          }
          <<
            \new Voice \RehearsalTrack
            \new Dynamics \TempoTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \melody
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
            \addlyrics \wordsThree
          >>
        >>
        \new Staff = harp \with {
          instrumentName = Harp
          shortInstrumentName = "Hrp."
        }
        <<
          \new Voice \harpOne
          \new Voice \harpTwo
        >>
        \new Staff = recorder \with {
          instrumentName = Recorder
          shortInstrumentName = "Rec."
        }
        <<
          \clef "treble^8"
          \new Voice \recorderOne
          \new Voice \recorderTwo
        >>
        \new Staff = cello \with {
          instrumentName = ViolinCello
          shortInstrumentName = "Vc."
        }
        <<
          \clef bass
          \new Voice \cello
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
%        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
          }
          <<
            \new Voice \RehearsalTrack
            \new Dynamics \TempoTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \melody
            \addlyrics \wordsSingle
          >>
        >>
        \new Staff = harp \with {
          instrumentName = Harp
          shortInstrumentName = "Hrp."
        }
        <<
          \new Voice \harpOne
          \new Voice \harpTwo
        >>
        \new Staff = recorder \with {
          instrumentName = Recorder
          shortInstrumentName = "Rec."
        }
        <<
          \clef "treble^8"
          \new Voice \recorderOne
          \new Voice \recorderTwo
        >>
        \new Staff = cello \with {
          instrumentName = ViolinCello
          shortInstrumentName = "Vc."
        }
        <<
          \clef bass
          \new Voice \cello
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
%        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
          }
          <<
            \new Voice \RehearsalTrack
            \new Dynamics \TempoTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \melody
            \addlyrics \wordsSingle
          >>
        >>
        \new Staff = harp \with {
          instrumentName = Harp
          shortInstrumentName = "Hrp."
        }
        <<
          \magnifyStaff #4/7
          \new Voice \harpOne
          \new Voice \harpTwo
        >>
        \new Staff = recorder \with {
          instrumentName = Recorder
          shortInstrumentName = "Rec."
        }
        <<
          \magnifyStaff #4/7
          \clef "treble^8"
          \new Voice \recorderOne
          \new Voice \recorderTwo
        >>
        \new Staff = cello \with {
          instrumentName = ViolinCello
          shortInstrumentName = "Vc."
        }
        <<
          \magnifyStaff #4/7
          \clef bass
          \new Voice \cello
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi
  }
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \RehearsalTrack
            \new Dynamics \TempoTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \melody
            \addlyrics \wordsMidi
          >>
        >>
        \new Staff = harp \with {
          instrumentName = Harp
          shortInstrumentName = "Hrp."
          midiInstrument = "orchestral harp"
        }
        <<
          \new Voice \harpOne
          \new Voice \harpTwo
        >>
        \new Staff = recorder \with {
          instrumentName = Recorder
          shortInstrumentName = "Rec."
          midiInstrument = recorder
        }
        <<
          \clef "treble^8"
          \new Voice \recorderOne
          \new Voice \recorderTwo
        >>
        \new Staff = cello \with {
          instrumentName = ViolinCello
          shortInstrumentName = "Vc."
          midiInstrument = cello
        }
        <<
          \clef bass
          \new Voice \cello
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}

