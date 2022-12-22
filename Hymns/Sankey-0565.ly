\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus is my Pilot."
  subtitle    = "Sankey No. 565"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Wm. J. Kirkpatrick."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mrs. C. E. Bruce."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key a \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s8 s2.*2
  \textMark \markup { \box \bold "B" }    s2.*3
  \textMark \markup { \box \bold "C" }    s2.*3
  \textMark \markup { \box \bold "D" }    s2.*4
  \textMark \markup { \box \bold "E" }    s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  e'16^\markup\italic "Not too fast." 16 | 8 fis gis a gis fis | e fis gis a4  16 16 |
  a8 b cis d d cis | b4.~4 cis 16 d | e8 e cis a4 b16 cis |
  d8 d b gis4 e16 e | fis8 a d cis cis b | a4.~4 r8 \section |
  e'4^\markup\smallCaps Chorus. cis8 a4 e8 | fis4. e4 8 | d'4 b8 gis4 e8 | cis'4.~4 r8 |
  e4 cis8 a4 e8 | gis4. fis4 b8 | e,4 d'8 cis4 b8 | a4.~4
}

alto = \relative {
  \autoBeamOff
  cis'16 cis | 8 d d cis d d | cis d d cis4 e16 16 |
  e8 8 8 8 8 8 | 4.~4 16 16 | 8 a a e4 16 16 |
  gis8 8 8 e4 16 16 | d8 fis fis  e e d | cis4.~4 r8 |
  e4 a8 e4 cis8 | dis4. e4 8 | 4 8 d4 8 | e4.~4 r8 |
  r4 a8 e4 8 | 4. d4 8 | cis4 fis8 e4 d8 | cis4.~4
}

tenor = \relative {
  \autoBeamOff
  a16 a | 8 gis fis e e fis16[gis] | a8 gis fis e4 | cis'16 16 |
  cis8 d cis b b a | gis4.~4 a16 b | cis8 8 e cis4 d16 cis |
  b8 8 d b4 a16 16 | 8 8 8 8 8 gis | a4.~4 r8 |
  cis4 e8 cis4 a8 | bis4. cis4 8 | b4 d8 b4 gis8 | a4.~4 r8 |
  cis4 e8 cis4 a8 | a4. 4 fis8 | a4 8 gis4 8 | a4.~4
}

bass = \relative {
  \autoBeamOff
  a,16 a | 8 8 8 8 8 8 | 8 8 8 4 a'16 16 |
  a8 8 8 gis8 8 a | e4.~4 a16 16 | 8 8 8 4 16 16 |
  e8 8 8 4 cis16 16 | d8 8 8 e e e | a,4.~4 r8 |
  a'4 8 4 8 | a4. 4 8 | gis4 8 e4 8 | a4.~4 r8 |
  a4 8 4 cis,8 | d4. 4 8 | e4 8 4 8 | \partCombineChords <a, e'>4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Je -- sus is my Pi -- lot,
  The Pi -- lot of my soul;
  I will ev -- er trust Him.
  Tho' sur -- ging bil -- lows roll.
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  I am sail -- ing a -- far on the o -- cean of life,
  In my bark that is slen -- der and frail;
  But I know not a fear with my Pi -- lot to steer,
  And in safe -- ty I meet ev -- 'ry gale.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I am tossed on the waves, to the deep I am borne,
  But my Pi -- lot is strong at the helm;
  In His love I a -- bide, in His pro -- mise con -- fide,
  And the wild wa -- ters nev -- er o'er -- whelm.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  When the har -- bour ap -- pears, and my voy -- age is done,
  And the storms nev -- er come to me more;
  Oh, what joy it will be all my loved ones to see,
  When we meet on e -- ter -- ni -- ty's shore.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I " "am " sail "ing " a "far " "on " "the " o "cean " "of " "life, "
  "\nIn " "my " "bark " "that " "is " slen "der " "and " "frail; "
  "\nBut " "I " "know " "not " "a " "fear " "with " "my " Pi "lot " "to " "steer, "
  "\nAnd " "in " safe "ty " "I " "meet " ev "'ry " "gale. "
  "\nJe" "sus " "is " "my " Pi "lot, "
  "\nThe " Pi "lot " "of " "my " "soul; "
  "\nI " "will " ev "er " "trust " "Him. "
  "\nTho' " sur "ging " bil "lows " "roll.\n"

  \set stanza = "2."
  "\nI " "am " "tossed " "on " "the " "waves, " "to " "the " "deep " "I " "am " "borne, "
  "\nBut " "my " Pi "lot " "is " "strong " "at " "the " "helm; "
  "\nIn " "His " "love " "I " a "bide, " "in " "His " pro "mise " con "fide, "
  "\nAnd " "the " "wild " wa "ters " nev "er " o'er "whelm. "
  "\nJe" "sus " "is " "my " Pi "lot, "
  "\nThe " Pi "lot " "of " "my " "soul; "
  "\nI " "will " ev "er " "trust " "Him. "
  "\nTho' " sur "ging " bil "lows " "roll.\n"

  \set stanza = "3."
  "\nWhen " "the " har "bour " ap "pears, " "and " "my " voy "age " "is " "done, "
  "\nAnd " "the " "storms " nev "er " "come " "to " "me " "more; "
  "\nOh, " "what " "joy " "it " "will " "be " "all " "my " "loved " "ones " "to " "see, "
  "\nWhen " "we " "meet " "on " e ter ni "ty's " "shore. "
  "\nJe" "sus " "is " "my " Pi "lot, "
  "\nThe " Pi "lot " "of " "my " "soul; "
  "\nI " "will " ev "er " "trust " "Him. "
  "\nTho' " sur "ging " bil "lows " "roll. "
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
      #(layout-set-staff-size 20)
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
