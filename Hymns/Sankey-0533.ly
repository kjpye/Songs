\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Tenderly Guide Us."
  subtitle    = "Sankey No. 533"
  subsubtitle = "Sankey 880 No. 448"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. F. Root."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mrs. W. R. Griswold."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2.*3
  \textMark \markup { \box \bold "B" } s2.*3
  \textMark \markup { \box \bold "C" } s2.*3
  \textMark \markup { \box \bold "D" } s2.*3
  \textMark \markup { \box \bold "E" } s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'8 b' b b a g | fis8 c' c c4. | d,8 c' c c b a |
  g8 d' d d4. | d,8 b' b b a g | fis c' c c4. |
  d,8 fis a c b a | g4.~4 r8 \bar "||" e8^\markup\smallCaps Chorus. c'4~4. |
  d,8 b'4~4. | d,8 fis a c b a | d, g a b4. |
  e,8 c'4~4. | d,8 b'4~4. | d,8 fis a c b a | g4.~4 r8 |
}

alto = \relative {
  \autoBeamOff
  b8 d d d d d | d fis8 8 4. | d8 8 8 8 8 8 |
  d8 8 8 4. | b8 d d d d d | d8 fis8 8 4. |
  d8 8 fis a d, d | 4.~4 r8 | c8 e4~4. |
  d8 4~4. | 8 8 fis a d, d | 8 8 8 4. |
  c8 e4~4. | b8 d4~4. | 8 8 fis a d, d | 4.~4 r8 |
}

tenor = \relative {
  \autoBeamOff
  g8 8 8 8 a b | a8 8 8 4. | fis8 a a a b c |
  b8 8 8 4. | g8 8 8 8 a b | a8 8 8 4. |
  fis8 a a a b c | b4.~4 r8 | g8 8 8 8 8 8 |
  g8 8 8 4. | fis8 a a a b c | b8 8 8 g4. |
  g8 8 8 8 8 8 | 8 8 8 4. | fis8 a a a b c | b4.~4 r8 |
}

