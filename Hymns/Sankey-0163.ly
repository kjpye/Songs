\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Christ Returneth."
  subtitle    = "Sankey No. 163"
  subsubtitle = "Sankey 880 No. 324"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "H. L. Turner."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key d \major
  \compoundMeter #'((3 4) (4 4))
  \cadenzaOn
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4*17
  \mark \markup { \box "B" } s4*16
  \mark \markup { \box "C" } s4*15
  \mark \markup { \box "D" } s4*18
  \mark \markup { \box "E" } s4*17
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'4 \bar "|"
  fis4 e d \bar "|"
  a'2 b8. a16 \bar "|"
  fis4 e d \bar "|"
  fis4 e r e \bar "|"
  fis4 4 a \bar "|" \break
  d4. e8 d4 \bar "|" % B
  cis4 d b \bar "|"
  b4^! a^! r a \bar "|"
  a4 b cis \bar "|"
  d2 cis8. d16 \bar "|" \break
  e4. d8 e4 \bar "|" % C
  fis4 d \slurDashed d8.(16) \slurSolid \bar "|"
  d4. cis8 b4 \bar "|"
  a4(d) cis \bar "|"
  d2. \bar "|" \break
  a2^\markup\smallCaps Chorus. fis4 \bar "|" % D
  fis4 g a \bar "|"
  b2 4 \bar "|"
  d2 8. 16 \bar "|"
  d4 cis b \bar "|"
  a2 cis8. 16 \bar "|" \break
  d4 4 cis8. 16 \bar "|" % E
  d4 d e8. 16 \bar "|"
  fis4 d cis \bar "|"
  d2 fis,8.^\markup\italic rit. 16 \bar "|"
  a4 g e \bar "|"
  d2
}

sopranoA = \relative {
  \autoBeamOff
  d'4 \bar "|"
  fis4 e d \bar "|"
  a'2 b8. a16 \bar "|"
  fis4 e d \bar "|"
  fis4 e r e \bar "|"
  fis4 4 a \bar "|" \break
  d4. e8 d4 \bar "|" % B
  cis4 d b \bar "|"
  b4^! a^! r a \bar "|"
  a4 b cis \bar "|"
  d2 cis8. d16 \bar "|" \break
  e4. d8 e4 \bar "|" % C
  fis4 d d8. 16 \bar "|"
  d4. cis8 b4 \bar "|"
  a4(d) cis \bar "|"
  d2. \bar "|" \break
  a2^\markup\smallCaps Chorus. fis4 \bar "|" % D
  fis4 g a \bar "|"
  b2 4 \bar "|"
  d2 8. 16 \bar "|"
  d4 cis b \bar "|"
  a2 cis8. 16 \bar "|" \break
  d4 4 cis8. 16 \bar "|" % E
  d4 d e8. 16 \bar "|"
  fis4 d cis \bar "|"
  d2 fis,8.^\markup\italic rit. 16 \bar "|"
  a4 g e \bar "|"
  d2
}

sopranoB = \relative {
  \autoBeamOff
  d'4 \bar "|"
  fis4 e d \bar "|"
  a'2 b8. a16 \bar "|"
  fis4 e d \bar "|"
  fis4 e r e \bar "|"
  fis4 4 a \bar "|" \break
  d4. e8 d4 \bar "|" % B
  cis4 d b \bar "|"
  b4^! a^! r a \bar "|"
  a4 b cis \bar "|"
  d2 cis8. d16 \bar "|" \break
  e4. d8 e4 \bar "|" % C
  fis4 d d \bar "|"
  d4. cis8 b4 \bar "|"
  a4(d) cis \bar "|"
  d2. \bar "|" \break
  a2^\markup\smallCaps Chorus. fis4 \bar "|" % D
  fis4 g a \bar "|"
  b2 4 \bar "|"
  d2 8. 16 \bar "|"
  d4 cis b \bar "|"
  a2 cis8. 16 \bar "|" \break
  d4 4 cis8. 16 \bar "|" % E
  d4 d e8. 16 \bar "|"
  fis4 d cis \bar "|"
  d2 fis,8.^\markup\italic rit. 16 \bar "|"
  a4 g e \bar "|"
  d2
}

alto = \relative {
  \autoBeamOff
  d'4
  d4 4 4
  d2 8. 16
  d4 4 4
  d4 cis r cis
  d4 4 gis
  fis4. g8 fis4 % B
  e4 gis gis
  a4^! a^! r g
  fis4 g a
  fis2 e8. fis16
  g4. fis8 g4 % C
  a4 fis \slurDashed a8.(16) \slurSolid
  b4. a8 g4
  fis2 g4
  fis2.
  fis2 d4 % D
  d4 cis d
  d2 4
  g2 8. 16
  b4 a g
  fis2 e8. 16
  fis4 4 g8. 16 % E
  fis4 4 a8. 16
  a4 fis g
  fis2 d8. 16
  d4 e cis
  d2
}

