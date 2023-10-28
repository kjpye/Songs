\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come, ye Disconsolate!"
  subtitle    = "Sankey No. 719"
  subsubtitle = "Sankey 880 No. 362"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup{"Arr. from" \smallCaps "S. Webbe."}
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup{\smallCaps "T. Moore." and \smallCaps "T. Hastings."}
  meter       = \markup\smallCaps "11.10."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key d \major
  \time 2/2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*5
  \textMark \markup { \box \bold "B" } s1*5
  \textMark \markup { \box \bold "C" } s1*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'2 fis4 d | b'4. a8 2 | g4.(a8) b4 cis | d4.(a8) 4 r | fis2 4 4 |
  g4. 8 b2 | a gis4 4 | a2 r | d2 cis4 b | a4. g8 g4 r |
  d'2 e8[d] cis[b] | a4.(g8) fis4 r | a(fis') 4 d | d b2 g4 | fis2 e4. 8 | d1 |
}

alto = \relative {
  \autoBeamOff
  d'2 4 4 | 4. 8 2 | 2 4 g | fis4.(e8) d4 r | 2 4 4 |
  d4. 8 g2 | e2 d4 4 | cis2 r | fis2 g4 4 | fis4. e8 d4 r |
  fis2 g4 4 | fis4.(e8) d4 r | fis(a) a fis | g4 2 e4 | d2 cis4. 8 | d1 |
}

tenor = \relative {
  \autoBeamOff
  fis2 a4 fis | g4. fis8 2 | d'2 4 a | 4.(g8) fis4 r | a2 4 4 |
  d4. 8 2 | cis2 b4 4 | a2 r | 2 4 b8[cis] | d4. a8 4 r |
  a2 b4 4 | d4.(a8) 4 r | r(d) d a | b4 d2 b4 | a2 g4. 8 | fis1 |
}

bass = \relative {
  \autoBeamOff
  d2 4 4 | 4. 8 2 | b'4.(fis8) g4 e | d2 4 r | 2 4 c |
  b4. 8 g2 | e'2 4 4 | a,2 r | d2 4 4 | 4. 8 4 r |
  d2 g4 g | d2 4 r | 2 4 4 | g4 2 4 | a2 a,4. 8 | d1 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Come, ye dis -- con -- so -- late! wher -- e're ye lan -- guish,
  Come to the mer -- cy seat, fer -- vent -- ly kneel:
  Here bring your wound -- ed hearts, here tell your an -- guish;
  Earth has no sor -- row that heaven can -- not heal.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Joy of the des -- o -- late! light of the stray -- ing!
  Hope of the pen -- i -- tentm fade -- less, and pure!
  Here speaks the Com -- fort -- er, ten -- der -- ly say -- ing,
  Earth has no sor -- row that heaven can -- not heal.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Here see the Bread of Life! see wa -- ters flow -- ing,
  Forth from the throne of God, pure from a -- bove:
  Come to the feast of love; come, ev -- er know -- ing,
  Earth has no sor -- row that heaven can -- not heal.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Come, " "ye " dis con so "late! " wher "e're " "ye " lan "guish, "
  "\nCome " "to " "the " mer "cy " "seat, " fer vent "ly " "kneel: "
  "\nHere " "bring " "your " wound "ed " "hearts, " "here " "tell " "your " an "guish; "
  "\nEarth " "has " "no " sor "row " "that " "heaven " can "not " "heal.\n"

  \set stanza = "2."
  "\nJoy " "of " "the " des o "late! " "light " "of " "the " stray "ing! "
  "\nHope " "of " "the " pen i "tentm " fade "less, " "and " "pure! "
  "\nHere " "speaks " "the " Com fort "er, " ten der "ly " say "ing, "
  "\nEarth " "has " "no " sor "row " "that " "heaven " can "not " "heal.\n"

  \set stanza = "3."
  "\nHere " "see " "the " "Bread " "of " "Life! " "see " wa "ters " flow "ing, "
  "\nForth " "from " "the " "throne " "of " "God, " "pure " "from " a "bove: "
  "\nCome " "to " "the " "feast " "of " "love; " "come, " ev "er " know "ing, "
  "\nEarth " "has " "no " sor "row " "that " "heaven " can "not " "heal. "
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
