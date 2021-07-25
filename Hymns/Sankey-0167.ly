\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Are your Windows open toward Jerusalem?"
  subtitle    = "Sankey No. 167"
  subsubtitle = "Sankey 880 No. 167"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "P. P. Bliss."
%  arranger    = "arranger"
%  opus        = "opus"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key e \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*2 s2
  \mark \markup { \box "B" } s2 s1*3
  \mark \markup { \box "C" } s1*3
  \mark \markup { \box "D" } s1*3
  \mark \markup { \box "E" } s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  gis'8 a
  b8 8 ais b cis4 b
  b4 gis2 a8[gis]
  fis8 8 8 8 \bar "|" \break 8[gis16 fis e8] fis
  gis2. 8 a % B
  b8 8 ais b cis4 b
  b4 e2 8 8 \break
  d4. 8 8(cis4) b8 % C
  b2. \bar "||" 8.^\markup\smallCaps Chorus. 16
  b4 4 8 8 cis8. dis16 \break
  e4. b8 4 8 8 % D
  cis8 b b b ais b a gis
  fis2. 8. 16 \break
  gis8 fis gis a b4 e8. 16 % E
  e4 cis2 8 8
  b8 gis4. 8(fis4) gis8
  e2.
}

alto = \relative {
  \autoBeamOff
  e'8 8
  e8 8 8 8 4 4
  e4 2 fis8[e]
  dis8 8 8 8 8[e16 dis cis8] dis8
  e2. 8 8 % B
  e8 8 8 8 4 4
  e4 gis2 8 8
  fis4. 8 e4. dis8 % C
  dis2. b'8. 16
  b4 4 8 8 a8. 16
  gis4. 8 4 8 8 % D
  a8 gis8 8 8 fisis gis fis e
  dis2. 8. 16
  e8 dis e fis gis4 e8. 16 % E
  e4 a2 8 8
  gis8 e4. dis4. 8
  e2.
}

tenor = \relative {
  \autoBeamOff
  e8 fis
  g8 8 fisis g a4 g
  gis4 b2 4
  b8 8 8 8 4. 8
  b2. e,8 fis % B
  gis8 8 fisis gis a4 gis
  gis4 b2 8 8
  b4. 8 ais4. b8 % C
  b,2. b'8. 16
  b4 4 8 8 8. 16
  b4. e8 4 e,8 8 % D
  e8 8 8 8 8 8 8 gis
  b2. 8. 16
  b8 8 8 8 e4 b8. 16 % E
  c4 e2 8 8
  e8 b4. 8(a4) 8
  gis2.
}

bass = \relative {
  \autoBeamOff
  e8 8
  e8 8 8 8 4 4
  e4 2 4
  b8 8 8 8 4. 8
  e2. 8 8 % B
  e8 8 8 8 4 4
  e4 2 8 8
  f4. 8 4. 8 % C
  b,2. b' 8. 16
  b4 a gis8 8 fis8. 16
  e4. 8 4 8 8 % D
  e8 8 8 8 8 8 8 8
  b2. 8. 16
  b'8 a gis fis e4 gis8. 16 % E
  a4 2 a,8 8
  b8 4. 4. 8
  e2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Are your  win -- dows o -- pen toward Je -- ru -- sa -- lem,
  Tho' as cap -- tives here a "\"lit" -- tle "while\"" we stay?
  For the com -- ing of the King in His glo -- ry,
  Are you watch -- ing day by day?
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Do you see the He -- brew cap -- tive kneel -- ing,
  At morn -- ing, noon, and night, __ to pray?
  In his cham -- ber he re -- mem -- bers Zi -- on,
  Tho' in ex -- ile far a -- way.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Do not fear to tread the fie -- ry fur -- nace,
  Nor shrink the li -- on's den __ to share;
  For the God of Dan -- iel will de -- liv -- er.
  He will send His an -- gel there.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Chil -- dren of the liv -- ing God, take cou -- rage,
  Your great de -- liv -- 'rance sweet -- ly sing;
  Set your fa -- ces toward the hill of Zi -- on,
  Thence to hail your com -- ing King!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Do " "you " "see " "the " He "brew " cap "tive " kneel "ing, "
  "\nAt " morn "ing, " "noon, " "and " "night, "  "to " "pray? "
  "\nIn " "his " cham "ber " "he " re mem "bers " Zi "on, "
  "\nTho' " "in " ex "ile " "far " a "way. "
  "\nAre " "your "  win "dows " o "pen " "toward " Je ru sa "lem, "
  "\nTho' " "as " cap "tives " "here " "a " "\"lit" "tle " "while\" " "we " "stay? "
  "\nFor " "the " com "ing " "of " "the " "King " "in " "His " glo "ry, "
  "\nAre " "you " watch "ing " "day " "by " "day? "

  \set stanza = "2."
  "\nDo " "not " "fear " "to " "tread " "the " fie "ry " fur "nace, "
  "\nNor " "shrink " "the " li "on's " "den "  "to " "share; "
  "\nFor " "the " "God " "of " Dan "iel " "will " de liv "er. "
  "\nHe " "will " "send " "His " an "gel " "there. "
  "\nAre " "your "  win "dows " o "pen " "toward " Je ru sa "lem, "
  "\nTho' " "as " cap "tives " "here " "a " "\"lit" "tle " "while\" " "we " "stay? "
  "\nFor " "the " com "ing " "of " "the " "King " "in " "His " glo "ry, "
  "\nAre " "you " watch "ing " "day " "by " "day? "

  \set stanza = "3."
  "\nChil" "dren " "of " "the " liv "ing " "God, " "take " cou "rage, "
  "\nYour " "great " de liv "'rance " sweet "ly " "sing; "
  "\nSet " "your " fa "ces " "toward " "the " "hill " "of " Zi "on, "
  "\nThence " "to " "hail " "your " com "ing " "King! "
  "\nAre " "your "  win "dows " o "pen " "toward " Je ru sa "lem, "
  "\nTho' " "as " cap "tives " "here " "a " "\"lit" "tle " "while\" " "we " "stay? "
  "\nFor " "the " com "ing " "of " "the " "King " "in " "His " glo "ry, "
  "\nAre " "you " watch "ing " "day " "by " "day? "
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
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
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
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
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
            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
