\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I Stood Outside the Gate."
  subtitle    = "Sankey No. 482"
  subsubtitle = "Sankey 880 No. 225"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Philip Phillips."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Miss J. Pollard."
  meter       = \markup\smallCaps "6s."
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
  \mark \markup { \box "A" } s8  s2.*3
  \mark \markup { \box "B" }     s2.*4
  \mark \markup { \box "C" }     s2.*3 s4.
  \mark \markup { \box "D" } s4. s2.*3
  \mark \markup { \box "E" }     s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'8 | d'4 c8 bes4 g8 | f4.~4 8 | g4 8 f8[g] f |
  d4.~4 f8 | d'4 c8 bes4 g8 | f4.~4 8 | 4 8 a[bes] c |
  bes4.~4 8 | c4 8 c[d] ees | d4.~4 8 | ees4 d8 \bar "|" \break c4 bes8 |
  c4.~4 f,8 | d'4 c8 bes4 g8 | f4.~4 8 |
  g4 8 f8[g] f | d4.~4 f8 | g4 8 a[g] a | bes4.~4
}

alto = \relative {
  \autoBeamOff
  d'8 | f4 ees8 d4 ees8 | d4.~4 8 | ees4 8 d[ees] d |
  bes4.~4 d8 | f4 ees8 d4 ees8 | d4.~4 8 | ees4 8 4 8 |
  d4.~4 8 | f4 8 4 8 | 4.~4 8 | g4 f8 ees4 d8 |
  f4.~4 8 | 4 ees8 d4 ees8 | d4.~4 8 |
  ees4 8 d[ees] d | bes4.~4 d8 | ees4 8 4 c8 | d4.~4
}

tenor = \relative {
  \autoBeamOff
  bes8 | 4 8 4 8 | 4.~4 8 | bes4 8 f4 8 |
  f4.~4 bes8 | 4 8 4 8 | 4.~4 8 | 4 c8 4 8 |
  bes4.~4 8 | a4 8 8[bes] c | bes4.~4 8 | 4 8 4 8 |
  a4.~4 8 | bes4 8 4 8 | 4.~4 8 |
  g4 8 f[g] f | d4.~4 f8 | g4 8 a[g] a | bes4.~4
}

bass = \relative {
  \autoBeamOff
  bes,8 | 4 8 4 8 | 4.~4 8 | ees4 8 f4 8 |
  bes,4.~4 8 | 4 8 4 8 | 4.~4 8 | ees4 c8 f4 8 |
  bes,4.~4 8 | f'4 8 4 8 | bes4.~4 8 | bes4 8 4 8 |
  f4.~4 8 | bes,4 8 4 8 | bes4.~4 8 |
  ees4 8 f4 8 | bes,4.~4 8 | ees4 c8 f4 8 | bes,4.~4
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
  I stood out -- side the gate,
  A poor, way -- far -- ing child:
  With -- in my heart there beat
  A tem -- pest loud and wild;
  A fear -- op -- pressed my soul
  That I might bee \markup\italic too \markup\italic late!
  And oh, I trem -- bled sore,
  And prayed out -- side the gate,
  And prayed out -- side the gate.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  "\"Oh," Mer -- "cy!\"" loud I cried,
  "\"Now" give me rest from "sin!\""
  "\"I" "will!\"" a voice re -- plied;
  And Mer -- cy let me in:
  She bound my bleed -- ing wounds,
  And soothed my heart op -- prest;
  She washed a -- way my guilt,
  And gave me peace and rest,
  And gave me peace and rest.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  In Mer -- cy's guise I knew
  The Sa -- viour long a -- bused,
  Who oft -- en sought my heart,
  And wept when I re -- fused.
  Oh, waht a blest re -- turn
  For all my years of sin!—
  I stood out -- side the gate,
  And Je -- sus let me in,
  And Je -- sus let me in.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I " "stood " out "side " "the " "gate, "
  "\nA " "poor, " way far "ing " "child: "
  "\nWith" "in " "my " "heart " "there " "beat "
  "\nA " tem "pest " "loud " "and " "wild; "
  "\nA " fear op "pressed " "my " "soul "
  "\nThat " "I " "might " "bee " "too " "late! "
  "\nAnd " "oh, " "I " trem "bled " "sore, "
  "\nAnd " "prayed " out "side " "the " "gate, "
  "\nAnd " "prayed " out "side " "the " "gate.\n"

  \set stanza = "2."
  "\n\"Oh, " Mer "cy!\" " "loud " "I " "cried, "
  "\n\"Now " "give " "me " "rest " "from " "sin!\" "
  "\n\"I " "will!\" " "a " "voice " re "plied; "
  "\nAnd " Mer "cy " "let " "me " "in: "
  "\nShe " "bound " "my " bleed "ing " "wounds, "
  "\nAnd " "soothed " "my " "heart " op "prest; "
  "\nShe " "washed " a "way " "my " "guilt, "
  "\nAnd " "gave " "me " "peace " "and " "rest, "
  "\nAnd " "gave " "me " "peace " "and " "rest.\n"

  \set stanza = "3."
  "\nIn " Mer "cy's " "guise " "I " "knew "
  "\nThe " Sa "viour " "long " a "bused, "
  "\nWho " oft "en " "sought " "my " "heart, "
  "\nAnd " "wept " "when " "I " re "fused. "
  "\nOh, " "waht " "a " "blest " re "turn "
  "\nFor " "all " "my " "years " "of " "sin!— "
  "\nI " "stood " out "side " "the " "gate, "
  "\nAnd " Je "sus " "let " "me " "in, "
  "\nAnd " Je "sus " "let " "me " "in. "
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
