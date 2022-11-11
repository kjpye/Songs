\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Golden Shore."
  subtitle    = "Sankey No. 509"
  subsubtitle = "Sankey 880 No. 407"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. B. Bradbury."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "C. Dunbar."
  meter       = \markup\smallCaps "8.7."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key d \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*4
  \mark \markup { \box "C" } s1*4
  \mark \markup { \box "D" } s1*4
  \mark \markup { \box "E" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  \tag #'dash       {a'4 a b8[a] \slurDashed fis(g) \slurSolid | }
  \tag #'(v2 v3 v4) {a4  a b8[a]             fis[g]            | }
  \tag #'v1         {a4  a b8[a]             fis g             | }
  a4 4 b8[a] fis[g] | a4 d cis4. b8 | a4 gis a2 |
  \tag #'dash       {a4 a b8[a] \slurDashed fis(g) \slurSolid | }
  \tag #'(v2 v3 v4) {a4 a b8[a]             fis[g]            | }
  \tag #'v1         {a4 a b8[a]             fis g             | }
  a4 4 b8[a] fis[g] | a4 d cis4. b8 | a4 gis a2 \bar "||" |
  e4.\cresc ^\markup\smallCaps Chorus. fis8 g4 fis8[e] | fis4 a b a | e4. fis8 g4 fis8[e] | fis4 a b a |
  d4.^\f 8 4 8 8 | 4-! a-! b-! a-! | e4. fis8 g4 a | b4 a a(fis) |
  d'4.^\f 8 4 8 8 | 4-! a-! b-! a-! | 4. 8 b4 e | d cis d2 |
}

alto = \relative {
  \autoBeamOff
  \tag #'dash       {fis'4 4 g8[fis] \slurDashed d(e) \slurSolid | }
  \tag #'(v2 v3 v4) {fis4  4 g8[fis]             d[e]            | }
  \tag #'v1         {fis4  4 g8[fis]             d e             | }
  fis4 4 g8[fis] d[e] | fis4 4 e4. d8 | cis4 b cis2 |
  \tag #'dash       {fis4 4 g8[fis] \slurDashed d(e) \slurSolid | }
  \tag #'(v2 v3 v4) {fis4 4 g8[fis]             d[e]            | }
  \tag #'v1         {fis4 4 g8[fis]             d e             | }
  fis4 4 g8[fis] d[e] | fis4 4 e4. d8 | cis4 b cis2 |
  cis4. d8 e4 d8[cis] | d4 fis g fis8[d] | cis4. d8 e4 d8[cis] | d4 fis g fis |
  fis4.\omit\f 8 4 8 8 | fis4-! 4-! g-! fis8-! [d] | cis4. d8 e4 fis | g fis fis(d) |
  fis4.\omit\f 8 4 8 8 | fis4-! 4-! g-! fis8-! [d] | fis4. 8 g4 4 | fis e fis2 |
}

tenor = \relative {
  \autoBeamOff \voiceOne
  \tag #'dash       {d4 4 4 \slurDashed 8(8) \slurSolid | }
  \tag #'(v2 v3 v4) {d4 4 4             4               | }
  \tag #'v1         {d4 4 4             8 8             | }
  d4 4 4 4 | 4 4 a'4. d,8 | e4 4 a,2 |
  \tag #'dash       {d4 4 4 \slurDashed 8(8) \slurSolid | }
  \tag #'(v2 v3 v4) {d4 4 4             4               | }
  \tag #'v1         {d4 4 4             8 8             | }
  d4 4 4 4 | 4 4 a'4. d,8 | e4 4 a,2 |
  a'4. 8 4 4 | a4 d4 d a | 4. 8 4 4 | 4 d d d |
  a4. 8 4 d8 8 | 4-! 4-! 4-! a-! | a4. 8 4 4 | 4 4 2 |
  a4. 8 4 d8 8 | 4-! 4-! 4-! 4-! | 4. 8 4 b | a4 4 2 |
}

