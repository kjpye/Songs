\version "2.25.13"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus Leads us Home."
  subtitle    = "Sankey No. 824"
  subsubtitle = "N. H. No. 119"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. H. Tenney."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "E. W. Chapman."
  meter       = \markup\smallCaps "7.6. D."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 4/4
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s8 s1*2 s2
  \textMark \markup { \box \bold "B" } s2 s1*2
  \textMark \markup { \box \bold "C" }    s1*2 s2..
  \textMark \markup { \box \bold "D" } s8 s1   s2..
  \textMark \markup { \box \bold "E" } s8 s1   s2..
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'8 | 8. 16 8. f16 e4 8. 16 |f8. 16 8. e16 d4. 8 | e8. 16 8. f16 \bar "|" \break
  a4 g8. 16 | 8. 16 b8. a16 g4. 8 | c8. 16 8. d16 e4 c8. b16 |
  a8. 16 8. b16 c4. a8 | g8. 16 8. a16 g4 e8. g16 | c8. 16 8. 16 c4.
  \section \sectionLabel\markup\smallCaps Refrain. \break
  g8 | c8. 16 8. b16 a4. 8 d8. 16 8. c16 b4. \bar "|" \break
  b8 | c8. d16 c8. b16 a4 c8.\fermata a16 | g8. c16 8. b16 c4.
}

alto = \relative {
  \autoBeamOff
  e'8 | 8. 16 8. d16 c4 8. 16 | d8. 16 8. c16 b4. 8 | c8. 16 8. d16
  f4 e8. 16 | d8. 16 8. c16 b4. f'8 | e8. 16 8. f16 g4 e8. g16 |
  f8. 16 8. g16 a4. f8 | e8. 16 8. g16 e4 c8. e16 | 8. 16 8. f16 e4. \section
  e8 | 8. 16 8. g16 f4. 8 | fis8. 16 8. a16 g4.
  g8 | 8. 16 8. 16 f4 a8.\fermata f16 | e8. g16 f8. 16 e4.
}

tenor = \relative {
  \autoBeamOff
  c'8 | 8. 16 8. g16 4 8. 16 | 8. 16 8. 16 4. 8 | 8. 16 8. 16
  c4 8. 16 | b8. 16 g8. fis16 g4. b8 | c8. g16 8. c16 4 8. 16 |
  c8. 16 8. 16 4. 8 | 8. 16 8. 16 4 g8. 16 | 8. 16 8. 16 4. \section
  c8 | g8. 16 8. c16 8. 16 8 a | 8. 16 8. d16 8. 16 8
  d8 | c8. 16 8. 16 4 8.\fermata 16 | 8. e16 e8. 16 c4.
}

bass = \relative {
  \autoBeamOff
  c8 | 8. 16 8. 16 4 8. 16 | g8. 16 8. 16 4. 8 | c8. 16 8. 16
  c4 8. 16 | d8. 16 8. 16 g4. 8 | c,8. 16 8. 16 4 8. e16 |
  f8. 16 8. 16 4. 8 | c8. 16 8. 16 4 8. 16 | 8. e16 g8. 16 c,4. \section
  c8 | 8. 16 8. e16 f8. 16 8 8 | d8. 16 8. 16 g8. 16 8
  f8 | e8. 16 8. 16 f4 8.\fermata 16 | g8. 16 8. 16 c,4.
}

chorus = \lyricmode {
  That Je -- sus leads us home,
  That Je -- sus leads us home,
  How sweet the blest as -- sur -- ance,
  That Je -- sus leads us home!
}

