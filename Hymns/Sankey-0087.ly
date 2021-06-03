\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Golden Harps are Sounding"
  subtitle    = "Sankey No. 87"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Frances R. Havergal."
%  arranger    = "arranger"
%  opus        = "opus"

  meter       = "6.5., 12 lines."
  piece       = \markup\smallCaps "Hermas."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key a \major
  \time 4/4
  \tempo 4=120
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s1*5
  \mark \markup { \box "B" } s1*5
  \mark \markup { \box "C" } s1*4 s2
  \mark \markup { \box "D" } s2 s1*4
  \mark \markup { \box "E" } s1*5
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
}

soprano = \relative {
  cis''4. 8 4 b
  a2 fis
  d'4. cis8 b4 a
  gis1
  e'4 b cis d
  cis2 a % B
  b4. a8 gis4 fis
  e1
  e4 e fis gis
  b2 a
  a4 a d d % C
  cis1
  a4 b cis d
  e2 e,
  fis4 d' cis4 b
  a1 \bar "||" % D
  cis4.^\markup\smallCaps Chorus. 8 4 b
  a2 fis
  d'4. cis8 b4 a
  gis1 % E
  a4 b cis d
  e2 e,
  fis4 d' cis b
  a1
  
}

alto = \relative {
  a'4. 8 gis4 4
  fis2 cis
  fis4. e8 fis4 dis
  e1
  gis4 4 a gis
  a2 e % B
  e4. fis8 e4 dis
  e1
  cis4 b d d
  e2 e
  fis4 e fis e % C
  e1
  e4 e e a
  e2 e
  d4 fis e4. d8
  cis1 % D
  a'4. 8 gis4 4
  fis2 cis
  fis4. e8 fis4 dis
  e1 % E
  e4 gis a a
  e2 e
  d4 fis e4. d8
  cis1
}

tenor = \relative {
  e'4. 8 eis4 cis
  c2 a
  b4. e8 d4 a
  b1
  b4 e e d
  e2 cis % B
  b4. cis8 b4 a
  gis1
  a4 gis a d
  d2 cis
  a4 a a gis % C
  a1
  cis4 b a a
  a2 a
  a4 d a gis
  a1 % D
  e'4. 8 eis4 cis
  cis2 a
  b4. e8 d4 a
  b1 % E
  e4 d e a,
  a2 a
  a4 d a gis
  a1
}

bass= \relative {
  a4 a, cis eis
  fis2 2
  b,4. cis8 d4 fis
  e1
  e4 d cis b
  a2 a % B
  gis4. a8 b4 b
  e1
  a,4 e' d b
  gis2 a
  d4 cis b e % C
  a,1
  a'4 gis a fis
  cis2 2
  d4 b e e
  a,1 % D
  a'4 a, cis eis
  fis2 fis
  b,4. cis8 d4 fis
  e1 % E
  cis'4 b a fis
  cis2 2
  d4 b e e
  a,1
}

chorus = \lyricmode {
  All His work is end -- ed,
  Joy -- ful -- ly we sing;
  Je -- sus hath as -- cend -- ed—
  Glo -- ry to our King!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Gold -- en harps are sound -- ing,
  An -- gel voi -- ces ring,
  Pearl -- y gates are o -- pen'd,
  O -- pen'd for the King;
  Christ, the King of Glo -- ry,
  Je -- sus, King of Love,
  Is gone up in tri -- umph
  To His throne a -- bove.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  He who came to save us,
  He who bled and died,
  Now is crown'd with glo -- ry
  At His Fa -- ther's side:
  Nev -- er -- more to suf -- fer,
  Nev -- er -- more to die,
  Je -- sus, King of Glo -- ry
  Is gone up on high.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Pray -- ing for His chil -- dren
  In that bless -- ed place,
  Call -- ing them to glo -- ry,
  Send -- ing them His grace;
  His bright home pre -- par -- ing,
  Lit -- tle ones, for you,
  Je -- sus ev -- er liv -- eth,
  Ev -- er lov -- eth too.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Gold" "en " "harps " "are " sound "ing, "
  "\nAn" "gel " voi "ces " "ring, "
  "\nPearl" "y " "gates " "are " o "pen'd, "
  "\nO" "pen'd " "for " "the " "King; "
  "\nChrist, " "the " "King " "of " Glo "ry, "
  "\nJe" "sus, " "King " "of " "Love, "
  "\nIs " "gone " "up " "in " tri "umph "
  "\nTo " "His " "throne " a "bove. "
  "\nAll " "His " "work " "is " end "ed, "
  "\nJoy" ful "ly " "we " "sing; "
  "\nJe" "sus " "hath " as cend "ed— "
  "\nGlo" "ry " "to " "our " "King! "

  \set stanza = "2."
  "\nHe " "who " "came " "to " "save " "us, "
  "\nHe " "who " "bled " "and " "died, "
  "\nNow " "is " "crown'd " "with " glo "ry "
  "\nAt " "His " Fa "ther's " "side: "
  "\nNev" er "more " "to " suf "fer, "
  "\nNev" er "more " "to " "die, "
  "\nJe" "sus, " "King " "of " Glo "ry "
  "\nIs " "gone " "up " "on " "high. "
  "\nAll " "His " "work " "is " end "ed, "
  "\nJoy" ful "ly " "we " "sing; "
  "\nJe" "sus " "hath " as cend "ed— "
  "\nGlo" "ry " "to " "our " "King! "

  \set stanza = "3."
  "\nPray" "ing " "for " "His " chil "dren "
  "\nIn " "that " bless "ed " "place, "
  "\nCall" "ing " "them " "to " glo "ry, "
  "\nSend" "ing " "them " "His " "grace; "
  "\nHis " "bright " "home " pre par "ing, "
  "\nLit" "tle " "ones, " "for " "you, "
  "\nJe" "sus " ev "er " liv "eth, "
  "\nEv" "er " lov "eth " "too. "
  "\nAll " "His " "work " "is " end "ed, "
  "\nJoy" ful "ly " "we " "sing; "
  "\nJe" "sus " "hath " as cend "ed— "
  "\nGlo" "ry " "to " "our " "King! "
}
  
nl = { \bar "||" \break }

\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
%            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
          >>
        >>
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
    \unfoldRepeats
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
          >>
        >>
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    \unfoldRepeats
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
          >>
        >>
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
    \unfoldRepeats
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
