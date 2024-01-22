\version "2.25.0"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Lord, Speak to me!"
  subtitle    = "Sankey No. 786"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "L. v. Beethoven."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Frances R. Havergal."
  meter       = \markup\smallCaps "L.M."
  piece       = \markup\smallCaps "Alsace."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 3/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2.*5
  \textMark \markup { \box \bold "B" } s2.*5
  \textMark \markup { \box \bold "C" } s2.*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c'4 f g | a2 4 | 4(bes) a | g2. | c4 bes a |
  g2 a4 | e2 d4 | c2 4 | g'(f) g | g(a) c, |
  a'4(g) a | a(bes) bes | bes(c) d | d(g,) a | c(bes) \acciaccatura a8 g4 | f2.
}

alto = \relative {
  \autoBeamOff
  c'4 4 4 | c(f) f | f(g) f | e2. | f4 e f |
  g2 c,4 | 2 b4 | c2 4 | e(f) e | e(f) c |
  f4(e) dis | e2 4 | 2 4 | 2 f4 | 2 e4 | f2.
}

tenor = \relative {
  \autoBeamOff
  a4 g e | f(a) c | 2 4 | 2. | a4 bes c |
  c2 a4 | g2 f4 | e2 c4 | bes'4(a) g | c2 4 |
  c2 4 | 2 4 | 2 4 | 2 4 | d2 bes4 | a2.
}

bass = \relative {
  \autoBeamOff
  f4 a, c | f,2 f'4 | f(e) f | c2. | a'4 g f |
  e2 f4 | g2 g,4 | c2 4 | 2 4 | f,2 c'4 |
  c'4(bes) fis | g2 4 | g(a) bes | 2 a4 | g2 c,4 | f2. |
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Lord, speak to me, that I may speak
  In liv -- ing e -- choes of Thy tone;
  As Thou hast sought, so let me seek
  Thy err -- ing chil -- dren lost and lone.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Oh lead me, Lord, that I may lead
  The wan -- d'ring and the wa -- v'ring feet!
  Oh feed me, Lord, that I may feed
  Thy hun -- g'ring ones with man -- na sweet!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh strength -- en me, that while I stand
  Firm on the Rock, and strong in Thee,
  I may stretch out a lov -- ing hand
  To wres -- tlers with the trou -- bled sea!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Lord, " "speak " "to " "me, " "that " "I " "may " "speak "
  "\nIn " liv "ing " e "choes " "of " "Thy " "tone; "
  "\nAs " "Thou " "hast " "sought, " "so " "let " "me " "seek "
  "\nThy " err "ing " chil "dren " "lost " "and " "lone.\n"

  \set stanza = "2."
  "\nOh " "lead " "me, " "Lord, " "that " "I " "may " "lead "
  "\nThe " wan "d'ring " "and " "the " wa "v'ring " "feet! "
  "\nOh " "feed " "me, " "Lord, " "that " "I " "may " "feed "
  "\nThy " hun "g'ring " "ones " "with " man "na " "sweet!\n"

  \set stanza = "3."
  "\nOh " strength "en " "me, " "that " "while " "I " "stand "
  "\nFirm " "on " "the " "Rock, " "and " "strong " "in " "Thee, "
  "\nI " "may " "stretch " "out " "a " lov "ing " "hand "
  "\nTo " wres "tlers " "with " "the " trou "bled " "sea! "
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
