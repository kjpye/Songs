\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Near the Cross."
  subtitle    = "Sankey No. 134"
  subsubtitle = "Sankey 880 No. 127"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. H. Doane."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*4 \break
  \mark \markup { \box "B" } s2.*4 \break
  \mark \markup { \box "C" } s2.*4 \break
  \mark \markup { \box "D" } s2.*4 \break
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  a'4 bes8 a4 g8
  f4 d8 d4 r8
  c4 f8 4 a8
  a4. g4 r8
  a4 bes8 a4 g8 % B
  f4 d8 4 r8
  c4 f8 4 e8
  g4. f4 r8
  a4^\markup\smallCaps Chorus. c8 4. % C
  bes4 d8 4.
  c4 d8 c4 a8
  a4. g
  a4 bes8 a4 g8 % D
  f4 d8 4 r8
  c4 f8 4 e8
  g4. f4 r8
}

alto = \relative {
  \autoBeamOff
  f'4 8 4 e8
  d4 8 bes4 r8
  c4 8 4 f8
  f4. e4 r8
  f4 8 4 e8 % B
  d4 8 8[bes] r
  a4 c8 4 8
  c4. 4 r8
  f4 8 4. % C
  f4 bes8 4.
  a4 bes8 a4 f8
  f4. e
  c4 d8 c4 cis8 % D
  d4 bes8 4 r8
  a4 c8 4 8
  c4. 4 r8
}

tenor = \relative {
  c'4 d8 c4 bes8
  a4 bes8 f4 r8
  a4 8 c4 8
  c4. 4 r8
  c4 d8 c4 bes8 % B
  a4 bes8 4 r8
  f4 a8 4 g8
  bes4. a4 r8
  c4 a8 4. % C
  d4 f8 4.
  f4 8 4 c8
  c4. 4.
  f,4 8 4 e8 % D
  d4 f8 4 r8
  f4 a8 4 g8
  bes4. a4 r8
}

bass= \relative {
  f4 8 4 c8
  d4 bes8 4 r8
  f'4 8 a4 f8
  c4. 4 r8
  f4 8 4 c8 % B
  d4 bes8 4 r8
  c4 8 4 8
  c4. f4 r8
  f4 8 4. % C
  bes4 8 4.
  f4 8 4 8
  c4. 4.
  f4 8 4 a,8 % D
  bes 4 8 4 r8
  c4 8 4 8
  c4. f4 r8
}

chorus = \lyricmode {
  In the Cross, in the Cross,
  Be my glo -- ry ev -- er;
  Till my rap -- tured soul shall find
  Rest be -- yond the riv -- er.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Je -- sus, keep me near the Cross:
  There a pre -- cious foun -- tain,
  Free to all— a heal -- ing stream,
  Flows from Cal -- vary's moun -- tain.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Near the Cross, a trem -- bling soul
  Love and mer -- cy found me;
  There the Bright and Morn -- ing Star
  Shed its beams a -- round me
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Near the Cross! O Lamb of God,
  Bring its scenes be -- fore me;
  Help me walk from day to day,
  With its sha -- dow o'er me.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Near the Cross I'll watch and wait,
  Hop -- ing, trust -- ing ev -- er,
  Till I reach the gold -- en strand
  Just be -- yond the riv -- er.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Je" "sus, " "keep " "me " "near " "the " "Cross: "
  "\nThere " "a " pre "cious " foun "tain, "
  "\nFree " "to " "all— " "a " heal "ing " "stream, "
  "\nFlows " "from " Cal "vary's " moun "tain. "
  "\nIn " "the " "Cross, " "in " "the " "Cross, "
  "\nBe " "my " glo "ry " ev "er; "
  "\nTill " "my " rap "tured " "soul " "shall " "find "
  "\nRest " be "yond " "the " riv "er. "

  \set stanza = "2."
  "\nNear " "the " "Cross, " "a " trem "bling " "soul "
  "\nLove " "and " mer "cy " "found " "me; "
  "\nThere " "the " "Bright " "and " Morn "ing " "Star "
  "\nShed " "its " "beams " a "round " "me "
  "\nIn " "the " "Cross, " "in " "the " "Cross, "
  "\nBe " "my " glo "ry " ev "er; "
  "\nTill " "my " rap "tured " "soul " "shall " "find "
  "\nRest " be "yond " "the " riv "er. "

  \set stanza = "3."
  "\nNear " "the " "Cross! " "O " "Lamb " "of " "God, "
  "\nBring " "its " "scenes " be "fore " "me; "
  "\nHelp " "me " "walk " "from " "day " "to " "day, "
  "\nWith " "its " sha "dow " "o'er " "me. "
  "\nIn " "the " "Cross, " "in " "the " "Cross, "
  "\nBe " "my " glo "ry " ev "er; "
  "\nTill " "my " rap "tured " "soul " "shall " "find "
  "\nRest " be "yond " "the " riv "er. "

  \set stanza = "4."
  "\nNear " "the " "Cross " "I'll " "watch " "and " "wait, "
  "\nHop" "ing, " trust "ing " ev "er, "
  "\nTill " "I " "reach " "the " gold "en " "strand "
  "\nJust " be "yond " "the " riv "er. "
  "\nIn " "the " "Cross, " "in " "the " "Cross, "
  "\nBe " "my " glo "ry " ev "er; "
  "\nTill " "my " rap "tured " "soul " "shall " "find "
  "\nRest " be "yond " "the " riv "er. "
}
  
nl = { \bar "||" \break }

\book {
  \bookOutputSuffix "repeat"
  \score {
      <<
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
      <<
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
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
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
      <<
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
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
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
%    \articulate
      <<
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
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass }
          >>
        >>
      >>
    \midi {}
  }
}