altoA = \relative {
  \autoBeamOff
  d'4
  d4 4 4
  d2 8. 16
  d4 4 4
  d4 cis r cis
  d4 4 gis
  fis4. g8 fis4 % B
  e4 gis gis
  a4^! a^! r g
  fis4 g a
  fis2 e8. fis16
  g4. fis8 g4 % C
  a4 fis a8. 16
  b4. a8 g4
  fis2 g4
  fis2.
  fis2 d4 % D
  d4 cis d
  d2 4
  g2 8. 16
  b4 a g
  fis2 e8. 16
  fis4 4 g8. 16 % E
  fis4 4 a8. 16
  a4 fis g
  fis2 d8. 16
  d4 e cis
  d2
}

altoB = \relative {
  \autoBeamOff
  d'4
  d4 4 4
  d2 8. 16
  d4 4 4
  d4 cis r cis
  d4 4 gis
  fis4. g8 fis4 % B
  e4 gis gis
  a4^! a^! r g
  fis4 g a
  fis2 e8. fis16
  g4. fis8 g4 % C
  a4 fis a
  b4. a8 g4
  fis2 g4
  fis2.
  fis2 d4 % D
  d4 cis d
  d2 4
  g2 8. 16
  b4 a g
  fis2 e8. 16
  fis4 4 g8. 16 % E
  fis4 4 a8. 16
  a4 fis g
  fis2 d8. 16
  d4 e cis
  d2
}

tenor = \relative {
  \autoBeamOff
  fis4
  a4 g fis
  fis2 g8. fis16
  a4 g fis
  a4^! a^! r a
  a4 4 4
  b4. a8 4 % B
  a4 b d
  d4^! cis^! r cis
  d4 4 a
  a2 8. 16
  cis4. d8 cis4 % C
  d4 4 \slurDashed d8.(16) \slurSolid
  d4. 8 4
  d4(a) a
  a2.
  d2 a4 % D
  a4 4 4
  d2 4
  b2 8. 16
  b4 cis d
  d2 a8. 16
  a4 4 8. 16 % E
  a4 4 cis8. 16
  d4 a a
  a2 8. 16
  fis4 a g
  fis2
}

tenorA = \relative {
  \autoBeamOff
  fis4
  a4 g fis
  fis2 g8. fis16
  a4 g fis
  a4^! a^! r a
  a4 4 4
  b4. a8 4 % B
  a4 b d
  d4^! cis^! r cis
  d4 4 a
  a2 8. 16
  cis4. d8 cis4 % C
  d4 4 d8. 16
  d4. 8 4
  d4(a) a
  a2.
  d2 a4 % D
  a4 4 4
  d2 4
  b2 8. 16
  b4 cis d
  d2 a8. 16
  a4 4 8. 16 % E
  a4 4 cis8. 16
  d4 a a
  a2 8. 16
  fis4 a g
  fis2
}

tenorB = \relative {
  \autoBeamOff
  fis4
  a4 g fis
  fis2 g8. fis16
  a4 g fis
  a4^! a^! r a
  a4 4 4
  b4. a8 4 % B
  a4 b d
  d4^! cis^! r cis
  d4 4 a
  a2 8. 16
  cis4. d8 cis4 % C
  d4 4 d
  d4. 8 4
  d4(a) a
  a2.
  d2 a4 % D
  a4 4 4
  d2 4
  b2 8. 16
  b4 cis d
  d2 a8. 16
  a4 4 8. 16 % E
  a4 4 cis8. 16
  d4 a a
  a2 8. 16
  fis4 a g
  fis2
}

bass = \relative {
  \autoBeamOff
  d4
  d4 4 4
  d2 8. 16
  d4 4 4
  a4^! a^! r a
  d4 4 cis
  b4. cis8 d4 % B
  e4 4 4
  a,4^! a^! r a
  a'4 g e
  d2 e8. d16
  a4. 8 4 % C
  d4 4 \slurDashed fis8.(16) \slurSolid
  g4. 8 4
  a2 a,4
  d2.
  d2 4 % D
  d4 e fis
  g2 4
  g2 8. 16
  g4 4 4
  d2 a'8. 16
  d,4 4 a8. 16 % E
  d4 4 a'8. 16
  d,4 4 a
  d2 8. 16
  a4 4 4
  d2
}