bass = \relative {
  \autoBeamOff \voiceTwo
  \tag #'dash       {d4 4 4 \slurDashed 8(8) \slurSolid | }
  \tag #'(v2 v3 v4) {d4 4 4             4               | }
  \tag #'v1         {d4 4 4             8 8             | }
  d4 4 4 4 | 4 4 a'4. d,8 | e4 4 a,2 |
  \tag #'dash       {d4 4 4 \slurDashed 8(8) \slurSolid | }
  \tag #'(v2 v3 v4) {d4 4 4             4               | }
  \tag #'v1         {d4 4 4             8 8             | }
  d4 4 4 4 | 4 4 a'4. d,8 | e4 4 a,2 |
  a4. 8 4 4 | d4 4 4 8[fis] | a4. 8 4 a, | d4 4 4 4 |
  d4. 8 4 8 8 | 4-! 4-! 4-! 8-! [fis] | a4. 8 4 a, | 4 4 d2 |
  d4. 8 4 8 8 | 4-! 4-! 4-! 4-! | 4. 8 g4 4 | a a, d2 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  All the storms will soon be o -- ver,
  Then we'll an -- chor in the har -- bour;
  We are out on the o -- cean sail -- ing,
  To a home be -- yond the tide.
  We are out on the o -- cean sail -- ing,
  To a home be -- yond the tide.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  We are out \nom on the \yesm o -- cean sail -- ing,
  Home -- ward bound we sweet -- ly glide;
  We are out \nom on the \yesm o -- cean sail -- ing,
  To a home be -- yond the tide.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Mil -- lions now are safe -- ly land -- ed,
  O -- ver on the gold -- en shore;
  Mil -- lions more are on their jour -- ney,
  Yet there's room for mil -- lions more.
}
 
wordsThree = \lyricmode {
  \set stanza = "3."
  Spread your sails, while heaven -- ly breez -- es
  Gen -- tly waft our ves -- sel on;
  All on board are sweet -- ly sing -- ing—
  Free sal -- va -- tion is the song.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  When we all are safe -- ly an -- chored,
  We will shout— our tri -- als o'er;
  We will walk a -- bout the ci -- ty,
  And we'll sing for e -- ver -- more.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "We " "are " "out " \nom "on " "the " \yesm o "cean " sail "ing, "
  "\nHome" "ward " "bound " "we " sweet "ly " "glide; "
  "\nWe " "are " "out " \nom "on " "the " \yesm o "cean " sail "ing, "
  "\nTo " "a " "home " be "yond " "the " "tide. "
  "\nAll " "the " "storms " "will " "soon " "be " o "ver, "
  "\nThen " "we'll " an "chor " "in " "the " har "bour; "
  "\nWe " "are " "out " "on " "the " o "cean " sail "ing, "
  "\nTo " "a " "home " be "yond " "the " "tide. "
  "\nWe " "are " "out " "on " "the " o "cean " sail "ing, "
  "\nTo " "a " "home " be "yond " "the " "tide.\n"

  \set stanza = "2."
  "\nMil" "lions " "now " "are " safe "ly " land "ed, "
  "\nO" "ver " "on " "the " gold "en " "shore; "
  "\nMil" "lions " "more " "are " "on " "their " jour "ney, "
  "\nYet " "there's " "room " "for " mil "lions " "more. "
  "\nAll " "the " "storms " "will " "soon " "be " o "ver, "
  "\nThen " "we'll " an "chor " "in " "the " har "bour; "
  "\nWe " "are " "out " "on " "the " o "cean " sail "ing, "
  "\nTo " "a " "home " be "yond " "the " "tide. "
  "\nWe " "are " "out " "on " "the " o "cean " sail "ing, "
  "\nTo " "a " "home " be "yond " "the " "tide.\n"

  \set stanza = "3."
  "\nSpread " "your " "sails, " "while " heaven "ly " breez "es "
  "\nGen" "tly " "waft " "our " ves "sel " "on; "
  "\nAll " "on " "board " "are " sweet "ly " sing "ing— "
  "\nFree " sal va "tion " "is " "the " "song. "
  "\nAll " "the " "storms " "will " "soon " "be " o "ver, "
  "\nThen " "we'll " an "chor " "in " "the " har "bour; "
  "\nWe " "are " "out " "on " "the " o "cean " sail "ing, "
  "\nTo " "a " "home " be "yond " "the " "tide. "
  "\nWe " "are " "out " "on " "the " o "cean " sail "ing, "
  "\nTo " "a " "home " be "yond " "the " "tide.\n"

  \set stanza = "4."
  "\nWhen " "we " "all " "are " safe "ly " an "chored, "
  "\nWe " "will " "shout— " "our " tri "als " "o'er; "
  "\nWe " "will " "walk " a "bout " "the " ci "ty, "
  "\nAnd " "we'll " "sing " "for " e ver "more. "
  "\nAll " "the " "storms " "will " "soon " "be " o "ver, "
  "\nThen " "we'll " an "chor " "in " "the " har "bour; "
  "\nWe " "are " "out " "on " "the " o "cean " sail "ing, "
  "\nTo " "a " "home " be "yond " "the " "tide. "
  "\nWe " "are " "out " "on " "the " o "cean " sail "ing, "
  "\nTo " "a " "home " be "yond " "the " "tide. "
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
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
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
            \new NullVoice = alignerT {
              \keepWithTag #'v1 \tenor
              \keepWithTag #'v2 \tenor
              \keepWithTag #'v3 \tenor
              \keepWithTag #'v4 \tenor
            }
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
