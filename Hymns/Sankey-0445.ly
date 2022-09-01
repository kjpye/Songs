\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "One there is Who Loves Thee."
  subtitle    = "Sankey No. 445"
  subsubtitle = "Sankey 880 No. 310"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. H. Doane."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "H. C. Ayers."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*5
  \mark \markup { \box "B" } s2.*5
  \mark \markup { \box "C" } s2.*4
  \mark \markup { \box "D" } s2.*5
  \mark \markup { \box "E" } s2.*5
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4 c8 b4 a8
  a4. g
  f4 fis8 g4 f8
  e4.~4.
  g4 c8 b4 a8
  a4. g % B
  fis4 c'8 b4 a8
  g4.~4.
  b4 8 c4 d8
  c4. g
  f4 8 g4 f8 % C
  e4.~4.
  e4 g8 c4 b8
  d4 c8 a4.\fermata
  g4. c4 d8 % D
  c4.~4. \bar "||"
  d4^\markup\smallCaps Refrain. cis8 d4 e8
  c4. g
  c4 b8 c4 a8
  g4.~4. % E
  e4 g8 c4 b8
  d4 c8 a4.\fermata
  g4. c4 d8
  c4.~4.
}

alto = \relative {
  \autoBeamOff
  e'4 8 g4 f8
  f4. e
  d4 c8 b4 d8
  c4.~4.
  e4 8 g4 f8
  f4. e % B
  d4 fis8 g4 c,8
  b4.~4.
  f'4 8 e4 f8
  e4. 4.
  d4 8 e4 d8 % C
  c4.~4.
  c4 e8 4 g8
  f4 8 4.\fermata
  e4. g4 f8 % D
  e4.~4.
  f4 e8 f4 g8
  e4. 4.
  a4 gis8 a4 f8
  e4.~4. % E
  c4 e8 4 g8
  f4 8 4.\fermata
  e4. g4 f8
  e4.~4.
}

tenor = \relative {
  \autoBeamOff
  c'4 g8 4 c8
  c4. 4(g8)
  a4 8 d,4 g8
  g4.~4.
  c4 g8 4 c8
  c4. 4. % B
  a4 8 d4 fis,8
  g4.~4.
  d'4 8 c4 b8
  c4. 4.
  g4 8 4 8 % C
  g4.~4.
  g4 8 4 8
  a4 8 c4.\fermata
  c4. e4 b8 % D
  c4.~4.
  b4 8 4 8
  c4. 4.
  c4 8 4 8
  c4.~4. % E
  g4 8 4 8
  a4 8 c4.\fermata
  c4. e4 b8
  c4.~4.
}

bass = \relative {
  \autoBeamOff
  c4 8 4 8
  c4. 4.
  a4 8 g4 8
  c4.~4.
  c4 8 4 8
  c4. 4. % B
  d4 8 4 8
  g,4.~4.
  g'4 8 4 8
  c,4. 4.
  g'4 8 g,4 8 % C
  c4.~4.
  c4 8 4 e8
  f4 8 4.\fermata
  g4. 4 8 % D
  c,4.~4.
  g'4 8 4 8
  c,4. 4.
  f4 8 4 8
  c4.~4. % E
  c4 8 4 e8
  f4 8 4.\fermata
  g4. 4 8
  c,4.~4.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  One there is who loves thee,
  Oh, re -- ceive Him now!
  He has wait -- ed all the day;
  Why wait -- est thou?
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  One there is who loves thee,
  Wait -- ing still for thee:
  Canst thou yet re -- ject Hmi?
  None so kind as He!
  Do not grieve Him long -- er,
  Come and trust Him now!
  He has wait -- ed all thy days:
  Why wait -- est thou?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Ten -- der -- ly He woos thee,
  Do not slight His call;
  Tho' thy sins are ma -- ny,
  He'll for -- give them all.
  Turn to Him, re -- pent -- ing,
  He will cleanse thee now!
  He is wait -- ing at thy heart:
  Why wait -- est thou?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Je -- sus still is wait -- ing;
  Sin -- ner, why de -- lay?
  To His arms of mer -- cy
  Rise and haste a -- way!
  On -- ly come be -- liev -- ing,
  He will save thee now!
  He is wait -- ing at the door:
  Why wait -- est thou?
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "One " "there " "is " "who " "loves " "thee, "
  "\nWait" "ing " "still " "for " "thee: "
  "\nCanst " "thou " "yet " re "ject " "Hmi? "
  "\nNone " "so " "kind " "as " "He! "
  "\nDo " "not " "grieve " "Him " long "er, "
  "\nCome " "and " "trust " "Him " "now! "
  "\nHe " "has " wait "ed " "all " "thy " "days: "
  "\nWhy " wait "est " "thou? "
  "\nOne " "there " "is " "who " "loves " "thee, "
  "\nOh, " re "ceive " "Him " "now! "
  "\nHe " "has " wait "ed " "all " "the " "day; "
  "\nWhy " wait "est " "thou?\n"

  \set stanza = "2."
  "\nTen" der "ly " "He " "woos " "thee, "
  "\nDo " "not " "slight " "His " "call; "
  "\nTho' " "thy " "sins " "are " ma "ny, "
  "\nHe'll " for "give " "them " "all. "
  "\nTurn " "to " "Him, " re pent "ing, "
  "\nHe " "will " "cleanse " "thee " "now! "
  "\nHe " "is " wait "ing " "at " "thy " "heart: "
  "\nWhy " wait "est " "thou? "
  "\nOne " "there " "is " "who " "loves " "thee, "
  "\nOh, " re "ceive " "Him " "now! "
  "\nHe " "has " wait "ed " "all " "the " "day; "
  "\nWhy " wait "est " "thou?\n"

  \set stanza = "3."
  "\nJe" "sus " "still " "is " wait "ing; "
  "\nSin" "ner, " "why " de "lay? "
  "\nTo " "His " "arms " "of " mer "cy "
  "\nRise " "and " "haste " a "way! "
  "\nOn" "ly " "come " be liev "ing, "
  "\nHe " "will " "save " "thee " "now! "
  "\nHe " "is " wait "ing " "at " "the " "door: "
  "\nWhy " wait "est " "thou? "
  "\nOne " "there " "is " "who " "loves " "thee, "
  "\nOh, " re "ceive " "Him " "now! "
  "\nHe " "has " wait "ed " "all " "the " "day; "
  "\nWhy " wait "est " "thou? "
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
            \new Voice \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor } { \global \bass }
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
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
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
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
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
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
