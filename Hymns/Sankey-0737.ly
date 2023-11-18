\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Quiet, Lord, my Froward Heart!"
  subtitle    = "Sankey No. 737"
  subsubtitle = "Sankey 880 No. 698"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

%  composer    = \markup\smallCaps "composer"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. Newton."
  meter       = \markup\smallCaps "7s."
  piece       = \markup\smallCaps "Spanish Chant."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key a \major
  \time 2/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2*6
  \textMark \markup { \box \bold "B" } s2*6
  \textMark \markup { \box \bold "C" } s2*6
  \textMark \markup { \box \bold "D" } s2*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'4 4 | gis a | fis a | e2 | cis'4 a | d b |
  a4 gis | a2 | cis4 4 | b cis | d cis | b2 |
  cis4 4 | b cis d cis | b2 | a4 a | gis a |
  fis4 a | e2 | cis'4 a | d b | a gis | a2 |
}

alto = \relative {
  \autoBeamOff
  cis'4 e | e e | d d cis2 | e4 e | d fis |
  e4 d | cis2 | e4 e | e e | fis e | e2 |
  e4 4 | fis e | e e | 2 | 4 4 | 4 4 |
  e4 d | cis2 | e4 cis | d fis | e e | 2 |
}

tenor = \relative {
  \autoBeamOff
  a4 cis | b a | a a | 2 | 4 e | fis d' |
  cis4 b | a2 | 4 4 | gis a | a a | fis2 |
  a4 a | a a | gis a | gis2 | a4 cis | b a |
  a4 a | 2 | 4 4 | a d | cis b | cis2 |
}

bass = \relative {
  \autoBeamOff
  a4 4 | e cis | d fis | a2 | a,4 cis | b d |
  e4 e | a,2 | 4 cis | e a | d, a | e'2 |
  a,4 a |  d cis | b a | e'2 | cis4 a | e' cis |
  d4 fis | a2 | 4 g | fis d | e e | a,2 |
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
  Qui -- et, Lord, my fro -- ward heart,
  Make me teach -- a -- ble and mild,
  Up -- right, sim -- ple, free from heart;
  Make me as a lit -- tle child—
  From dis -- trust and en -- vy free,
  Pleased with all that pleas -- es Thee.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  What Thou shalt to -- day pro -- vide,
  Let me as a child re -- ceive;
  What to -- mor -- row may be -- tide,
  Calm -- ly to Thy wis -- dom leave:
  'Tis e -- nough that Thou wilt care—
  Why should I the bur -- den bear?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  As a lit -- tle child re -- lies
  On a case be -- yond his own,
  Knows he's nei -- ther strong nor wise,
  Fears to stir a step a -- lone—
  Let me thus with Thee a -- bide,
  As my Fa -- ther, Guard, and Guide.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Qui" "et, " "Lord, " "my " fro "ward " "heart, "
  "\nMake " "me " teach a "ble " "and " "mild, "
  "\nUp" "right, " sim "ple, " "free " "from " "heart; "
  "\nMake " "me " "as " "a " lit "tle " "child— "
  "\nFrom " dis "trust " "and " en "vy " "free, "
  "\nPleased " "with " "all " "that " pleas "es " "Thee.\n"

  \set stanza = "2."
  "\nWhat " "Thou " "shalt " to "day " pro "vide, "
  "\nLet " "me " "as " "a " "child " re "ceive; "
  "\nWhat " to mor "row " "may " be "tide, "
  "\nCalm" "ly " "to " "Thy " wis "dom " "leave: "
  "\n'Tis " e "nough " "that " "Thou " "wilt " "care— "
  "\nWhy " "should " "I " "the " bur "den " "bear?]n"

  \set stanza = "3."
  "\nAs " "a " lit "tle " "child " re "lies "
  "\nOn " "a " "case " be "yond " "his " "own, "
  "\nKnows " "he's " nei "ther " "strong " "nor " "wise, "
  "\nFears " "to " "stir " "a " "step " a "lone— "
  "\nLet " "me " "thus " "with " "Thee " a "bide, "
  "\nAs " "my " Fa "ther, " "Guard, " "and " "Guide. "
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
