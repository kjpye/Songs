\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Mistakes of my Life."
  subtitle    = "Sankey No. 480"
  subsubtitle = "Sankey 880 No. 179"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "R. Lowry."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "U. L. Bailey."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key g \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8  s2.*2 s4.
  \mark \markup { \box "B" } s4. s2.*3
  \mark \markup { \box "C" }     s2.*3
  \mark \markup { \box "D" }     s2.*3 s4.
  \mark \markup { \box "E" } s4. s2.*2 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'16^\markup\italic Tenderly. a |
  \tag #'dash    {b8. c16 b8 \slurDashed 8(a) \slurSolid g} |
  \tag #'(v2 v3) {b8. c16 b8             8[a]            g} |
  \tag #'(v1 v4) {b8. c16 b8             8 a             g} |
  \tag #'dash    {g8 fis4. r8 \slurDashed 16(g) \slurSolid} |
  \tag #'(v1 v3) {g8 fis4. r8             16[g]           } |
  \tag #'(v2 v4) {g8 fis4. r8             16 g            } |
  \tag #'dash       {a8. 16 8 \bar "|" \break \slurDashed a(b) \slurSolid c} |
  \tag #'(v2 v3 v4) {a8. 16 8 \bar "|" \break             a[b]            c} |
  \tag #'v1         {a8. 16 8 \bar "|" \break             a b             c} |
  b4.~4 16 c | % B
  d4  b16[a] g8[a] b |
  \tag #'dash    {c8 4. r8 \slurDashed b16(a) \slurSolid \break} |
  \tag #'(v2 v3) {c8 4. r8             b16[a]            \break} |
  \tag #'(v1 v4) {c8 4. r8             b16 a             \break} |
  g8. a16 b8 4 a8 | % C
  g4.~4 \bar "||" b8^\markup\smallCaps Chorus. |
  a8. b16 c8 8[b] a |
  b8 d4. r8 b | % D
  d8. c16 b8 b[a] g |
  a4.~4 8 |
  b8. 16 8 \bar "|" \break c8 d e |
  d8 b a b4 a8 | % E
  g8. a16 b8 4 a8 |
  g4.~4 
}

alto = \relative {
  \autoBeamOff
  d'16 d |
  \tag #'dash    {g8. 16 8 \slurDashed d(d) \slurSolid d8} |
  \tag #'(v2 v3) {g8. 16 8             d4              d8} |
  \tag #'(v1 v4) {g8. 16 8             d d             d8} |
  \tag #'dash    {d8 4. r8 \slurDashed 16(16) \slurSolid} |
  \tag #'(v1 v3) {d8 4. r8             8                } |
  \tag #'(v2 v4) {d8 4. r8             16 16            } |
  \tag #'dash       {d8.  16 8 \slurDashed fis8(g) \slurSolid a} |
  \tag #'(v2 v3 v4) {d,8. 16 8             fis8[g]            a} |
  \tag #'v1         {d,8. 16 8             fis8 g             a} |
  g4.~4 16 a | % B
  b4 g8 d4 g8 |
  \tag #'dash    {g8 4. r8 \slurDashed e16(e) \slurSolid} |
  \tag #'(v2 v3) {g8 4. r8             e8               } |
  \tag #'(v1 v4) {g8 4. r8             e16 e            } |
  d8. 16 8 g4 fis8 | % C
  g4.~4 8 |
  fis8. g16 a8 8[g] fis |
  g8 4. r8 g | % D
  d8. 16 8 g4 8 |
  fis4.~4 8 |
  g8. 16 8 8 8 8 |
  g8 8 fis g4 fis8 | % E
  e8. fis16 g8 4 fis8 |
  g4.~4
}

