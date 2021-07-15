\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Precious Blood!"
  subtitle    = "Sankey No. 138"
  subsubtitle = "Sankey 880 No. 298"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Macleod Wylie."
  meter       = "C.M."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
  \mark \markup { \box "C" } s4 s1*3 s2.
  \mark \markup { \box "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  \autoBeamOff
  g'8[aes]
  bes4. c8 bes4 g
  ees4 f g4. 8
  aes4 c bes4. g8
  f2. \bar "|" \break \partial 4 g8[aes]
  bes4. c8 bes4 g % B
  ees4 f g4. 8
  f4 bes a4. c8
  bes2. \bar "|" \break \partial 4 4^\markup\smallCaps Chorus.
  ees4. 8 4 c % C
  bes4. g8 ees4 f
  g4 aes bes4. g8
  f2. \bar "|" \break \partial 4 bes4
  ees4. 8 4 c % D
  bes4. g8 ees4 f
  g4. aes8 g4 f
  ees2.
}

alto = \relative {
  \autoBeamOff
  ees'8[f]
  g4. aes8 g4 ees
  bes4 d ees4. 8
  ees4 aes g4. ees8
  d2. ees8[f]
  g4. aes8 g4 ees % B
  bes4 d ees4. 8
  d4 f f4. ees8
  d2. aes'4
  g4. 8 4 aes % C
  g4. ees8 bes4 d
  ees4 d ees4. 8
  d2. f4
  g4. 8 4 aes
  g4. ees8 4 4
  ees4. 8 4 d
  bes2.
}

tenor = \relative {
  \autoBeamOff
  bes4
  ees4. 8 4 bes
  bes4 4 4. 8
  c4 ees ees4. bes8
  bes2. 4
  ees4. 8 4 bes % B
  bes4 4 4. 8
  bes4 d c4. a8
  bes2. d4
  ees4. bes8 4 c % C
  ees4. bes8 g4 bes
  bes4 4 4. 8
  bes2. d4
  ees4. bes8 4 ees % D
  ees4. bes8 g4 c
  bes4. c8 bes4 aes
  g2.
}

bass= \relative {
  \autoBeamOff
  ees4
  ees4. 8 4 4
  g4 f ees4. 8
  aes,4 4 ees'4. 8
  bes2. ees4
  ees4. 8 4 4 % B
  g4 f ees4. 8
  g4 4 4. 8
  bes,2. bes'4
  ees,4. 8 4 4 % C
  ees4. 8 4 bes
  ees4 f g4. ees8
  bes2. bes'4
  ees,4. 8 4 4 % D
  ees4. 8 4 aes,
  bes4. 8 4 4
  ees2.
}

chorus = \lyricmode {
  Oh, won -- drous is the crim -- son tide,
  Which from my Sa -- viour flowed!
  And still in heaven my song shall be,
  "\"The" pre -- cious, pre -- cious "blood!\""
}

wordsOne = \lyricmode {
  \set stanza = "1."
  The blood has al -- ways pre -- cious been,
  'Tis pre -- cious now to me;
  Through it a -- lone my soul has rest,
  From fear and doubt set free.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I will re -- mem -- ber now no more,
  God's faith -- ful Word has said,
  The fol -- lies and the sins of him
  For whom My Son has bled.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Not all my well re -- mem -- bered sins
  Can star -- tle or dis -- may;
  That pre -- cious blood a -- tones for all,
  And bears my guilt a -- way.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Per -- haps this fee -- ble frame of mine
  Will soon in sick -- ness lie;
  But, rest -- ing on that pre -- cious blood,
  How peace -- ful -- ly I'll die!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "The " "blood " "has " al "ways " pre "cious " "been, "
  "\n'Tis " pre "cious " "now " "to " "me; "
  "\nThrough " "it " a "lone " "my " "soul " "has " "rest, "
  "\nFrom " "fear " "and " "doubt " "set " "free. "
  "\nOh, " won "drous " "is " "the " crim "son " "tide, "
  "\nWhich " "from " "my " Sa "viour " "flowed! "
  "\nAnd " "still " "in " "heaven " "my " "song " "shall " "be, "
  "\n\"The " pre "cious, " pre "cious " "blood!\" "

  \set stanza = "2."
  "\nI " "will " re mem "ber " "now " "no " "more, "
  "\nGod's " faith "ful " "Word " "has " "said, "
  "\nThe " fol "lies " "and " "the " "sins " "of " "him "
  "\nFor " "whom " "My " "Son " "has " "bled. "
  "\nOh, " won "drous " "is " "the " crim "son " "tide, "
  "\nWhich " "from " "my " Sa "viour " "flowed! "
  "\nAnd " "still " "in " "heaven " "my " "song " "shall " "be, "
  "\n\"The " pre "cious, " pre "cious " "blood!\" "

  \set stanza = "3."
  "\nNot " "all " "my " "well " re mem "bered " "sins "
  "\nCan " star "tle " "or " dis "may; "
  "\nThat " pre "cious " "blood " a "tones " "for " "all, "
  "\nAnd " "bears " "my " "guilt " a "way. "
  "\nOh, " won "drous " "is " "the " crim "son " "tide, "
  "\nWhich " "from " "my " Sa "viour " "flowed! "
  "\nAnd " "still " "in " "heaven " "my " "song " "shall " "be, "
  "\n\"The " pre "cious, " pre "cious " "blood!\" "

  \set stanza = "4."
  "\nPer" "haps " "this " fee "ble " "frame " "of " "mine "
  "\nWill " "soon " "in " sick "ness " "lie; "
  "\nBut, " rest "ing " "on " "that " pre "cious " "blood, "
  "\nHow " peace ful "ly " "I'll " "die! "
  "\nOh, " won "drous " "is " "the " crim "son " "tide, "
  "\nWhich " "from " "my " Sa "viour " "flowed! "
  "\nAnd " "still " "in " "heaven " "my " "song " "shall " "be, "
  "\n\"The " pre "cious, " pre "cious " "blood!\" "
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
    \context GrandStaff <<
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
    >>
    \midi {}
  }
}
