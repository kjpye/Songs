\version "2.23.9"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Over the Thorn and Thistle."
  subtitle    = "Sankey No. 403"
  subsubtitle = "C. C. No. 14"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "H. W. G."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8  s2.*3 s4. s4
  \mark \markup { \box "B" } s8  s2.*3 s4. s4
  \mark \markup { \box "C" } s8  s2.*2 s4.
  \mark \markup { \box "D" } s4. s2.*2 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  \tag #'dash       f'8
  \tag #'(v1 v2 v3) s8
  \tag #'v4         f8
  f8 8 8 g4 bes8
  bes8 a4~4 8
  \tag #'dash       {\slurDashed bes8(8) \slurSolid 8 c4 bes8}
  \tag #'(v1 v2 v3) {            bes4               8 c4 bes8}
  \tag #'v4         {            bes8 8             8 c4 bes8}
  \tag #'dash       {d4.~4 \bar "|" \break \slurDashed d16(16) \slurSolid}
  \tag #'v2         {d4.~4 \bar "|" \break             d8                }
  \tag #'(v1 v3 v4) {d4.~4 \bar "|" \break             d16 16            }
  \tag #'dash       {c4 8 bes4 \slurDashed bes16(16) \slurSolid} % B
  \tag #'(v2 v3 v4) {c4 8 bes4             bes8                } % B
  \tag #'v1         {c4 8 bes4             bes16 16            } % B
  a4 g8 c4 f,8
  \tag #'dash       {\slurDashed a8(bes) \slurSolid a8 g4 f8}
  \tag #'(v2 v3 v4) {            a8(bes)            a8 g4 f8}
  \tag #'v1         {            a8 bes             a8 g4 f8}
  \tag #'dash       {f4.~4 \bar "|" \break \slurDashed f16(16) \slurSolid}
  \tag #'v3         {f4.~4 \bar "|" \break             f8                }
  \tag #'(v1 v2 v4) {f4.~4 \bar "|" \break             f16 16            }
  c'4 bes8 8 a g % C
  g4 f8 4 bes8
  d4 bes8 \bar "|" \break bes8 a bes
  c4 g8 c4 ees8 % D
  d4 c8 8 g bes
  bes4 a8 bes4
}

alto = \relative {
  \autoBeamOff
  \tag #'dash       f'8
  \tag #'(v1 v2 v3) s8
  \tag #'v4         f8
  d8 8 8 4 8
  ees8 4~4 8
  \tag #'dash       {\slurDashed f8(8) \slurSolid 8 g4 ges8}
  \tag #'(v1 v2 v3) {            f4               8 g4 ges8}
  \tag #'v4         {            f8 8             8 g4 ges8}
  \tag #'dash       {f4.~4 \slurDashed 16(16) \slurSolid}
  \tag #'v2         {f4.~4             8                }
  \tag #'(v1 v3 v4) {f4.~4             16 16            }
  \tag #'dash       {f4 ees8 d4 \slurDashed f16(16) \slurSolid} % B
  \tag #'(v2 v3 v4) {f4 ees8 d4             f8                }
  \tag #'v1         {f4 ees8 d4             f16 16            }
  f4 8 4 8
  \tag #'dash       {\slurDashed f8(8) \slurSolid 8 e4 f8}
  \tag #'(v2 v3 v4) {            f4               8 e4 f8}
  \tag #'v1         {            f8 8             8 e4 f8}
  \tag #'dash       {f4.~4 \slurDashed f16(16) \slurSolid}
  \tag #'v3         {f4.~4             f8                }
  \tag #'(v1 v2 v4) {f4.~4             f16 16            }
  ees4 d8 ees8 8 8 % C
  ees4 8 d4 8
  f4 8 e8 8 8
  f4 g8 f4 8
  f4 fis8 g8 8 ges
  f4 ees8 d4
}

