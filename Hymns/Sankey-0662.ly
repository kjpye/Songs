\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Gracious Spirit, Holy Ghost."
  subtitle    = "Sankey No. 662"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Dr. Filitz."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "C. Wordsworth, D. D."
  meter       = \markup\smallCaps "7.7.7.5."
  piece       = \markup\smallCaps "Capetown."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key d \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*4
  \textMark \markup { \box \bold "B" } s1*5
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'4 fis b a | g4 4 fis2 | d'4 cis d a | g fis e2 |
  a4 d cis b | a gis a2 | fis fis | e e | d1 |
}

alto = \relative {
  \autoBeamOff
  d'4 4 4 cis | d e d2 | fis4 e fis e | d d c2 |
  d4 fis e fis | e e e2 | d d | d cis | d1 |
}

tenor = \relative {
  \autoBeamOff
  fis4 a g e | b' a a2 | 4 4 4 4 | b a a2 |
  a4 4 4 d | cis b cis2 | a b | b a4(g) | fis1 |
}

bass = \relative {
  \autoBeamOff
  d4 4 g, a4 | b cis d2 | 4 a d cis | b d a2 |
  fis'4 d a' d, | e e a,2 | d b | g a | d1 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 6

wordsOne = \lyricmode {
  \set stanza = "1."
  Gra -- cious Spi -- rit, Ho -- ly Ghost,
  Taught by Thee, we cov -- et most
  Of Thy gifts at Pen -- te -- cost,
  Ho -- ly heaven -- ly love.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Love is kind, and suf -- fers long;
  Love is meek, and thinks no wrong;
  Love, than death it -- self more strong;
  Give us heaven -- ly love.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Pro -- phe -- cy will fade a -- way,
  Melt -- ing in the light of day;
  Love will ev -- er with us stay:
  Give us heaven -- ly love.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Faith will van -- ish in -- to sight;
  Hope be emp -- tied in de -- light;
  Love in heaven will shine more bright:
  Give us heaven -- ly love.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Faith and hope and love we see
  Join -- ing hand in hand a -- gree;
  But the great -- est of the three,
  And the best, is love.
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  From the o -- ver sha -- dow -- ing
  Of Thy gold and sil -- ver wing,
  Shed on us, who to Thee sing,
  Ho -- ly, heaven -- ly love.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Gra" "cious " Spi "rit, " Ho "ly " "Ghost, "
  "\nTaught " "by " "Thee, " "we " cov "et " "most "
  "\nOf " "Thy " "gifts " "at " Pen te "cost, "
  "\nHo" "ly " heaven "ly " "love.\n"

  \set stanza = "2."
  "\nLove " "is " "kind, " "and " suf "fers " "long; "
  "\nLove " "is " "meek, " "and " "thinks " "no " "wrong; "
  "\nLove, " "than " "death " it "self " "more " "strong; "
  "\nGive " "us " heaven "ly " "love.\n"

  \set stanza = "3."
  "\nPro" phe "cy " "will " "fade " a "way, "
  "\nMelt" "ing " "in " "the " "light " "of " "day; "
  "\nLove " "will " ev "er " "with " "us " "stay: "
  "\nGive " "us " heaven "ly " "love.\n"

  \set stanza = "4."
  "\nFaith " "will " van "ish " in "to " "sight; "
  "\nHope " "be " emp "tied " "in " de "light; "
  "\nLove " "in " "heaven " "will " "shine " "more " "bright: "
  "\nGive " "us " heaven "ly " "love.\n"

  \set stanza = "5."
  "\nFaith " "and " "hope " "and " "love " "we " "see "
  "\nJoin" "ing " "hand " "in " "hand " a "gree; "
  "\nBut " "the " great "est " "of " "the " "three, "
  "\nAnd " "the " "best, " "is " "love.\n"
  
  \set stanza = "6."
  "\nFrom " "the " o "ver " sha dow "ing "
  "\nOf " "Thy " "gold " "and " sil "ver " "wing, "
  "\nShed " "on " "us, " "who " "to " "Thee " "sing, "
  "\nHo" "ly, " heaven "ly " "love. "
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
            \new Lyrics \lyricsto "aligner"   \wordsSix
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
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
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