tenor = \relative {
  \autoBeamOff
  b16 c |
  \tag #'dash    {d8. e16 d8 \slurDashed 8[c] \slurSolid b} |
  \tag #'(v2 v3) {d8. e16 d8             8[c]            b} |
  \tag #'(v1 v4) {d8. e16 d8             8 c             b} |
  \tag #'dash    {b8 a4. r8 \slurDashed 16[b] \slurSolid} |
  \tag #'(v1 v3) {b8 a4. r8             16[b]           } |
  \tag #'(v2 v4) {b8 a4. r8             16 b            } |
  \tag #'dash       {c8. 16 8 \slurDashed a[d] \slurSolid d} |
  \tag #'(v2 v3 v4) {c8. 16 8             a[d]            d} |
  \tag #'v1         {c8. 16 8             a d             d} |
  d4.~4 16 16 | % B
  d4 16[c] b8[c] d |
  \tag #'dash    {e8 4. r8 \slurDashed d16[c] \slurSolid} |
  \tag #'(v2 v3) {e8 4. r8             d16[c]           } |
  \tag #'(v1 v4) {e8 4. r8             d16 c            } |
  b8. a16 g8 d'4 c8 | % C
  b4.~4 d8 |
  d8. 16 8 4 8 |
  d8 b4. r8 d | % D
  b8. a16 g8 d'[c] b |
  d4.~4 8 |
  d8. 16 d8 c b c |
  d8 8 8 4 c8 | % E
  b8. a16 g8 d'4 c8 |
  b4.~4
}

