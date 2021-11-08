\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Once more at Rest."
  subtitle    = "Sankey No. 293"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby"
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key g \major
  \time 4/4
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4. s1*2 s2
  \mark \markup { \box "B" } s2  s1*2 s4 s4.
  \mark \markup { \box "C" } s4. s1*2 s2
  \mark \markup { \box "D" } s2  s1*3
  \mark \markup { \box "E" }     s1*3 s4 s4.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'8 8 g
  b4. 8 8 g c8. b16
  b4 a4. 8 8 b
  c4. 8 \bar "|" \break c8 a d8. c16
  b4~4. d,8 8 g % B
  b4. 8 8 d8 8. 16
  d4 e,4. \bar "|" \break c'8 b a
  g4. 8 8 fis b8. a16 % C
  g4~4. \bar "||" d'8^\markup\smallCaps Refrain. b c
  d4. 8 \bar "|" \break d8 dis e8. b16
  d4 c4. 8 a b % D
  c4. 8 8 a d8. c16
  b4~4. d,8 8 g
  b4. 8 8 d8 8. 16 % E
  d4 e,4. c'8 b a
  g4. 8 8 fis b8. a16
  g4~4.
}

alto = \relative {
  \autoBeamOff
  d'8 8 8
  g4. 8 8 d e8. d16
  d4 4. 8 8 8
  fis4. 8 8 8 g8. d16
  d4~4. 8 8 8 % B
  g4. 8 8 d g8. f16
  e4 4. 8 8 8
  d4. cis8 c c fis8. 16 % C
  g4~4. 8 8 8
  g4. 8 8 a gis8. 16
  b4 a4. 8 fis fis % D
  fis4. 8 8 8 g8. d16
  d4~4. 8 8 8
  g4. 8 8 d g8. f16 % E
  e4 4. 8 8 8
  d4. cis8 c c fis8. 16
  g4~4.
}

tenor = \relative {
  \autoBeamOff
  b8 8 8
  d4. 8 8 b g8. 16
  g4 fis 4. 8 8 g
  a4. 8 8 c b8. a16
  g4~4. b8 8 8 % B
  d4. 8 8 b g8. 16
  g4 4. a8 d c
  b4. bes8 a8 8 d8. c16 % C
  b4~4. 8 d a
  b4. 8 8 8 8. e16
  e4 4. d8 c b % D
  a4. 8 8 c b8. a16
  g4~4. b8 8 8
  d4. 8 8 b g8. 16 % E
  g4 4. a8 d c
  b4. bes8  a a d8. c16
  b4~4.
}

bass = \relative {
  \autoBeamOff
  g8 8 8
  g4. 8 8 8 8. 16
  d4 4. 8 8 8
  d4. 8 8 8 8. fis16
  g4~4. 8 8 8 % B
  g4. 8 8 8 b,8. 16
  c4 4. a8 b c
  d4. 8 8 8 8. 16 % C
  g4~4. 8 8 8
  g4. 8 8 fis e8. 16
  a4 4. d,8 8 8 % D
  d4. 8 8 8 8. fis16
  g4~4. 8 8 8
  g4. 8 8 8 b,8. 16 % E
  c4 4. a8 b c
  d4. 8 8 8 8. 16
  g,4~4.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Still, still I hear Thy words of con -- so -- la -- tion
  That gave me hope when I was sore -- ly tried;
  And since that hour of hal -- lowed med -- i -- ta -- tion,
  Thy coun -- sel, Lord, has been my on -- ly guide.
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Once more at rest, my peace -- ful thoughts are blend -- ing,
  Once more, O Lord, Thy lov -- ing smile I see;
  For soft -- ly now the twi -- light shades de -- scend -- ing
  Have closed, and left my heart a -- lone with Thee.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Once more at rest, my cares a -- while for -- sa -- king,
  I thank Thee, Lord, for vic -- t'ries I have won;
  For strength and grace, when earth -- ly ties were break -- ing,
  To trust in Thee, and say, "\"Thy" will be "done.\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Once more at rest, I view the si -- lent riv -- er,
  Whose pla -- cid waves Thy love will bear me o'er;
  There, home at last, my rap -- tured soul for ev -- er
  Will fold her wings, where sor -- row comes no more.
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "Once " "more " "at " "rest, " "my " peace "ful " "thoughts " "are " blend "ing, "
  "\nOnce " "more, " "O " "Lord, " "Thy " lov "ing " "smile " "I " "see; "
  "\nFor " soft "ly " "now " "the " twi "light " "shades " de scend "ing "
  "\nHave " "closed, " "and " "left " "my " "heart " a "lone " "with " "Thee. "
  "\nStill, " "still " "I " "hear " "Thy " "words " "of " con so la "tion "
  "\nThat " "gave " "me " "hope " "when " "I " "was " sore "ly " "tried; "
  "\nAnd " "since " "that " "hour " "of " hal "lowed " med i ta "tion, "
  "\nThy " coun "sel, " "Lord, " "has " "been " "my " on "ly " "guide. "

  \set stanza = "2."
  "\nOnce " "more " "at " "rest, " "my " "cares " a "while " for sa "king, "
  "\nI " "thank " "Thee, " "Lord, " "for " vic "t'ries " "I " "have " "won; "
  "\nFor " "strength " "and " "grace, " "when " earth "ly " "ties " "were " break "ing, "
  "\nTo " "trust " "in " "Thee, " "and " "say, " "\"Thy " "will " "be " "done.\" "
  "\nStill, " "still " "I " "hear " "Thy " "words " "of " con so la "tion "
  "\nThat " "gave " "me " "hope " "when " "I " "was " sore "ly " "tried; "
  "\nAnd " "since " "that " "hour " "of " hal "lowed " med i ta "tion, "
  "\nThy " coun "sel, " "Lord, " "has " "been " "my " on "ly " "guide. "

  \set stanza = "3."
  "\nOnce " "more " "at " "rest, " "I " "view " "the " si "lent " riv "er, "
  "\nWhose " pla "cid " "waves " "Thy " "love " "will " "bear " "me " "o'er; "
  "\nThere, " "home " "at " "last, " "my " rap "tured " "soul " "for " ev "er "
  "\nWill " "fold " "her " "wings, " "where " sor "row " "comes " "no " "more. "
  "\nStill, " "still " "I " "hear " "Thy " "words " "of " con so la "tion "
  "\nThat " "gave " "me " "hope " "when " "I " "was " sore "ly " "tried; "
  "\nAnd " "since " "that " "hour " "of " hal "lowed " med i ta "tion, "
  "\nThy " coun "sel, " "Lord, " "has " "been " "my " on "ly " "guide. "
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
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
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
