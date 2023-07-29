\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Christian, seek not yet Repose."
  subtitle    = "Sankey No. 687"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Canon Havergal."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Charlotte Elliott."
  meter       = \markup\smallCaps "7.7.7.3."
  piece       = \markup\smallCaps "Samos."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key a \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*4
  \textMark \markup { \box \bold "B" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'4 e cis' b | a fis e2 | fis4 a d cis | b4 a e'2 |
  cis4 a d cis | b a gis2 | a fis | a1 |
}

alto = \relative {
  \autoBeamOff
  e'4 cis e d | e d cis2 | d4 e d e | fis dis e2 |
  e4 cis d e | d dis e2 | e d | cis1 |
}

tenor = \relative {
  \autoBeamOff
  cis'4 a a fis8[gis] | a4 4 2 | 4 4 g a | fis a g2 |
  a4 4 4 4 | fis a b2 | a a | a1 |
}

bass = \relative {
  \autoBeamOff
  a4 a a, b | cis d a2 | d4 cis b a | d fis e2 |
  a4 a fis a | d, fis e2 | cis d | a1 |
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
  “Chris -- tian, seek not yet re -- pose;”
  Cast thy dreams of ease a -- way;
  Thou art in the midst of foes:
  “Watch and pray”
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Prin -- ci -- pal -- i -- ties and powers,
  Mus -- t'ring their un -- seen ar -- ray,
  Wait for thine un -- guard -- ed hours:
  “Watch and pray”
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Gird thy heaven -- ly ar -- mour on,
  Wear it ev -- er night and day;
  Am -- bushed lies the e -- vil one:
  “Watch and pray”
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Hear the vic -- tors who o'er -- came;
  Still they mark each war -- rior's way;
  All with one sweet voice ex -- claim,
  “Watch and pray”
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Hear a -- bove all, hear thy Lord,
  Him thou lov -- est to o -- bey;
  Hide with -- in thy heart His word,
  “Watch and pray”
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Watch, as if on that a -- lone
  Hung the is -- sue of the day;
  Pray that help may be sent down:
  “Watch and pray”
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "“Chris" "tian, " "seek " "not " "yet " re "pose;” "
  "\nCast " "thy " "dreams " "of " "ease " a "way; "
  "\nThou " "art " "in " "the " "midst " "of " "foes: "
  "\n“Watch " "and " "pray”\n"

  \set stanza = "2."
  "\nPrin" ci pal i "ties " "and " "powers, "
  "\nMus" "t'ring " "their " un "seen " ar "ray, "
  "\nWait " "for " "thine " un guard "ed " "hours: "
  "\n“Watch " "and " "pray”\n"

  \set stanza = "3."
  "\nGird " "thy " heaven "ly " ar "mour " "on, "
  "\nWear " "it " ev "er " "night " "and " "day; "
  "\nAm" "bushed " "lies " "the " e "vil " "one: "
  "\n“Watch " "and " "pray”\n"

  \set stanza = "4."
  "\nHear " "the " vic "tors " "who " o'er "came; "
  "\nStill " "they " "mark " "each " war "rior's " "way; "
  "\nAll " "with " "one " "sweet " "voice " ex "claim, "
  "\n“Watch " "and " "pray”\n"

  \set stanza = "5."
  "\nHear " a "bove " "all, " "hear " "thy " "Lord, "
  "\nHim " "thou " lov "est " "to " o "bey; "
  "\nHide " with "in " "thy " "heart " "His " "word, "
  "\n“Watch " "and " "pray”\n"

  \set stanza = "6."
  "\nWatch, " "as " "if " "on " "that " a "lone "
  "\nHung " "the " is "sue " "of " "the " "day; "
  "\nPray " "that " "help " "may " "be " "sent " "down: "
  "\n“Watch " "and " "pray” "
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
