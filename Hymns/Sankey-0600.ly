\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Search me, O Lord!"
  subtitle    = "Sankey No. 600"
  subsubtitle = "N. H. No. 47"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Hubert Ṗ Main."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Grace J. Frances."
  meter       = \markup\smallCaps "10s"
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
  \textMark \markup { \box \bold "A" } s1*4
  \textMark \markup { \box \bold "B" } s1*4
  \textMark \markup { \box \bold "C" } s1*4
  \textMark \markup { \box \bold "D" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''2 g4 aes | des2. c4 | bes4 g aes c | bes2. r4 | \break
  ees2 g,4 a | bes2 c | bes4 ees, g f | ees2. r4 | \break
  bes'2 f4 g | aes2. 4 | d4 c bes aes | bes2. r4 | \break
  aes2 c4 des | ees2 c | 8[bes] aes4 4 g | aes2. r4 |
}

alto = \relative {
  \autoBeamOff
  ees'2 4 4 | des2. ees4 | f ees ees ees | 2. r4 |
  ees2 4 4 | 2 2 | 4 4 d d | ees2. r4 |
  des2 4 4 | c(g' f) ees | 4 4 f f | ees2. r4 |
  aes2 g4 f | ees2 2 | 8[des] c4 f des | c2. r4 |
}

tenor = \relative {
  \autoBeamOff
  aes2 ees4 aes | 2. 4 | aes bes aes aes | g2. r4 |
  g2 c4 f, | g2 aes | bes4 g bes aes | g2. r4 |
  g2 aes4 bes | aes2. 4 | g aes aes bes | g2. r4 |
  aes4(c) ees aes, | 2 2 | g4 aes bes ees, | 2. r4 |
}

bass = \relative {
  \autoBeamOff
  aes,2 bes4 c | f2. ees4 | des4 4 c aes | ees'2. r4 |
  c2 4 4 | bes2 aes | g4 c bes bes | ees2. r4 |
  ees2 4 4 | f(ees des) c | bes aes des d | ees2. r4 |
  f2 ees4 des | c2 aes | ees'4 f des ees | aes,2. r4 |
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
  Search me, O lord! and try this heart of mine;
  Search me, and prove if I in -- deed am Thine;
  Test by The word __ that nev -- er changed can be,
  My strength of hope and liv -- ing faith in Thee.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Search me, O lord! sub -- due each vain de -- sire,
  And in my soul a deep -- er love in --spire;
  Hide Thou my life __ that I, su -- preme -- ly blest,
  Be -- neath Thy wings in per -- fect peace may rest.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Search me, O lord! and from the dross of sin
  Re -- fine as gold, a deep -- er love in -- spire;
  Search Thou my thoughts __ whose springs Thine eyes can see;
  From se -- cret faults O Sa -- viour cleanse Thou me!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Search me, O lord! let faith thro' grace Di -- vine
  Thy -- self re -- flext in ev -- 'ry act of mine,
  Till at Thy call __ my wait -- ing soul shall rise,
  Caught up with joy to meet Thee in the skies.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Search " "me, " "O " "lord! " "and " "try " "this " "heart " "of " "mine; "
  "\nSearch " "me, " "and " "prove " "if " "I " in "deed " "am " "Thine; "
  "\nTest " "by " "The " "word "  "that " nev "er " "changed " "can " "be, "
  "\nMy " "strength " "of " "hope " "and " liv "ing " "faith " "in " "Thee.\n"

  \set stanza = "2."
  "\nSearch " "me, " "O " "lord! " sub "due " "each " "vain " de "sire, "
  "\nAnd " "in " "my " "soul " "a " deep "er " "love " in"spire; "
  "\nHide " "Thou " "my " "life "  "that " "I, " su preme "ly " "blest, "
  "\nBe" "neath " "Thy " "wings " "in " per "fect " "peace " "may " "rest.\n"

  \set stanza = "3."
  "\nSearch " "me, " "O " "lord! " "and " "from " "the " "dross " "of " "sin "
  "\nRe" "fine " "as " "gold, " "a " deep "er " "love " in "spire; "
  "\nSearch " "Thou " "my " "thoughts "  "whose " "springs " "Thine " "eyes " "can " "see; "
  "\nFrom " se "cret " "faults " "O " Sa "viour " "cleanse " "Thou " "me!\n"

  \set stanza = "4."
  "\nSearch " "me, " "O " "lord! " "let " "faith " "thro' " "grace " Di "vine "
  "\nThy" "self " re "flext " "in " ev "'ry " "act " "of " "mine, "
  "\nTill " "at " "Thy " "call "  "my " wait "ing " "soul " "shall " "rise, "
  "\nCaught " "up " "with " "joy " "to " "meet " "Thee " "in " "the " "skies. "
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
            \new NullVoice = "aligner" \alto
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
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
            \new NullVoice = "aligner" { \repeat unfold \verses \alto }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
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
