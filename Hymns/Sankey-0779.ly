\version "2.25.0"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Gather them in!"
  subtitle    = "Sankey No. 779"
  subsubtitle = "C. C. No. 47"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "F. J. van Alstyne."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" }    s1*2 s2
  \textMark \markup { \box \bold "B" } s2 s1*2 s2.
  \textMark \markup { \box \bold "C" } s4 s1*3
  \textMark \markup { \box \bold "D" }    s1*3
  \textMark \markup { \box \bold "E" }    s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'8 8 4 4 c8 ees |aes4 bes c4 8 8 | des4 c8 8 \bar "|" \break
  bes4 aes | bes2. ees,4 | 8 8 4 4 c8 ees | aes4 bes c \bar "|" \break
  des8 8 | c4 bes8 aes bes4 g | aes2. r4
  \section \sectionLabel \markup\smallCaps Chorus. |
  des4 8. 16 4 4 |
  c4 8. 16 4 4 | bes4 8 8 4 c8 bes | ees2. des4 |
  c4 c bes4 8 8 | aes4 g f\fermata f | ees8 8 4 f g | aes2. r4 |
}

alto = \relative {
  \autoBeamOff
  c'8 8 4 4 aes8 c | ees4 4 4 8 aes | g4 aes8 8
  ees4 d | ees2. des4 | c8 8 4 4 aes8 c | ees4 4 4
  f8 8 | ees4 8 8 4 des | c2. r4 \section | f4 8. 16 4 4 |
  ees4 8. 16 4 4 | 4 8 8 aes4 8 8 | g2. bes4 |
  aes4 4 g4 8 8 | f4 e f\fermata bes, | c8 8 4 des4 4 | c2. r4 |
}

tenor = \relative {
  \autoBeamOff
  aes8 8 4 4 ees8 aes | 4 g aes ees'8 8 | 4 8 8
  ees4 aes, | g2. 4 | aes8 8 4 4 ees8 aes | 4 g aes
  aes8 8 | 4 des8 c des4 bes | aes2. r4 \section 4 8. 16 4 4 |
  aes4 8. 16 4 4 | bes4 8 8 d4 8 8 | ees2. 4 |
  ees4 4 4 des8 8 | c4 bes aes4\fermata 4 | 8 8 4 g bes | aes2. r4 |
}

bass = \relative {
  \autoBeamOff
  aes,8 8 4 4 8 8 | c4 ees aes4 8 8 | bes4 aes8 8
  g4 f | ees2. 4 | aes,8 8 4 4 8 8 | c4 ees aes
  des,8 8 | ees4 8 8 4 4 | aes,2. r4 \section | des4 8. 16 4 4 |
  aes'4 8. 16 4 4 | g4 8 8 f4 8 8 | ees2. 4 |
  aes4 4 ees4 8 8 | f4 c des\fermata d | ees8 8 4 4 4 | aes,2. r4 |
}

chorus = \lyricmode {
  Out in the high -- way, out in the by -- way,
  Out in the dark paths of sin,
  Go forth! go forth with a  lov -- ing heart,
  And ga -- ther the wan -- d'rers in.
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Gath -- er them in, for there yet is room
  At the feast that the King has spread;
  Oh, gath -- er them in, let his house be filled,
  And the hun -- gry and poor be fed.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Gath -- er them in, for there yet is room,
  But our hearts— how they throb with pain,
  To think of the ma -- ny who slight the call.
  That may nev -- er be heard a -- gain.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Gath -- er them in, for there yet is room,
  'Tis a mes -- sage from God a -- bove;
  Oh gath -- er then in -- to the fold of grace,
  And the arms of the Sa -- viour's love.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Gath" "er " "them " "in, " "for " "there " "yet " "is " "room "
  "\nAt " "the " "feast " "that " "the " "King " "has " "spread; "
  "\nOh, " gath "er " "them " "in, " "let " "his " "house " "be " "filled, "
  "\nAnd " "the " hun "gry " "and " "poor " "be " "fed. "
  "\nOut " "in " "the " high "way, " "out " "in " "the " by "way, "
  "\nOut " "in " "the " "dark " "paths " "of " "sin, "
  "\nGo " "forth! " "go " "forth " "with " "a "  lov "ing " "heart, "
  "\nAnd " ga "ther " "the " wan "d'rers " "in.\n"

  \set stanza = "2."
  "\nGath" "er " "them " "in, " "for " "there " "yet " "is " "room, "
  "\nBut " "our " "hearts— " "how " "they " "throb " "with " "pain, "
  "\nTo " "think " "of " "the " ma "ny " "who " "slight " "the " "call. "
  "\nThat " "may " nev "er " "be " "heard " a "gain. "
  "\nOut " "in " "the " high "way, " "out " "in " "the " by "way, "
  "\nOut " "in " "the " "dark " "paths " "of " "sin, "
  "\nGo " "forth! " "go " "forth " "with " "a "  lov "ing " "heart, "
  "\nAnd " ga "ther " "the " wan "d'rers " "in.\n"

  \set stanza = "3."
  "\nGath" "er " "them " "in, " "for " "there " "yet " "is " "room, "
  "\n'Tis " "a " mes "sage " "from " "God " a "bove; "
  "\nOh " gath "er " "then " in "to " "the " "fold " "of " "grace, "
  "\nAnd " "the " "arms " "of " "the " Sa "viour's " "love. "
  "\nOut " "in " "the " high "way, " "out " "in " "the " by "way, "
  "\nOut " "in " "the " "dark " "paths " "of " "sin, "
  "\nGo " "forth! " "go " "forth " "with " "a "  lov "ing " "heart, "
  "\nAnd " ga "ther " "the " wan "d'rers " "in. "
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