tenor = \relative {
  \autoBeamOff
  \tag #'dash       bes8
  \tag #'(v1 v2 v3) s8
  \tag #'v4         bes8
  bes8 8 8 4 f8
  f8 4~4 8
  \tag #'dash       {\slurDashed bes8(8) \slurSolid 8 4 8}
  \tag #'(v1 v2 v3) {            bes4               8 4 8}
  \tag #'v4         {            bes8 8             8 4 8}
  \tag #'dash       {bes4.~4 \slurDashed bes16(16) \slurSolid}
  \tag #'v2         {bes4.~4             bes8                }
  \tag #'(v1 v3 v4) {bes4.~4             bes16 16            }
  \tag #'dash       {a4 8 g4 \slurDashed d'16(16) \slurSolid} % B
  \tag #'(v2 v3 v4) {a4 8 g4             d'8                } % B
  \tag #'v1         {a4 8 g4             d'16 16            } % B
  d4 8 c4 a8
  \tag #'dash       {\slurDashed c8(d) \slurSolid c bes4 a8}
  \tag #'(v2 v3 v4) {            c8(d)            c bes4 a8}
  \tag #'v1         {            c8 d             c bes4 a8}
  \tag #'dash       {a4.~4 \slurDashed a16(16) \slurSolid}
  \tag #'v3         {a4.~4             a8                }
  \tag #'(v1 v2 v4) {a4.~4             a16 16            }
  a4 bes8 c c a % C
  bes4 c8 bes4 8
  bes4 d8 c8 8 bes
  a4 bes8 a4 c8 % D
  bes4 a8 g c cis
  d4 c8 bes4
}

bass = \relative {
  \autoBeamOff
  \tag #'dash       bes8
  \tag #'(v1 v2 v3) s8
  \tag #'v4         bes8
  bes,8 8 8 4 8
  c8 4~4 8
  \tag #'dash       {\slurDashed d8(8) \slurSolid 8 e4 8}
  \tag #'(v1 v2 v3) {            d4               8 e4 8}
  \tag #'v4         {            d8 8             8 e4 8}
  \tag #'dash       {bes4.~4 \slurDashed bes16(16) \slurSolid}
  \tag #'v2         {bes4.~4             bes8                }
  \tag #'(v1 v3 v4) {bes4.~4             bes16 16            }
  \tag #'dash       {f'4 8 g4 \slurDashed 16(16) \slurSolid} % B
  \tag #'(v2 v3 v4) {f 4 8 g4             8                }
  \tag #'v1         {f 4 8 g4             16 16            }
  a4 bes8 a4 f8
  \tag #'dash       {\slurDashed c8(8) \slurSolid 8 4 f8}
  \tag #'(v2 v3 v4) {            c4               8 4 f8}
  \tag #'v1         {            c8 8             8 4 f8}
  \tag #'dash       {f4.~4 \slurDashed 16(16) \slurSolid}
  \tag #'v3         {f4.~4             8                }
  \tag #'(v1 v2 v4) {f4.~4             16 16            }
  f4 8 8 8 8 % C
  bes,4 a8 bes4 8
  bes4 8 g'8 8 ges
  f4 e8 f4 a8 % D
  bes4 d,8 ees ees e
  f4 8 bes,4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  _ O -- ver the thorn and this -- tle,
  A -- long the sto -- ny way,
  \nom From the Shep -- herd's care to the \yesm des -- ert bare.
  There \nom wan -- dered \yesm a sheep one day;
  \nom And a \yesm voice fell sad -- ly from far a -- way:
  "\"My" sheep, how long will thou love to "stray?\""
  "\"My" sheep, how long will thou love to "stray?\""
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  _ O -- ver the thorn and this -- tle,
  A -- long the sto -- ny way,
  With feet that bled, the Shep -- herd sped
  To where the wan -- d'rer lay;
  \nom He had \yesm heard it cry -- ing from far a -- way:
  "\"Lord," bring me home to Thy flock, I "pray!\""
  "\"Lord," bring me home to Thy flock, I "pray!\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  _ O -- ver the thorn and this -- tle,
  A -- long the sto -- ny way,
  \nom I have \yesm sought for thee, now trust to Me;
  I'll bear thee home to -- day.
  The wolf and li -- on flee far a -- way
  When on my shoul -- der My sheep I lay.
  When on my shoul -- der My sheep I lay.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  In -- stead of the thorn and this -- tle,
  The \nom Myr -- tle \yesm be -- decks the way
  \nom Where the \yesm shep -- herd feeds and gen -- tly leads
  The sheep He found that day:
  \nom And He \yesm lead -- eth o -- thers from far a -- way
  To rest in fields of a cloud -- less day.
  To rest in fields of a cloud -- less day.
}
  
