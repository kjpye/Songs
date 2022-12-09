\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "He will Hide me!"
  subtitle    = "Sankey No. 547"
  subsubtitle = "Sankey 880 No. 375"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "M. E. Servoss."
  meter       = \markup\smallCaps "8.7."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 9/8
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4.*12
  \textMark \markup { \box \bold "B" } s4.*12
  \textMark \markup { \box \bold "C" } s4.*7
  \textMark \markup { \box \bold "D" } s4.*9
  \textMark \markup { \box \bold "E" } s4.*8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

apart = { \partCombineApart     }
auto  = { \partCombineAutomatic }

soprano = \relative {
  \autoBeamOff
  d'8[g] a | b4. 4. c8[b] a | b4. g d8[g] b | d4.~4 8 e[d] c | b4.~4. \bar "|" \break
  b8[a] b | c4. a4. 8[g] a | b4. g g8[fis] g | a4.~4 g8 fis[e] fis | g2. \bar "|" \break
  e8^\markup\smallCaps Chorus. [g] c | e4. c d,8[g] b | d4. b d,8[fis] a |
  c4.~8[d] c b4 c8 | d4. b e,8[g] c | e4. c d,8[g] b |
  d4. b d,8[fis] a | c4.~8[d] c b4 a8 | g2.
}

alto = \relative {
  \autoBeamOff
  d'4 8 | g4. 4. a8[g] fis | g4. d d8[g] g | g4.~4 8 fis4 8 | g4.~g
  g8[a] g | fis4. 4. 4 8 |d4. 4. 4 8 | c4.~4 e8 d4 8 | 2.
  \apart r4. | g4 8 e4 8 r4. | g4 8 4 8 r4. |
  fis4 8 4 8 g4 a8 | b4. g4(f8) r4. | g4 8 e4 8 r4. |
  g4 8 4 8 r4. |fis4 8 4 8 g4 d8 | 2.
}

tenor = \relative {
  \autoBeamOff
  b4 c8 | d4. 4. 4 8 | 4. b b4 d8 | b4.~4 8 a4 d8 | 4.~4.
  d8(c) b | a4. c c8[b] a | fis4. b b8[a] g | e4.~4 c'8 4 8 | b2.
  r4. | c4 8 g4 8 r4. | b4 8 d4 8 r4. |
  a4 8 8[b] a g4 fis8 | g4(b8) d4. r | c4 8 g4 8 r4. |
  b4 8 d4 8 r4. | a4 8 8[b] a d4 c8 | b2.
}

bass = \relative {
  \autoBeamOff
  g4 8 | 4. 4. d4 8 | g,4. g g'4 8 | 4.~4 8 d4 8 | g4.~4.
  g8[fis] g | d4. 4. 4 8 | g,4. 4. 8[a] b | c4.~4 8 d4 8 | g,2.
  r4. | c4 8 4 8 r4. | g'4 8 4 8 r4. |
  d4 8 4 8 4 8 | g,4. g r | c4 8 4 8 r4. |
  g'4 8 4 8 r4. | d4 8 4 8 4 8 | g,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  He will hide me! He will hide me!
  Where no harm can e'er be -- tide me;
  He will hide me! safe -- ly hide me
  In the sha -- dow of His hand.
}

chorusSop = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  \chorus
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  When the storms of life are ra -- ging,
  Tem -- pests wild on sea and land,
  I will seek a place of re -- fuge
  In the sha -- dow of God's hand.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Tho' He may send some af -- flic -- tion,
  "'T will" but make me long for homel
  For in love and not in an -- ger,
  All His chast -- en -- ings will come.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  En -- e -- mies may strive to in -- jure,
  Sa -- tan all his arts em -- ploy;
  God will turn what seems to harm me
  In -- to e -- ver -- last -- ing joy.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  So, while here the cross I'm bear -- ing,
  Meet -- ing storms and bil -- lows wild,
  Je -- sus for my soul is car -- ing,
  Naught can harm His Fa -- ther's child.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  When the storms of life are ra -- ging,
  Tem -- pests wild on sea and land,
  I will seek a place of re -- fuge
  In the sha -- dow of God's hand.
  He will hide me! He will hide me!
  Where no harm can e'er be -- tide me;
  He will hide me! safe -- ly hide me
  In the sha -- dow of His hand.

  \set stanza = "2."
  Tho' He may send some af -- flic -- tion,
  "'T will" but make me long for homel
  For in love and not in an -- ger,
  All His chast -- en -- ings will come.
  He will hide me! He will hide me!
  Where no harm can e'er be -- tide me;
  He will hide me! safe -- ly hide me
  In the sha -- dow of His hand.

  \set stanza = "3."
  En -- e -- mies may strive to in -- jure,
  Sa -- tan all his arts em -- ploy;
  God will turn what seems to harm me
  In -- to e -- ver -- last -- ing joy.
  He will hide me! He will hide me!
  Where no harm can e'er be -- tide me;
  He will hide me! safe -- ly hide me
  In the sha -- dow of His hand.

  \set stanza = "4."
  So, while here the cross I'm bear -- ing,
  Meet -- ing storms and bil -- lows wild,
  Je -- sus for my soul is car -- ing,
  Naught can harm His Fa -- ther's child.
  He will hide me! He will hide me!
  Where no harm can e'er be -- tide me;
  He will hide me! safe -- ly hide me
  In the sha -- dow of His hand.
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
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics \wordsMidi
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
  \bookOutputSuffix "midi-sop"
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
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "alignerS" \soprano
            \new NullVoice = "aligner" \alto
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
          \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \chorusSop
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
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
            \new NullVoice = "alignerS" { \repeat unfold \verses \soprano }
            \new NullVoice = "aligner"  { \repeat unfold \verses \alto }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
          \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS { \repeat unfold \verses \chorusSop }
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
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