bassA = \relative {
  \autoBeamOff
  d4
  d4 4 4
  d2 8. 16
  d4 4 4
  a4^! a^! r a
  d4 4 cis
  b4. cis8 d4 % B
  e4 4 4
  a,4^! a^! r a
  a'4 g e
  d2 e8. d16
  a4. 8 4 % C
  d4 4 fis8. 16
  g4. 8 4
  a2 a,4
  d2.
  d2 4 % D
  d4 e fis
  g2 4
  g2 8. 16
  g4 4 4
  d2 a'8. 16
  d,4 4 a8. 16 % E
  d4 4 a'8. 16
  d,4 4 a
  d2 8. 16
  a4 4 4
  d2
}

bassB = \relative {
  \autoBeamOff
  d4
  d4 4 4
  d2 8. 16
  d4 4 4
  a4^! a^! r a
  d4 4 cis
  b4. cis8 d4 % B
  e4 4 4
  a,4^! a^! r a
  a'4 g e
  d2 e8. d16
  a4. 8 4 % C
  d4 4 fis
  g4. 8 4
  a2 a,4
  d2.
  d2 4 % D
  d4 e fis
  g2 4
  g2 8. 16
  g4 4 4
  d2 a'8. 16
  d,4 4 a8. 16 % E
  d4 4 a'8. 16
  d,4 4 a
  d2 8. 16
  a4 4 4
  d2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  O lord Je -- sus, how long?
  How long ere we shout the glad song?—
  Christ re -- turn -- eth, Hal -- le -- lu -- jah!
  hal -- le -- lu -- jah! A -- men,
  Hal -- le -- lu -- jah!
  A -- men!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  It may be at morn, when the day is a -- wak -- ing,
  When sun -- light thro dark -- ness and sha -- dow is break -- ing,
  That Je -- sus will come in the ful -- ness of glo -- ry,
  \nom To re -- ceive \yesm from the world "\"His" "own.\""
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  It may be at mid -- day, it may be at twi -- light,
  It may be, per -- chance, that the black -- ness of mid -- night
  Will burst in -- to light in the blaze of His glo -- ry,
  When Je -- sus re -- ceives "\"His" "own.\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  While hosts cry Ho -- san -- na, from hea -- ven de -- scend -- ing,
  With glo -- ri -- fied saints and the an -- gels at -- tend -- ing,
  With grace on His brow, like a ha -- lo of glo -- ry,
  When Je -- sus re -- ceives "\"His" "own.\""
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Oh, joy! oh, de -- light! should we go with -- out dy  -- ing
  No sick -- ness, no sad -- ness. no dread, and no cry -- ing;
  Caught up thro' the clouds with our Lord in -- to glo -- ry,
  When Je -- sus re -- ceives "\"His" "own.\""
}
  