wordsSingle = \lyricmode {
  \set stanza = "1."
  O -- ver the thorn and this -- tle,
  A -- long the sto -- ny way,
  From the Shep -- herd's care to the des -- ert bare.
  There wan -- dered a sheep one day;
  And a voice fell sad -- ly from far a -- way:
  "\"My" sheep, how long will thou love to "stray?\""
  "\"My" sheep, how long will thou love to "stray?\""

  \set stanza = "2."
  O -- ver the thorn and this -- tle,
  A -- long the sto -- ny way,
  With feet that bled, the Shep -- herd sped
  To where the wan -- d'rer lay;
  He had heard it cry -- ing from far a -- way:
  "\"Lord," bring me home to Thy flock, I "pray!\""
  "\"Lord," bring me home to Thy flock, I "pray!\""

  \set stanza = "3."
  O -- ver the thorn and this -- tle,
  A -- long the sto -- ny way,
  I have sought for thee, now trust to Me;
  I'll bear thee home to -- day.
  The wolf and li -- on flee far a -- way
  When on my shoul -- der My sheep I lay.
  When on my shoul -- der My sheep I lay.

  \set stanza = "4."
  In -- stead of the thorn and this -- tle,
  The Myr -- tle be -- decks the way
  Where the shep -- herd feeds and gen -- tly leads
  The sheep He found that day:
  And He lead -- eth o -- thers from far a -- way
  To rest in fields of a cloud -- less day.
  To rest in fields of a cloud -- less day.
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "O" "ver " "the " "thorn " "and " this "tle, "
  "\nA" "long " "the " sto "ny " "way, "
  "\nFrom " "the " Shep "herd's " "care " "to " "the " des "ert " "bare. "
  "\nThere " wan "dered " "a " "sheep " "one " "day; "
  "\nAnd " "a " "voice " "fell " sad "ly " "from " "far " a "way: "
  "\n\"My " "sheep, " "how " "long " "will " "thou " "love " "to " "stray?\" "
  "\n\"My " "sheep, " "how " "long " "will " "thou " "love " "to " "stray?\" "

  \set stanza = "2."
  "\nO" "ver " "the " "thorn " "and " this "tle, "
  "\nA" "long " "the " sto "ny " "way, "
  "\nWith " "feet " "that " "bled, " "the " Shep "herd " "sped "
  "\nTo " "where " "the " wan "d'rer " "lay; "
  "\nHe " "had " "heard " "it " cry "ing " "from " "far " a "way: "
  "\n\"Lord, " "bring " "me " "home " "to " "Thy " "flock, " "I " "pray!\" "
  "\n\"Lord, " "bring " "me " "home " "to " "Thy " "flock, " "I " "pray!\" "

  \set stanza = "3."
  "\nO" "ver " "the " "thorn " "and " this "tle, "
  "\nA" "long " "the " sto "ny " "way, "
  "\nI " "have " "sought " "for " "thee, " "now " "trust " "to " "Me; "
  "\nI'll " "bear " "thee " "home " to "day. "
  "\nThe " "wolf " "and " li "on " "flee " "far " a "way "
  "\nWhen " "on " "my " shoul "der " "My " "sheep " "I " "lay. "
  "\nWhen " "on " "my " shoul "der " "My " "sheep " "I " "lay. "

  \set stanza = "4."
  "\nIn" "stead " "of " "the " "thorn " "and " this "tle, "
  "\nThe " Myr "tle " be "decks " "the " "way "
  "\nWhere " "the " shep "herd " "feeds " "and " gen "tly " "leads "
  "\nThe " "sheep " "He " "found " "that " "day: "
  "\nAnd " "He " lead "eth " o "thers " "from " "far " a "way "
  "\nTo " "rest " "in " "fields " "of " "a " cloud "less " "day. "
  "\nTo " "rest " "in " "fields " "of " "a " cloud "less " "day. "
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
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice \partCombine { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
            \new NullVoice = alignerT { \keepWithTag #'dash \tenor }
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

\book {
  \bookOutputSuffix "single"
  \score {
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
            \new Voice \partCombine { \global
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
            \new Lyrics \lyricsto "aligner" \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global
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
            \new NullVoice = alignerT {
              \keepWithTag #'v1 \tenor
              \keepWithTag #'v2 \tenor
              \keepWithTag #'v3 \tenor
              \keepWithTag #'v4 \tenor
            }
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
            \new Voice \partCombine { \global
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
            \new Lyrics \lyricsto "aligner" \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global
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
            \new NullVoice = alignerT {
              \keepWithTag #'v1 \tenor
              \keepWithTag #'v2 \tenor
              \keepWithTag #'v3 \tenor
              \keepWithTag #'v4 \tenor
            }
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
