\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "My Faith Looks up to Thee."
  subtitle    = "Sankey No. 235"
  subsubtitle = "Sankey 880 No. 160"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Dr. L. Mason."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Ray Palmer."
  meter       = \markup\smallCaps "6.6.4.6.6.6.4."
  piece       = \markup\smallCaps "Olivet."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*3
  \mark \markup { \box "B" } s1*4
  \mark \markup { \box "C" } s1*3
  \mark \markup { \box "D" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'2 4 bes'
  bes4. aes8 g2
  f2 4 aes
  aes4. g8 f2 % B
  g2 f4 a
  bes1
  bes2 g4 aes
  bes4. c8 bes2 % C
  bes2 g4 aes
  bes4. c8 bes2
  ees2 d4 c % D
  bes4. aes8 g4 ees
  f2 d
  ees1
}

alto = \relative {
  \autoBeamOff
  ees'2 4 g
  f4. d8 ees2
  d2 4 f
  f4. ees8 d2 % B
  ees2 d4 ees
  d1
  ees2 4 4
  ees4. 8 2 % C
  ees2 4 4
  ees4. 8 2
  ees2 4 4 % D
  ees4. d8 ees4 4
  c2 bes
  bes1
}

tenor = \relative {
  \autoBeamOff
  g2 bes4 g
  bes4. 8 2
  bes2 4 4
  bes4. 8 2 % B
  bes2 4 c
  bes1
  g2 ees4 f
  g4. aes8 g2 % C
  g2 ees4 f
  g4. aes8 g2
  g4(c) bes aes % D
  g4. f8 ees4 bes'
  aes2 f
  g1

}

bass = \relative {
  \autoBeamOff
  ees2 4 4
  d4. bes8 ees2
  bes2 4 4
  d4. ees8 bes2 % B
  ees2 f4 4
  bes,1
  ees2 4 4
  ees4. 8 2 % C
  ees2 4 4
  ees4. 8 2
  ees2 4 4 % D
  ees4. bes8 c4 g
  aes2 bes
  ees1
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  My faith looks up to Thee,
  Thou Lamb of Cal -- va -- ry,
  Sa -- viour Di -- vine;
  Now hear me while I pray:
  Take all my guilt a -- way;
  Oh, let me from this day
  Be whol -- ly Thine.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  May Thy rich grace im -- part
  Strength to my faint -- ing heart,
  My zeal in -- spire;
  As Thou hast died for me,
  Oh, make my love to Thee
  Pure, warm, and change -- less be—
  A liv -- ing fire.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  While life's dark maze I tread,
  And griefs a -- round me spread,
  Be Thou my Guide:
  Bid dark -- ness turn to day,
  Wipe sor -- row's tears a -- way;
  Nor let me ev -- er stray
  From Thee a -- side.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  When ends life's tran -- sient dream—
  When death's cold sul -- len stream
  Shalt o'er me roll—
  Blest Sa -- viour, then in love,
  Fear and sid -- trust re -- move;
  Oh, bear me safe a -- bove—
  A ran -- somed soul.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "My " "faith " "looks " "up " "to " "Thee, "
  "\nThou " "Lamb " "of " Cal va "ry, "
  "\nSa" "viour " Di "vine; "
  "\nNow " "hear " "me " "while " "I " "pray: "
  "\nTake " "all " "my " "guilt " a "way; "
  "\nOh, " "let " "me " "from " "this " "day "
  "\nBe " whol "ly " "Thine. "

  \set stanza = "2."
  "\nMay " "Thy " "rich " "grace " im "part "
  "\nStrength " "to " "my " faint "ing " "heart, "
  "\nMy " "zeal " in "spire; "
  "\nAs " "Thou " "hast " "died " "for " "me, "
  "\nOh, " "make " "my " "love " "to " "Thee "
  "\nPure, " "warm, " "and " change "less " "be— "
  "\nA " liv "ing " "fire. "

  \set stanza = "3."
  "\nWhile " "life's " "dark " "maze " "I " "tread, "
  "\nAnd " "griefs " a "round " "me " "spread, "
  "\nBe " "Thou " "my " "Guide: "
  "\nBid " dark "ness " "turn " "to " "day, "
  "\nWipe " sor "row's " "tears " a "way; "
  "\nNor " "let " "me " ev "er " "stray "
  "\nFrom " "Thee " a "side. "

  \set stanza = "4."
  "\nWhen " "ends " "life's " tran "sient " "dream— "
  "\nWhen " "death's " "cold " sul "len " "stream "
  "\nShalt " "o'er " "me " "roll— "
  "\nBlest " Sa "viour, " "then " "in " "love, "
  "\nFear " "and " sid "trust " re "move; "
  "\nOh, " "bear " "me " "safe " a "bove— "
  "\nA " ran "somed " "soul. "
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
    \midi {}
  }
}