chorusMen = \lyricmode {
  \repeat unfold 52 \skip 1
  _ _ _ _ _ leads us home,
  _ _ _ _ _ leads us home,
  \repeat unfold 13 \skip 1
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  A -- long the san -- dy des -- ert,
  'Mid scorch -- ing winds that blow
  A -- cross the rug -- ged moun -- tains,
  Whose tops are white with snow;
  Or in the dark -- some val -- ley
  Wher -- e'er our feet may roam,
  How sweet the blest as -- sur -- ance,
  That Je -- sus leads us home!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  It makes us glad and joy -- ful,
  And light -- ens ev -- 'ry load,
  To know that He goes with us
  A -- long  life's rug -- ged road;
  Each day we feel His pres -- ence,
  Tho' tri -- als oft may come:
  How sweet the blest as -- sur -- ance,
  That Je -- sus leads us home!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  The flow'rs be -- side our path -- way,
  May with -- er, fade, and die;
  But fair -- er ones are bloom -- ing
  For us, be -- yond the sky:
  And tho' 'mid care and sor -- row
  Our wea -- ry steps may roam,
  How sweet the blest as -- sur -- ance,
  That Je -- sus leads us home!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "A" "long " "the " san "dy " des "ert, "
  "\n'Mid " scorch "ing " "winds " "that " "blow "
  "\nA" "cross " "the " rug "ged " moun "tains, "
  "\nWhose " "tops " "are " "white " "with " "snow; "
  "\nOr " "in " "the " dark "some " val "ley "
  "\nWher" "e'er " "our " "feet " "may " "roam, "
  "\nHow " "sweet " "the " "blest " as sur "ance, "
  "\nThat " Je "sus " "leads " "us " "home! "
  "\nThat " Je "sus " "leads " "us " "home, "
  "\nThat " Je "sus " "leads " "us " "home, "
  "\nHow " "sweet " "the " "blest " as sur "ance, "
  "\nThat " Je "sus " "leads " "us " "home!\n"

  \set stanza = "2."
  "\nIt " "makes " "us " "glad " "and " joy "ful, "
  "\nAnd " light "ens " ev "'ry " "load, "
  "\nTo " "know " "that " "He " "goes " "with " "us "
  "\nA" "long "  "life's " rug "ged " "road; "
  "\nEach " "day " "we " "feel " "His " pres "ence, "
  "\nTho' " tri "als " "oft " "may " "come: "
  "\nHow " "sweet " "the " "blest " as sur "ance, "
  "\nThat " Je "sus " "leads " "us " "home! "
  "\nThat " Je "sus " "leads " "us " "home, "
  "\nThat " Je "sus " "leads " "us " "home, "
  "\nHow " "sweet " "the " "blest " as sur "ance, "
  "\nThat " Je "sus " "leads " "us " "home!\n"

  \set stanza = "3."
  "\nThe " "flow'rs " be "side " "our " path "way, "
  "\nMay " with "er, " "fade, " "and " "die; "
  "\nBut " fair "er " "ones " "are " bloom "ing "
  "\nFor " "us, " be "yond " "the " "sky: "
  "\nAnd " "tho' " "'mid " "care " "and " sor "row "
  "\nOur " wea "ry " "steps " "may " "roam, "
  "\nHow " "sweet " "the " "blest " as sur "ance, "
  "\nThat " Je "sus " "leads " "us " "home! "
  "\nThat " Je "sus " "leads " "us " "home, "
  "\nThat " Je "sus " "leads " "us " "home, "
  "\nHow " "sweet " "the " "blest " as sur "ance, "
  "\nThat " Je "sus " "leads " "us " "home! "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "A" "long " "the " san "dy " des "ert, "
  "\n'Mid " scorch "ing " "winds " "that " "blow "
  "\nA" "cross " "the " rug "ged " moun "tains, "
  "\nWhose " "tops " "are " "white " "with " "snow; "
  "\nOr " "in " "the " dark "some " val "ley "
  "\nWher" "e'er " "our " "feet " "may " "roam, "
  "\nHow " "sweet " "the " "blest " as sur "ance, "
  "\nThat " Je "sus " "leads " "us " "home! "
  "\nThat " Je "sus " "leads " "us, " "leads " "us " "home, "
  "\nThat " Je "sus " "leads " "us, " "leads " "us " "home, "
  "\nHow " "sweet " "the " "blest " as sur "ance, "
  "\nThat " Je "sus " "leads " "us " "home!\n"

  \set stanza = "2."
  "\nIt " "makes " "us " "glad " "and " joy "ful, "
  "\nAnd " light "ens " ev "'ry " "load, "
  "\nTo " "know " "that " "He " "goes " "with " "us "
  "\nA" "long "  "life's " rug "ged " "road; "
  "\nEach " "day " "we " "feel " "His " pres "ence, "
  "\nTho' " tri "als " "oft " "may " "come: "
  "\nHow " "sweet " "the " "blest " as sur "ance, "
  "\nThat " Je "sus " "leads " "us " "home! "
  "\nThat " Je "sus " "leads " "us, " "leads " "us " "home, "
  "\nThat " Je "sus " "leads " "us, " "leads " "us " "home, "
  "\nHow " "sweet " "the " "blest " as sur "ance, "
  "\nThat " Je "sus " "leads " "us " "home!\n"

  \set stanza = "3."
  "\nThe " "flow'rs " be "side " "our " path "way, "
  "\nMay " with "er, " "fade, " "and " "die; "
  "\nBut " fair "er " "ones " "are " bloom "ing "
  "\nFor " "us, " be "yond " "the " "sky: "
  "\nAnd " "tho' " "'mid " "care " "and " sor "row "
  "\nOur " wea "ry " "steps " "may " "roam, "
  "\nHow " "sweet " "the " "blest " as sur "ance, "
  "\nThat " Je "sus " "leads " "us " "home! "
  "\nThat " Je "sus " "leads " "us, " "leads " "us " "home, "
  "\nThat " Je "sus " "leads " "us, " "leads " "us " "home, "
  "\nHow " "sweet " "the " "blest " as sur "ance, "
  "\nThat " Je "sus " "leads " "us " "home! "
}

\book {
  \bookOutputSuffix "midi-women"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-men"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
          >>
        >>
    \midi {}
  }
}

#(set-global-staff-size 18)

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \bookOutputSuffix "single"
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
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
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
