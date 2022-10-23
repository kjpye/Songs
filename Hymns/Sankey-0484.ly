\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Wandering Sheep."
  subtitle    = "Sankey No. 484"
  subsubtitle = "Sankey 880 No. 181"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "John Zundel."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "H. Bonar, D. D."
  meter       = \markup\smallCaps "D.S.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 3/4
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8 s2.*3 s4. s4
  \mark \markup { \box "B" } s8 s2.*3 s4. s4
  \mark \markup { \box "C" } s8 s2.*3 s4. s4
  \mark \markup { \box "D" } s8 s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c'8 | f4 8 8[e] f | g4.~4 c,8 | g'4 8 8[f] g | a4.~4 \bar "|" \break c,8 |
  a'4 8 4 8 | 8[bes] c c4 bes8 | a4 8 4 g8 | f4.~4 \bar "|" \break c8 |
  g'4 8 8[f] g | a4.~4 c,8 | a'4 8 8[g] a | bes4.~4 \bar "|" \break c,8 |
  a'4 8 4 8 | a[bes] c c4 bes8 | a4 8 4 g8 | f4.~4
}

alto = \relative {
  \autoBeamOff
  c'8 | 4 8 4 f8 | e4.~4 c8 | e4 8 8[d] e | f4.~4 c8 |
  f4 8 4 8 | 8[g] a a4 g8 | f4 8 e4 8 | f4.~4 c8 |
  e4 8 8[d] e | f4.~4 c8 | f4 8 8[e] f | e4.~4 c8 |
  f4 8 4 8 | 8[g] a a4 g8 | f4 8 e4 8 | f4.~4
}

tenor = \relative {
  \autoBeamOff
  a8 | 4 8 4 8 | c4.~4 8 | 4 8 4 8 | 4.~4 a8 |
  c4 8 4 8 | 4 8 4 d8 | c4 8 4 bes8 | a4.~4 c8 |
  c4 8 4 8 | 4.~4 8 | 4 8 8[bes] a | g4.~4 c8 |
  c4 8 4 8 | 4 8 4 d8 | c4 8 4 bes8 | a4.~4
}

bass = \relative {
  \autoBeamOff
  f8 | 4 8 4 8 | c4.~4 8 | 4 8 4 8 | f4.~4 8 |
  4 8 4 8 | 4 8 4 bes,8 | c4 8 4 8 | d4.~4 c8 |
  c4 8 4 8 | 4.~4 8 | 4 8 4 8 | 4.~4 8 |
  f4 8 4 8 | 4 8 4 bes,8 | c4 8 4 8 | f4.~4
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
  I was a wan -- d'ring sheep:
  I did not love the fold;
  I did not love my Shep -- herd's voice,
  I would not be con -- troll'd;
  I was a way -- ward child,
  I did not love my home,
  I did not love my Fa -- ther's voice,
  I loved a -- far to roam.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  The shep -- herd sought His sheep,
  The Fa -- ther sought His child;
  They fol -- low'd me o'er vale and hill,
  O'er des -- erts waste and wild:
  They found me nigh to death,
  Fam -- ish'd, and faint, and lone;
  They bound me with the bands of love,
  They saved the wan -- d'ring one.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Je -- sus my Shep -- herd is:
  'Twas He that loved my soul,
  'Twas He that washed me in His blood,
  'Twas He that made me whole;
  'Twas He that sought the lost,
  That found the wan -- d'ring sheep;
  'Twas He that brought me to the fold,
  'Tis He that still doth keep.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  I was a wan -- d'ring sheep,
  I would not be con -- troll'd;
  But now I love my Sa -- viour's voice,
  I love, I love the fold.
  I was a way -- ward child,
  I once pre -- ferr'd to roam;
  But now I love my Fa -- ther's voice
  I love, I love His home.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I " "was " "a " wan "d'ring " "sheep: "
  "\nI " "did " "not " "love " "the " "fold; "
  "\nI " "did " "not " "love " "my " Shep "herd's " "voice, "
  "\nI " "would " "not " "be " con "troll'd; "
  "\nI " "was " "a " way "ward " "child, "
  "\nI " "did " "not " "love " "my " "home, "
  "\nI " "did " "not " "love " "my " Fa "ther's " "voice, "
  "\nI " "loved " a "far " "to " "roam.\n"

  \set stanza = "2."
  "\nThe " shep "herd " "sought " "His " "sheep, "
  "\nThe " Fa "ther " "sought " "His " "child; "
  "\nThey " fol "low'd " "me " "o'er " "vale " "and " "hill, "
  "\nO'er " des "erts " "waste " "and " "wild: "
  "\nThey " "found " "me " "nigh " "to " "death, "
  "\nFam" "ish'd, " "and " "faint, " "and " "lone; "
  "\nThey " "bound " "me " "with " "the " "bands " "of " "love, "
  "\nThey " "saved " "the " wan "d'ring " "one.\n"

  \set stanza = "3."
  "\nJe" "sus " "my " Shep "herd " "is: "
  "\n'Twas " "He " "that " "loved " "my " "soul, "
  "\n'Twas " "He " "that " "washed " "me " "in " "His " "blood, "
  "\n'Twas " "He " "that " "made " "me " "whole; "
  "\n'Twas " "He " "that " "sought " "the " "lost, "
  "\nThat " "found " "the " wan "d'ring " "sheep; "
  "\n'Twas " "He " "that " "brought " "me " "to " "the " "fold, "
  "\n'Tis " "He " "that " "still " "doth " "keep.\n"

  \set stanza = "4."
  "\nI " "was " "a " wan "d'ring " "sheep, "
  "\nI " "would " "not " "be " con "troll'd; "
  "\nBut " "now " "I " "love " "my " Sa "viour's " "voice, "
  "\nI " "love, " "I " "love " "the " "fold. "
  "\nI " "was " "a " way "ward " "child, "
  "\nI " "once " pre "ferr'd " "to " "roam; "
  "\nBut " "now " "I " "love " "my " Fa "ther's " "voice "
  "\nI " "love, " "I " "love " "His " "home. "
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