bass = \relative {
  \autoBeamOff
  g,8 8 8 8 8 8 | d'8 8 8 4. | 8 8 8 8 8 8 |
  g8 8 8 4. | g,8 8 8 8 8 8 | d'8 8 8 4. |
  d8 8 8 8 8 8 | g4.~4 r8 | c,8 8 8 8 8 8 |
  g8 8 8 4. | d'8 8 8 8 8 8 | g8 8 8 4. |
  c,8 8 8 8 8 8 | g8 8 8 4. | d'8 8 8 8 8 8 | g4.~4 r8 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Nev -- er! __ nev -- er! __
  Nev -- er! oh, nev -- er!
  For Thou art the way;
  Nev -- er! __ nev -- er! __
  Nev -- er from Thee would we stray!
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  Nev -- er! oh, nev -- er!
  for Thou art the way;
  _ _ _ _ _ _ _ _ _ _
  Nev -- er! oh, nev -- er!
  from Thee would we stray,
  _ _ _ _ _ _ _
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Ten -- der -- ly guide us, O shep -- herd of love,
  To the green pas -- tures and wa -- ters a -- bove,
  Guard -- ing us ev -- er by night and by day,
  Ne -- ver from Thee would we stray.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  What tho' the hea -- vens with clouds be o'er -- cast!---
  Fear -- ful the temp -- est, and bit -- ter the blast!
  Still with the light of Thy Word on the wat,
  Ne -- ver from Thee would we stray.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  O -- ver our weak -- ness Thy strength has been cast:
  Keep us in meek -- ness, Thine own till the last;
  Then safe -- ly fold -- ed, with joy sjall we say,
  Ne -- ver from Thee would we stray.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Ten" der "ly " "guide " "us, " "O " shep "herd " "of " "love, "
  "\nTo " "the " "green " pas "tures " "and " wa "ters " a "bove, "
  "\nGuard" "ing " "us " ev "er " "by " "night " "and " "by " "day, "
  "\nNe" "ver " "from " "Thee " "would " "we " "stray. "
  "\nNev" "er! "  nev "er! " 
  "\nNev" "er! " "oh, " nev "er! "
  "\nFor " "Thou " "art " "the " "way; "
  "\nNev" "er! "  nev "er! " 
  "\nNev" "er " "from " "Thee " "would " "we " "stray!\n"

  \set stanza = "2."
  "\nWhat " "tho' " "the " hea "vens " "with " "clouds " "be " o'er cast!-
  "\nFear" "ful " "the " temp "est, " "and " bit "ter " "the " "blast! "
  "\nStill " "with " "the " "light " "of " "Thy " "Word " "on " "the " "wat, "
  "\nNe" "ver " "from " "Thee " "would " "we " "stray. "
  "\nNev" "er! "  nev "er! " 
  "\nNev" "er! " "oh, " nev "er! "
  "\nFor " "Thou " "art " "the " "way; "
  "\nNev" "er! "  nev "er! " 
  "\nNev" "er " "from " "Thee " "would " "we " "stray!\n"

  \set stanza = "3."
  "\nO" "ver " "our " weak "ness " "Thy " "strength " "has " "been " "cast: "
  "\nKeep " "us " "in " meek "ness, " "Thine " "own " "till " "the " "last; "
  "\nThen " safe "ly " fold "ed, " "with " "joy " "sjall " "we " "say, "
  "\nNe" "ver " "from " "Thee " "would " "we " "stray. "
  "\nNev" "er! "  nev "er! " 
  "\nNev" "er! " "oh, " nev "er! "
  "\nFor " "Thou " "art " "the " "way; "
  "\nNev" "er! "  nev "er! " 
  "\nNev" "er " "from " "Thee " "would " "we " "stray! "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Ten" der "ly " "guide " "us, " "O " shep "herd " "of " "love, "
  "\nTo " "the " "green " pas "tures " "and " wa "ters " a "bove, "
  "\nGuard" "ing " "us " ev "er " "by " "night " "and " "by " "day, "
  "\nNe" "ver " "from " "Thee " "would " "we " "stray. "
  "\nNev" "er! " "oh, " nev "er! "
  "\nfor " "Thou " "art " "the " "way; "
  "\nNev" "er! " "oh, " nev "er! "
  "\nfor " "Thou " "art " "the " "way; "
  "\nNev" "er! " "oh, " nev "er! "
  "\nfrom " "Thee " "would " "we " "stray, "
  "\nNev" "er " "from " "Thee " "would " "we " "stray!\n"

  \set stanza = "2."
  "\nWhat " "tho' " "the " hea "vens " "with " "clouds " "be " o'er cast!-
  "\nFear" "ful " "the " temp "est, " "and " bit "ter " "the " "blast! "
  "\nStill " "with " "the " "light " "of " "Thy " "Word " "on " "the " "wat, "
  "\nNe" "ver " "from " "Thee " "would " "we " "stray. "
  "\nNev" "er! " "oh, " nev "er! "
  "\nfor " "Thou " "art " "the " "way; "
  "\nNev" "er! " "oh, " nev "er! "
  "\nfor " "Thou " "art " "the " "way; "
  "\nNev" "er! " "oh, " nev "er! "
  "\nfrom " "Thee " "would " "we " "stray, "
  "\nNev" "er " "from " "Thee " "would " "we " "stray!\n"

  \set stanza = "3."
  "\nO" "ver " "our " weak "ness " "Thy " "strength " "has " "been " "cast: "
  "\nKeep " "us " "in " meek "ness, " "Thine " "own " "till " "the " "last; "
  "\nThen " safe "ly " fold "ed, " "with " "joy " "sjall " "we " "say, "
  "\nNe" "ver " "from " "Thee " "would " "we " "stray. "
  "\nNev" "er! " "oh, " nev "er! "
  "\nfor " "Thou " "art " "the " "way; "
  "\nNev" "er! " "oh, " nev "er! "
  "\nfor " "Thou " "art " "the " "way; "
  "\nNev" "er! " "oh, " nev "er! "
  "\nfrom " "Thee " "would " "we " "stray, "
  "\nNev" "er " "from " "Thee " "would " "we " "stray!"
}

\book {
  \bookOutputSuffix "midi-women"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
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
