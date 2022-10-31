\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I Do Believe!"
  subtitle    = "Sankey No. 493"
  subsubtitle = "Sankey 880 No. 382"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

%  composer    = \markup\smallCaps "composer"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "C. Wesley."
  meter       = \markup\smallCaps "C. M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 3/2
  \partial 2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2 s1.*3 s1
  \mark \markup { \box "B" } s2 s1.*3 s1
  \mark \markup { \box "C" } s2 s1.*3 s1
  \mark \markup { \box "D" } s2 s1.*3 s1
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 2=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'2 | fis4 a4 2 2 | g4 b4 2 2 | a4 b c2 e | d1 \bar "|" \break b4(d) |
  d4 c4 2 a4(c) | c b4 2 g4(b) | 4 a c2 fis,4(a) | g1 \bar "|" \break 2^\markup\smallCaps Chorus. |
  fis4 a4 2 2 | g4 b4 2 2 | a4 b c2 e | d1 \bar "|" \break b4(d) |
  d4 c4 2 a4(c) | c b4 2 g4(b) | b a c2 fis,4(a) | g1
}

alto = \relative {
  \autoBeamOff
  d'2 | 4 fis4 2 2 | g4 4 2 2 | fis4 g4 2 2 | 1 4(b) |
  b4 a4 2 fis4(a) | a g4 2 d4(g) | e4 4 2 d | 1 2 |
  d4 fis4 2 2 | g4 4 2 2 | fis4 g4 2 2 | 1 4(b) |
  b4 a4 2 fis4(a) | a g4 2 d4(g) | e4 4 2 d | 1
}

tenor = \relative {
  \autoBeamOff
  b2 | a4 c4 2 2 | b4 d4 2 2 | 4 4 c2 2 | b1 d2 |
  d4 4 2 2 | 4 4 2 b4(d) | c4 4 a2 c | b1 2 |
  a4 c4 2 2 | b4 d4 2 2 | 4 4 c2 2 | b1 d2 |
  d4 4 2 2 | 4 4 2 b4(d) | c c a2 c | b1
}

bass = \relative {
  \autoBeamOff
  g2 | d4 4 2 2 | a4 4 2 2 | d4 g e2 c | g'1 2 |
  d4 4 2 2 | g4 4 2 2 | c,4 4 2 d | g1 2 |
  d4 4 2 2 | g4 4 2 2 | d4 g e2 c | g'1 2 |
  d4 4 2 2 | g4 4 2 2 | c,4 4 2 d | g1
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  I do be -- lieve, I do be -- lieve
  That Je -- sus died for me;
  And through His blood, His pre -- cious blood,
  I shall from sin be free.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Fa -- ther, I stretch my hands to Thee;
  No o -- ther help I know:
  If Thou with -- draw Thy -- self from me,
  Ah, Whi -- ther shall I go?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  What did Thine on -- ly Son en -- dure
  Be -- fore I drew my breath;
  What pain, what la -- bour, to se -- cure
  My soul from end -- less death!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  O Je -- sus, could I this be -- lieve,
  I now should feel Thy power
  And all my wants Thou wouldst re -- lieve
  In this ac -- cept -- ed hour.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Au -- thor of faith, to Thee I lift
  My wea -- ry, long -- ing eyes:
  Oh, let me now re -- ceive that gift;
  My soul with -- out it dies.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Fa" "ther, " "I " "stretch " "my " "hands " "to " "Thee; "
  "\nNo " o "ther " "help " "I " "know: "
  "\nIf " "Thou " with "draw " Thy "self " "from " "me, "
  "\nAh, " Whi "ther " "shall " "I " "go? "
  "\nI " "do " be "lieve, " "I " "do " be "lieve "
  "\nThat " Je "sus " "died " "for " "me; "
  "\nAnd " "through " "His " "blood, " "His " pre "cious " "blood, "
  "\nI " "shall " "from " "sin " "be " "free.\n"

  \set stanza = "2."
  "\nWhat " "did " "Thine " on "ly " "Son " en "dure "
  "\nBe" "fore " "I " "drew " "my " "breath; "
  "\nWhat " "pain, " "what " la "bour, " "to " se "cure "
  "\nMy " "soul " "from " end "less " "death! "
  "\nI " "do " be "lieve, " "I " "do " be "lieve "
  "\nThat " Je "sus " "died " "for " "me; "
  "\nAnd " "through " "His " "blood, " "His " pre "cious " "blood, "
  "\nI " "shall " "from " "sin " "be " "free.\n"

  \set stanza = "3."
  "\nO " Je "sus, " "could " "I " "this " be "lieve, "
  "\nI " "now " "should " "feel " "Thy " "power "
  "\nAnd " "all " "my " "wants " "Thou " "wouldst " re "lieve "
  "\nIn " "this " ac cept "ed " "hour. "
  "\nI " "do " be "lieve, " "I " "do " be "lieve "
  "\nThat " Je "sus " "died " "for " "me; "
  "\nAnd " "through " "His " "blood, " "His " pre "cious " "blood, "
  "\nI " "shall " "from " "sin " "be " "free.\n"

  \set stanza = "4."
  "\nAu" "thor " "of " "faith, " "to " "Thee " "I " "lift "
  "\nMy " wea "ry, " long "ing " "eyes: "
  "\nOh, " "let " "me " "now " re "ceive " "that " "gift; "
  "\nMy " "soul " with "out " "it " "dies. "
  "\nI " "do " be "lieve, " "I " "do " be "lieve "
  "\nThat " Je "sus " "died " "for " "me; "
  "\nAnd " "through " "His " "blood, " "His " pre "cious " "blood, "
  "\nI " "shall " "from " "sin " "be " "free. "
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
