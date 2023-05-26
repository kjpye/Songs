\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I'm Holding on."
  subtitle    = "Sankey No. 643"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Victor H. Benke."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Grace Emmons."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*4
  \textMark \markup { \box \bold "B" } s1*4
  \textMark \markup { \box \bold "C" } s1*4
  \textMark \markup { \box \bold "D" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  b'4 ais8. b16 c4 b | d4. gis,8 a2 | c4 b8 a e4 fis | e2 d |
  b'4 ais8. b16 c4 b | 4. a8 e2 | fis4 8 8 g4 gis | b2 a |
  \section \sectionLabel \markup\smallCaps Chorus.
  b4 c8. b16 d2 | g,4 c8. g16 b2 | e,4 dis8. e16 fis4 g | b2 a \section |
  b4 c8. b16 e2 | a,4 b8. a16 d2 | g,4 fis8 g d'4 b | a2 g\fermata |
}

alto = \relative {
  \autoBeamOff
  g'4 8. 16 4 4 | fis4. eis8 fis2 | 4 8 8 c4 c | b2 2 |
  g'4 8. 16 4 4 | e4. 8 cis2 | d4 8 8 4 4 | fis2 2 | \section
  g4 8. 16 2 | d4 8. 16 2 | cis4 8. 16 4 4 | d2 fis |
  g4 gis8. 16 g2 | fis4 8. 16 f2 | e4 8 8 g4 4 | fis2 d\fermata |
}

tenor = \relative {
  \autoBeamOff
  d'4 cis8. d16 e4 d | c4. b8 c2 | e4 d8 c g4 a | g2 2 |
  d'4 cis8. d16 e4 d | cis4. 8 g2 | a4 8 8 b4 4 | d2 2 | \section
  d4 c8. d16 b2 | b4 c8. b16 g2 | 4 f8. g16 dis4 e | g4(b) d2 |
  d4 e8. d16 cis2 | c4 d8. c16 b2 | c4 a8 ais b4 d | c2 b\fermata |
}

bass = \relative {
  \autoBeamOff
  g4 8. 16 4 4 | d4. 8 2 | 4 8 8 4 4 | g,2 2 |
  <g g'>4 8. 16 4 4 | <a g'>4. 8 2 | d4 8 8 4 4 | 2 2 \section |
  g4 8. 16 2 | <g, g'>4 8. 16 2 | a4 8. 16 4 4 | d2 2 |
  g4 e8. 16 a,2 | d4 8. 16 <g, g'>2 | c4 cis8 8 d4 d | d2 g,\fermata |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  I'm hold -- ing on, I'm hold -- ing on,
  Dai -- ly in  grace I'm grow -- ing;
  Fast to the Rock I'm hold -- ing on,
  Peace to my heart is flow -- ing.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Je -- sus re -- deemed and made me whole,
  I can for -- get Him nev -- er;
  Out of the depths He brought my soul;
  Now I am His for ev -- er.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Great is the love of Christ my King;
  Love that no power can sev -- er;
  Joy -- ful and glad my tongue shall sing
  Praise to His name for ev -- er.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  If on the Lord my care I cast,
  He will for -- sake me nev -- er;
  Firm on the Rock opf A -- ges fast
  I shall a -- bide for ev -- er.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  He has pre -- pared a home for me
  O -- ver the si -- lent riv -- er;
  There with the blest I soon shall be—
  There I shall dwell for ev -- er.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Je" "sus " re "deemed " "and " "made " "me " "whole, "
  "\nI " "can " for "get " "Him " nev "er; "
  "\nOut " "of " "the " "depths " "He " "brought " "my " "soul; "
  "\nNow " "I " "am " "His " "for " ev "er. "
  "\nI'm " hold "ing " "on, " "I'm " hold "ing " "on, "
  "\nDai" "ly " "in "  "grace " "I'm " grow "ing; "
  "\nFast " "to " "the " "Rock " "I'm " hold "ing " "on, "
  "\nPeace " "to " "my " "heart " "is " flow "ing.\n"

  \set stanza = "2."
  "\nGreat " "is " "the " "love " "of " "Christ " "my " "King; "
  "\nLove " "that " "no " "power " "can " sev "er; "
  "\nJoy" "ful " "and " "glad " "my " "tongue " "shall " "sing "
  "\nPraise " "to " "His " "name " "for " ev "er. "
  "\nI'm " hold "ing " "on, " "I'm " hold "ing " "on, "
  "\nDai" "ly " "in "  "grace " "I'm " grow "ing; "
  "\nFast " "to " "the " "Rock " "I'm " hold "ing " "on, "
  "\nPeace " "to " "my " "heart " "is " flow "ing.\n"

  \set stanza = "3."
  "\nIf " "on " "the " "Lord " "my " "care " "I " "cast, "
  "\nHe " "will " for "sake " "me " nev "er; "
  "\nFirm " "on " "the " "Rock " "opf " A "ges " "fast "
  "\nI " "shall " a "bide " "for " ev "er. "
  "\nI'm " hold "ing " "on, " "I'm " hold "ing " "on, "
  "\nDai" "ly " "in "  "grace " "I'm " grow "ing; "
  "\nFast " "to " "the " "Rock " "I'm " hold "ing " "on, "
  "\nPeace " "to " "my " "heart " "is " flow "ing.\n"

  \set stanza = "4."
  "\nHe " "has " pre "pared " "a " "home " "for " "me "
  "\nO" "ver " "the " si "lent " riv "er; "
  "\nThere " "with " "the " "blest " "I " "soon " "shall " "be— "
  "\nThere " "I " "shall " "dwell " "for " ev "er. "
  "\nI'm " hold "ing " "on, " "I'm " hold "ing " "on, "
  "\nDai" "ly " "in "  "grace " "I'm " grow "ing; "
  "\nFast " "to " "the " "Rock " "I'm " hold "ing " "on, "
  "\nPeace " "to " "my " "heart " "is " flow "ing. "
}

wordsMidiMen = \lyricmode {
}

\book {
  \bookOutputSuffix "midi"
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

#(set-global-staff-size 20)

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
            \new Lyrics \lyricsto "aligner"   \wordsFour
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
                                              \wordsFour  \chorus
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
