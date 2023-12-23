\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Labour On!"
  subtitle    = "Sankey No. 754"
  subsubtitle = "Sankey 880 No. 471"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. H. Doane."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Dr. C. R. Blackall."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*2 s2.
  \textMark \markup { \box \bold "B" } s4 s1*2 s2.
  \textMark \markup { \box \bold "C" } s4 s1*3
  \textMark \markup { \box \bold "D" }    s1*3 s2
  \textMark \markup { \box \bold "E" } s2 s1*2 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo "Spiritual." 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  bes'8. c16 | d4 d d c8. bes16 | c4 bes g bes8 g | f4 bes bes \bar "|" \break
  a8 bes | c4 d c bes8. c16 | d4 d d c8. bes16 | c4 bes g \bar "|" \break
  bes8. g16 | f4 bes8. c16 d4 c | bes2 r4
  \section \sectionLabel \markup\smallCaps "Chorus."
  bes8. c16 | d2. c8. bes16 |
  g2. a8 bes | c4 4 d bes | c2. d8. ees16 | f4 d8. cis16 \bar "|" \break
  d4 c8 bes | c4 bes g bes8. g16 | f4 bes8. c16 d4 c | bes2 r4
}

alto = \relative {
  \autoBeamOff
  d'8. ees16 | f4 4 4 8. 16 | g4 g ees g8 ees | d4 d f
  ees8 d | f4 4 4 8. 16 | 4 4 4 8. 16 | g4 g ees
  g8. ees16 | d4 f8. 16 4 ees | d2 r4 \section 8. ees16 | f2. ees8. d16 |
  ees2. f8 8 | f4 4 4 4 | 2. 8. 16 | 4 8. e16
  f4 8 8 | g4 g ees g8. ees16 | d4 f8. 16 4 ees | d2 r4
}

tenor = \relative {
  \autoBeamOff
  bes8. 16 | 4 4 4 aes8. bes16 | 4 4 4 8 8 | 4 4 4
  f8 8 | a4 bes a bes8. a16 | bes4 4 4 a8. bes16 | 4 4 4
  bes8. 16 | 4 d8. a16 bes4 a | bes2 r4 \section r | r bes8. 16 4 r |
  r4 bes8. 16 4 c8 bes | a4 a bes bes | a2. bes8. c16 | d4 bes8. 16
  bes4 a8 bes | 4 4 4 8. 16 | 4 d8. a16 bes4 a | bes2 r4
}

bass = \relative {
  \autoBeamOff
  bes,8. 16 | 4 4 4 c8. d16 | ees4 4 4 8 8 | bes4 4 d
  c8 bes | f'4 4 4 d8. f16 | bes4 bes,4 4 c8. d16 | ees4 4 4
  ees8. 16 | f4 8. 16 4 4 | bes,2 r4 \section r | r bes8. 16 4 r |
  r4 ees8. 16 4 8 d | c4 4 bes d | f2. bes8. 16 | 4 bes,8. 16
  bes4 c8 d | ees4 4 4 8. 16 | f4 8. 16 4 4 | bes,2 r4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  La -- bour on! la -- bour on!
  Keep the bright re -- ward in view;
  For the mas -- ter has said,
  He will strength re -- new:
  La -- bour on till the close of day!
}

chorusMen = \lyricmode {
  \repeat unfold 38 \skip 1
  La -- bour on! la -- bour on!
  \repeat unfold 26 \skip 1
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  In the har -- vest field there is work to do,
  For the grain is ripe, and the reap -- ers few;
  And the Mas -- ter's voice bids the work -- ers true
  Heed the call that He gives to -- day.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Crowd the gar -- ner well with its sheaves all bright,
  Let the song be glad, and the heart be light;
  Fill the pre -- cious hours, ere the shades of night
  Take the place of the gol -- den day.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  In the glean -- er's path may be rich re -- ward,
  Tho' the time seems long, and the la -- bour hard;
  For the mas -- ter's joy, with His cho -- sen shared
  Drives the gloom from the dark -- est day.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Lo! the Har -- vest Home in the realms a -- bove
  Shall be gained by each who has toiled and strove,
  When the Mas -- ter's voice, in its tones of love,
  Calls a -- way to e -- ter -- nal day.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "In " "the " har "vest " "field " "there " "is " "work " "to " "do, "
  "\nFor " "the " "grain " "is " "ripe, " "and " "the " reap "ers " "few; "
  "\nAnd " "the " Mas "ter's " "voice " "bids " "the " work "ers " "true "
  "\nHeed " "the " "call " "that " "He " "gives " to "day. "
  "\nLa" "bour " "on! " la "bour " "on! "
  "\nKeep " "the " "bright " re "ward " "in " "view; "
  "\nFor " "the " mas "ter " "has " "said, "
  "\nHe " "will " "strength " re "new: "
  "\nLa" "bour " "on " "till " "the " "close " "of " "day!\n"

  \set stanza = "2."
  "\nCrowd " "the " gar "ner " "well " "with " "its " "sheaves " "all " "bright, "
  "\nLet " "the " "song " "be " "glad, " "and " "the " "heart " "be " "light; "
  "\nFill " "the " pre "cious " "hours, " "ere " "the " "shades " "of " "night "
  "\nTake " "the " "place " "of " "the " gol "den " "day. "
  "\nLa" "bour " "on! " la "bour " "on! "
  "\nKeep " "the " "bright " re "ward " "in " "view; "
  "\nFor " "the " mas "ter " "has " "said, "
  "\nHe " "will " "strength " re "new: "
  "\nLa" "bour " "on " "till " "the " "close " "of " "day!\n"

  \set stanza = "3."
  "\nIn " "the " glean "er's " "path " "may " "be " "rich " re "ward, "
  "\nTho' " "the " "time " "seems " "long, " "and " "the " la "bour " "hard; "
  "\nFor " "the " mas "ter's " "joy, " "with " "His " cho "sen " "shared "
  "\nDrives " "the " "gloom " "from " "the " dark "est " "day. "
  "\nLa" "bour " "on! " la "bour " "on! "
  "\nKeep " "the " "bright " re "ward " "in " "view; "
  "\nFor " "the " mas "ter " "has " "said, "
  "\nHe " "will " "strength " re "new: "
  "\nLa" "bour " "on " "till " "the " "close " "of " "day!\n"

  \set stanza = "4."
  "\nLo! " "the " Har "vest " "Home " "in " "the " "realms " a "bove "
  "\nShall " "be " "gained " "by " "each " "who " "has " "toiled " "and " "strove, "
  "\nWhen " "the " Mas "ter's " "voice, " "in " "its " "tones " "of " "love, "
  "\nCalls " a "way " "to " e ter "nal " "day. "
  "\nLa" "bour " "on! " la "bour " "on! "
  "\nKeep " "the " "bright " re "ward " "in " "view; "
  "\nFor " "the " mas "ter " "has " "said, "
  "\nHe " "will " "strength " re "new: "
  "\nLa" "bour " "on " "till " "the " "close " "of " "day! "
}

wordsMidiMen = \lyricmode {
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
            \addlyrics \wordsMidi
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

#(set-global-staff-size 19)

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

#(set-global-staff-size 20)

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