bass = \relative {
  \autoBeamOff
  g16 g |
  \tag #'dash    {8. 16 8 \slurDashed 8[8] \slurSolid g8} |
  \tag #'(v2 v3) {8. 16 8             4               g8} |
  \tag #'(v1 v4) {8. 16 8             8 8             g8} |
  \tag #'dash    {d8 4. r8 \slurDashed 16[16] \slurSolid} |
  \tag #'(v1 v3) {d8 4. r8             8                } |
  \tag #'(v2 v4) {d8 4. r8             16 16            } |
  \tag #'dash       {d8. 16 8 \slurDashed 8[8] \slurSolid 8} |
  \tag #'(v2 v3 v4) {d8. 16 8             4               8} |
  \tag #'v1         {d8. 16 8             8 8             8} |
  g4.~4 16 16 | % B
  g4 8 4 8 |
  \tag #'dash    {c,8 4. r8 \slurDashed 16[16] \slurSolid} |
  \tag #'(v2 v3) {c8  4. r8             8                } |
  \tag #'(v1 v4) {c8  4. r8             16 16            } |
  d8. 16 8 4 8 | % C
  g,4.~4 g'8 | d8. 16 8 4 8 |
  g8 4. r8 8 | % D
  g8. 16 8 4 8 |
  d4.~4 8 |
  g8. 16 f8 e d c |
  b8 d d g4 d8 | % E
  e8. 16 8 d4 8 |
  g,4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  I know I am weak and sin -- ful,
  It comes to me more and more;
  But when the dear Sa -- viour shall bid me come in,
  I'll en -- ter the o -- pen door.
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  The mis -- takes of my \nom life have \yesm been ma -- ny.
  The sins of my \nom heart have \yesm been more,
  And I scarce can see for weep -- ing,
  \nom But I'll \yesm knock at the o -- pen door.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I am low -- est of those who love Him,
  \nom I am \yesm weak -- est of those who pray;
  But I come as He has bid -- den,
  And He will not say me nay.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  My mis -- takes His free grace will cov -- er,
  My sins He will wash a -- way;
  And the feet that shrink and fal -- ter
  Shall walk through the gates of day.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  The mis -- takes of my \nom life have \yesm been ma -- ny,
  \nom And my \yesm spi -- rit is sick with sin,
  And I scarce can see for weep -- ing.
  \nom But the \yesm Sa -- viour will let me in.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "The " mis "takes " "of " "my " "life " "have " "been " ma "ny. "
  "\nThe " "sins " "of " "my " "heart " "have " "been " "more, "
  "\nAnd " "I " "scarce " "can " "see " "for " weep "ing, "
  "\nBut " "I'll " "knock " "at " "the " o "pen " "door. "
  "\nI " "know " "I " "am " "weak " "and " sin "ful, "
  "\nIt " "comes " "to " "me " "more " "and " "more; "
  "\nBut " "when " "the " "dear " Sa "viour " "shall " "bid " "me " "come " "in, "
  "\nI'll " en "ter " "the " o "pen " "door.\n"

  \set stanza = "2."
  "\nI " "am " low "est " "of " "those " "who " "love " "Him, "
  "\nI " "am " weak "est " "of " "those " "who " "pray; "
  "\nBut " "I " "come " "as " "He " "has " bid "den, "
  "\nAnd " "He " "will " "not " "say " "me " "nay. "
  "\nI " "know " "I " "am " "weak " "and " sin "ful, "
  "\nIt " "comes " "to " "me " "more " "and " "more; "
  "\nBut " "when " "the " "dear " Sa "viour " "shall " "bid " "me " "come " "in, "
  "\nI'll " en "ter " "the " o "pen " "door.\n"

  \set stanza = "3."
  "\nMy " mis "takes " "His " "free " "grace " "will " cov "er, "
  "\nMy " "sins " "He " "will " "wash " a "way; "
  "\nAnd " "the " "feet " "that " "shrink " "and " fal "ter "
  "\nShall " "walk " "through " "the " "gates " "of " "day. "
  "\nI " "know " "I " "am " "weak " "and " sin "ful, "
  "\nIt " "comes " "to " "me " "more " "and " "more; "
  "\nBut " "when " "the " "dear " Sa "viour " "shall " "bid " "me " "come " "in, "
  "\nI'll " en "ter " "the " o "pen " "door.\n"

  \set stanza = "4."
  "\nThe " mis "takes " "of " "my " "life " "have " "been " ma "ny, "
  "\nAnd " "my " spi "rit " "is " "sick " "with " "sin, "
  "\nAnd " "I " "scarce " "can " "see " "for " weep "ing. "
  "\nBut " "the " Sa "viour " "will " "let " "me " "in. "
  "\nI " "know " "I " "am " "weak " "and " sin "ful, "
  "\nIt " "comes " "to " "me " "more " "and " "more; "
  "\nBut " "when " "the " "dear " Sa "viour " "shall " "bid " "me " "come " "in, "
  "\nI'll " en "ter " "the " o "pen " "door. "
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
            \new Voice { \global
                         \keepWithTag #'v1 \soprano
                         \keepWithTag #'v2 \soprano
                         \keepWithTag #'v3 \soprano
                         \keepWithTag #'v4 \soprano
                         \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global
                         \keepWithTag #'v1 \alto \nl
                         \keepWithTag #'v2 \alto \nl
                         \keepWithTag #'v3 \alto \nl
                         \keepWithTag #'v4 \alto \nl
                         \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global
                         \keepWithTag #'v1 \tenor
                         \keepWithTag #'v2 \tenor
                         \keepWithTag #'v3 \tenor
                         \keepWithTag #'v4 \tenor
                       }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global
                         \keepWithTag #'v1 \bass
                         \keepWithTag #'v2 \bass
                         \keepWithTag #'v3 \bass
                         \keepWithTag #'v4 \bass
                       }
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
            \new NullVoice = "aligner" {\keepWithTag #'dash \soprano}
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \soprano \bar "|." }
                                               { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \tenor }
                                               { \global \keepWithTag #'dash \bass }
          >>
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
            \new NullVoice = "aligner" {
                                         \keepWithTag #'v1 \soprano
                                         \keepWithTag #'v2 \soprano
                                         \keepWithTag #'v3 \soprano
                                         \keepWithTag #'v4 \soprano
                                       }
            \new Voice \partCombine #'(2 . 88) { \global
                                                 \keepWithTag #'v1 \soprano
                                                 \keepWithTag #'v2 \soprano
                                                 \keepWithTag #'v3 \soprano
                                                 \keepWithTag #'v4 \soprano
                                                 \bar "|." }
                                               { \global
                                                 \keepWithTag #'v1 \alto \nl
                                                 \keepWithTag #'v2 \alto \nl
                                                 \keepWithTag #'v3 \alto \nl
                                                 \keepWithTag #'v4 \alto \nl
                                                 \bar "|." }
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
            \new Voice \partCombine #'(2 . 88) { \global
                                                 \keepWithTag #'v1 \tenor
                                                 \keepWithTag #'v2 \tenor
                                                 \keepWithTag #'v3 \tenor
                                                 \keepWithTag #'v4 \tenor
                                               }
                                               { \global
                                                 \keepWithTag #'v1 \bass
                                                 \keepWithTag #'v2 \bass
                                                 \keepWithTag #'v3 \bass
                                                 \keepWithTag #'v4 \bass
                                               }
          >>
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