wordsSingle = \lyricmode {
  \set stanza = "1."
  It may be at morn, when the day is a -- wak -- ing,
  When sun -- light thro dark -- ness and sha -- dow is break -- ing,
  That Je -- sus will come in the ful -- ness of glo -- ry,
  To re -- ceive from the world "\"His" "own.\""
  O lord Je -- sus, how long?
  How long ere we shout the glad song?—
  Christ re -- turn -- eth, Hal -- le -- lu -- jah!
  hal -- le -- lu -- jah! A -- men,
  Hal -- le -- lu -- jah!
  A -- men!

  \set stanza = "2."
  It may be at mid -- day, it may be at twi -- light,
  It may be, per -- chance, that the black -- ness of mid -- night
  Will burst in -- to light in the blaze of His glo -- ry,
  When Je -- sus re -- ceives "\"His" "own.\""
  O lord Je -- sus, how long?
  How long ere we shout the glad song?—
  Christ re -- turn -- eth, Hal -- le -- lu -- jah!
  hal -- le -- lu -- jah! A -- men,
  Hal -- le -- lu -- jah!
  A -- men!

  \set stanza = "3."
  While hosts cry Ho -- san -- na, from hea -- ven de -- scend -- ing,
  With glo -- ri -- fied saints and the an -- gels at -- tend -- ing,
  With grace on His brow, like a ha -- lo of glo -- ry,
  When Je -- sus re -- ceives "\"His" "own.\""
  O lord Je -- sus, how long?
  How long ere we shout the glad song?—
  Christ re -- turn -- eth, Hal -- le -- lu -- jah!
  hal -- le -- lu -- jah! A -- men,
  Hal -- le -- lu -- jah!
  A -- men!

  \set stanza = "4."
  Oh, joy! oh, de -- light! should we go with -- out dy  -- ing
  No sick -- ness, no sad -- ness. no dread, and no cry -- ing;
  Caught up thro' the clouds with our Lord in -- to glo -- ry,
  When Je -- sus re -- ceives "\"His" "own.\""
  O lord Je -- sus, how long?
  How long ere we shout the glad song?—
  Christ re -- turn -- eth, Hal -- le -- lu -- jah!
  hal -- le -- lu -- jah! A -- men,
  Hal -- le -- lu -- jah!
  A -- men!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "It " "may " "be " "at " "morn, " "when " "the " "day " "is " a wak "ing, "
  "\nWhen " sun "light " "thro " dark "ness " "and " sha "dow " "is " break "ing, "
  "\nThat " Je "sus " "will " "come " "in " "the " ful "ness " "of " glo "ry, "
  "\nTo " re "ceive " "from " "the " "world " "\"His " "own.\" "
  "\nO " "lord " Je "sus, " "how " "long? "
  "\nHow " "long " "ere " "we " "shout " "the " "glad " "song?— "
  "\nChrist " re turn "eth, " Hal le lu "jah! "
  "\nhal" le lu "jah! " A "men, "
  "\nHal" le lu "jah! "
  "\nA" "men! "

  \set stanza = "2."
  "\nIt " "may " "be " "at " mid "day, " "it " "may " "be " "at " twi "light, "
  "\nIt " "may " "be, " per "chance, " "that " "the " black "ness " "of " mid "night "
  "\nWill " "burst " in "to " "light " "in " "the " "blaze " "of " "His " glo "ry, "
  "\nWhen " Je "sus " re "ceives " "\"His " "own.\" "
  "\nO " "lord " Je "sus, " "how " "long? "
  "\nHow " "long " "ere " "we " "shout " "the " "glad " "song?— "
  "\nChrist " re turn "eth, " Hal le lu "jah! "
  "\nhal" le lu "jah! " A "men, "
  "\nHal" le lu "jah! "
  "\nA" "men! "

  \set stanza = "3."
  "\nWhile " "hosts " "cry " Ho san "na, " "from " hea "ven " de scend "ing, "
  "\nWith " glo ri "fied " "saints " "and " "the " an "gels " at tend "ing, "
  "\nWith " "grace " "on " "His " "brow, " "like " "a " ha "lo " "of " glo "ry, "
  "\nWhen " Je "sus " re "ceives " "\"His " "own.\" "
  "\nO " "lord " Je "sus, " "how " "long? "
  "\nHow " "long " "ere " "we " "shout " "the " "glad " "song?— "
  "\nChrist " re turn "eth, " Hal le lu "jah! "
  "\nhal" le lu "jah! " A "men, "
  "\nHal" le lu "jah! "
  "\nA" "men! "

  \set stanza = "4."
  "\nOh, " "joy! " "oh, " de "light! " "should " "we " "go " with "out " dy "ing "
  "\nNo " sick "ness, " "no " sad "ness. " "no " "dread, " "and " "no " cry "ing; "
  "\nCaught " "up " "thro' " "the " "clouds " "with " "our " "Lord " in "to " glo "ry, "
  "\nWhen " Je "sus " re "ceives " "\"His " "own.\" "
  "\nO " "lord " Je "sus, " "how " "long? "
  "\nHow " "long " "ere " "we " "shout " "the " "glad " "song?— "
  "\nChrist " re turn "eth, " Hal le lu "jah! "
  "\nhal" le lu "jah! " A "men, "
  "\nHal" le lu "jah! "
  "\nA" "men! "
}

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \sopranoA \sopranoB \sopranoB \sopranoB }
            \new Voice = "women" \partCombine { \global \sopranoA \sopranoB \sopranoB \sopranoB \bar "|." }
                                               { \global \altoA \nl \altoB \nl \altoB \nl \altoB }
            \new Lyrics \lyricsto "aligner" \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenorA \tenorB \tenorB \tenorB }
                                            { \global \bassA \bassB \bassB \bassB }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \sopranoA \sopranoB \sopranoB \sopranoB }
            \new Voice = "women" \partCombine { \global \sopranoA \sopranoB \sopranoB \sopranoB \bar "|." }
                                               { \global \altoA \nl \altoB \nl \altoB \nl \altoB }
            \new Lyrics \lyricsto "aligner" \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenorA \tenorB \tenorB \tenorB }
                                            { \global \bassA \bassB \bassB \bassB }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \sopranoA \sopranoB \sopranoB \sopranoB \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new NullVoice { \global \altoA \nl \altoB \nl \altoB \nl \altoB }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenorA \tenorB \tenorB \tenorB }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bassA \bassB \bassB \bassB }
          >>
        >>
    \midi {}
  }
}
