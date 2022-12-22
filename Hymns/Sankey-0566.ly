\version "2.24.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Thou Thinkest, Lord, of Me!"
  subtitle    = "Sankey No. 566"
  subsubtitle = "C. C. No. 237"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "E. S. Lorene."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "E. D. Mund."
  meter       = \markup\smallCaps "8.8.8.6."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*3
  \textMark \markup { \box \bold "B" }    s2.*3
  \textMark \markup { \box \bold "C" }    s2.*3
  \textMark \markup { \box \bold "D" }    s2.*3
  \textMark \markup { \box \bold "E" }    s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'4 | 8 b'8 4 g8[a] | g8 fis8 4 d | 8 c'8 4 a8[b] |
  a8 g8 4 d'4 | d8 b8 4 a8[b] | a8 g8 4 a |
  b8 d, b'4 a | g2 \section d'4^\markup\smallCaps Chorus. | 8 b d4 e |
  a,2 c4 | 8 a c4 d | b2 d4 |
  d8 b8 4 a8[b] | a8 g8 4 a | b8 d, b'4 a | g2
}

alto = \relative {
  \autoBeamOff
  b4 | 8 d8 4 b4 | c8 8 4 4 | 8 d8 4 c8[d] |
  c8 b8 4 g' | 8 8 4 fis8[f] | e8 8 4 4 |
  d8 b d4 c | b2 g'4 | 8 8 4 4 |
  fis2 4 | 8 8 a4 fis | g2 4 |
  g8 8 4 fis8[f] | d8 8 4 4 | d8 b d4 c | b2
}

tenor = \relative {
  \autoBeamOff
  g4 | 8 8 4 4 | a8 8 4 fis | 8 a8 4 fis |
  g8 8 4 b | 8 d8 4 c8[b] | c8 8 4 g |
  g8 8 fis4 4 | g2 b4 | 8 d b4 c |
  c8 8 4 a | 8 d8 4 4 | 8 8 4 b |
  b8 d8 4 c8[b] | c8 8 4 g | 8 8 fis4 4 | g2
}

bass = \relative {
  \autoBeamOff
  g4 | 8 8 4 4 | d8 8 4 4 | 8 8 4 4 |
  g8 8 4 4 | 8 8 4 4 | c,8 8 4 4 |
  d8 8 4 4 | g,2 g'4 | 8 8 4 c, |
  d8 8 4 4 | 8 8 4 4 | g8 8 4 4 |
  g8 8 4 4 | c,8 8 4 4 | d8 8 4 4 | g,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Thou think -- est, Lord, of me!
  Thou think -- est, Lord, of me!
  What need I fear when Thou art near,
  And think -- est, Lord, of me!
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ me, of me!
  _ _ _ _ _ me, of me!
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  A -- mid the tri -- als that I meet,
  A -- mid the thorns that pierce my feet,
  One thought re -- mains su -- preme -- ly sweet—
  Thou think -- est, Lord, of me!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  The cares of life come throng -- ing fast,
  Up -- on my soul their sha -- dows cast;
  Their gloom re -- minds my heart at last—
  Thou think -- est, Lord, of me!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Let sha -- dows come, let sha -- dows go,
  Let life be bright, or dark with woe,
  I am con -- tent, for this I know—
  Thou think -- est, Lord, of me!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "A" "mid " "the " tri "als " "that " "I " "meet, "
  "\nA" "mid " "the " "thorns " "that " "pierce " "my " "feet, "
  "\nOne " "thought " re "mains " su preme "ly " "sweet— "
  "\nThou " think "est, " "Lord, " "of " "me! "
  "\nThou " think "est, " "Lord, " "of " "me! "
  "\nThou " think "est, " "Lord, " "of " "me! "
  "\nWhat " "need " "I " "fear " "when " "Thou " "art " "near, "
  "\nAnd " think "est, " "Lord, " "of " "me!\n"

  \set stanza = "2."
  "\nThe " "cares " "of " "life " "come " throng "ing " "fast, "
  "\nUp" "on " "my " "soul " "their " sha "dows " "cast; "
  "\nTheir " "gloom " re "minds " "my " "heart " "at " "last— "
  "\nThou " think "est, " "Lord, " "of " "me! "
  "\nThou " think "est, " "Lord, " "of " "me! "
  "\nThou " think "est, " "Lord, " "of " "me! "
  "\nWhat " "need " "I " "fear " "when " "Thou " "art " "near, "
  "\nAnd " think "est, " "Lord, " "of " "me!\n"

  \set stanza = "3."
  "\nLet " sha "dows " "come, " "let " sha "dows " "go, "
  "\nLet " "life " "be " "bright, " "or " "dark " "with " "woe, "
  "\nI " "am " con "tent, " "for " "this " "I " "know— "
  "\nThou " think "est, " "Lord, " "of " "me! "
  "\nThou " think "est, " "Lord, " "of " "me! "
  "\nThou " think "est, " "Lord, " "of " "me! "
  "\nWhat " "need " "I " "fear " "when " "Thou " "art " "near, "
  "\nAnd " think "est, " "Lord, " "of " "me! "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "A" "mid " "the " tri "als " "that " "I " "meet, "
  "\nA" "mid " "the " "thorns " "that " "pierce " "my " "feet, "
  "\nOne " "thought " re "mains " su preme "ly " "sweet— "
  "\nThou " think "est, " "Lord, " "of " "me! "
  "\nThou " think "est, " "Lord, " "of " "me, " "of " "me! "
  "\nThou " think "est, " "Lord, " "of " "me, "  "of " "me! "
  "\nWhat " "need " "I " "fear " "when " "Thou " "art " "near, "
  "\nAnd " think "est, " "Lord, " "of " "me!\n"
  
  \set stanza = "2."
  "\nThe " "cares " "of " "life " "come " throng "ing " "fast, "
  "\nUp" "on " "my " "soul " "their " sha "dows " "cast; "
  "\nTheir " "gloom " re "minds " "my " "heart " "at " "last— "
  "\nThou " think "est, " "Lord, " "of " "me! "
  "\nThou " think "est, " "Lord, " "of " "me, " "of " "me! "
  "\nThou " think "est, " "Lord, " "of " "me, "  "of " "me! "
  "\nWhat " "need " "I " "fear " "when " "Thou " "art " "near, "
  "\nAnd " think "est, " "Lord, " "of " "me!\n"

  \set stanza = "3."
  "\nLet " sha "dows " "come, " "let " sha "dows " "go, "
  "\nLet " "life " "be " "bright, " "or " "dark " "with " "woe, "
  "\nI " "am " con "tent, " "for " "this " "I " "know— "
  "\nThou " think "est, " "Lord, " "of " "me! "
  "\nThou " think "est, " "Lord, " "of " "me, " "of " "me! "
  "\nThou " think "est, " "Lord, " "of " "me, "  "of " "me! "
  "\nWhat " "need " "I " "fear " "when " "Thou " "art " "near, "
  "\nAnd " think "est, " "Lord, " "of " "me! "
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
