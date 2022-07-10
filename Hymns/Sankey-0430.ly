\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Where will you Spend Eternity?"
  subtitle    = "Sankey No. 439"
  subsubtitle = "N. H. No. 112"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. H. Tenney."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "E. A. Hoffman."
  meter       = \markup\smallCaps "L. M."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key f \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
    \mark \markup { \box "A" }    s1*4
    \mark \markup { \box "B" }    s1*3 s2..
    \mark \markup { \box "C" } s8 s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s1*7
  s2 \tempo 4=50 s4. \tempo 4=120 s8 % +++
  s2 \tempo 4=50 s4. \tempo 4=120 s8 % C
  s1
  s1
  \tempo 4=50 s4. \tempo 4=120 s8 \tempo 4=60 s2
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'4 g8 f bes4. a8
  a4. f8 a2
  c4 bes8 a g4. 8
  a4 bes8[a] <<{g4. r8} \new Voice {\voiceOne s8 \tiny <bes d> <a c> <g bes>}>>
  a4 g8 f bes4. a8 % B
  a4. f8 a2
  c4 8 8 4. a8
  g4(a8.) bes16 a4.\fermata \bar "||" \break a8^\markup\smallCaps Refrain.
  bes4. a8 4.\fermata c8 % C
  d4. c8 2
  f,4 8 g a4. f8
  g4.\fermata f8 2\fermata
}

alto = \relative {
  \autoBeamOff
  f'4 e8 f f4. 8
  f4. 8 2
  f4 e8 f8 4. 8
  f4 g8[f] e4. r8
  f4 e8 f8 4. 8 % B
  f4. 8 2
  f4 e8 g f4. 8
  d4(f8.) g16 f4.\fermata f8
  f4. 8 4.\fermata 8 % C
  f4. 8 2
  f4 8 8 4. c8
  c4.\fermata 8 2\fermata
}

tenor = \relative {
  \autoBeamOff
  c'4 bes8 a d4. c8
  c4. a8 c2
  c4 8 8 d4. 8
  c4 4 4. r8
  c4 bes8 a d4. c8 % B
  c4. a8 c2
  a4 g8 bes a4. c8
  c4.. c16 4.\fermata 8
  d4. c8 4.\fermata a8 % C
  bes4. a8 2
  a4 d8 8 c4. a8
  bes4.\fermata a8 2\fermata
}

bass = \relative {
  \autoBeamOff
  f4 8 8 4. 8
  f4. 8 2
  a4 g8 f bes,4. 8
  c4 4 4. r8
  f4 8 8 4. 8 % B
  f4. 8 2
  f4 c8 8 f4. 8
  c4.. 16 f4.\fermata 8
  f4. 8 4.\fermata 8 % C
  f4. 8 2
  d4 bes8 8 c4. 8 \partCombineChords
  c4.\fermata <f, f'>8 2\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  \set stanza = "1-3."
  E -- ter -- ni -- ty!
  E -- ter -- ni -- ty!
  Where will you spend e -- ter -- ni -- ty?
}

chorusFour = \lyricmode {
  \set stanza = "4."
  E -- ter -- ni -- ty!
  E -- ter -- ni -- ty!
  Saved through a long e -- ter -- ni -- ty?
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Where will you spend E -- ter -- ni -- ty?
  This ques -- tion comes to you and me!
  Tell me, what shall your an -- swer be—
  Where will you spend E -- ter -- ni -- ty?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Ma -- ny are choos -- ing Christ to -- day,
  Turn -- ing from all their sins a -- way;
  Heaven shall their bless -- ed por -- tion be:
  Where will you spend E -- ter -- ni -- ty?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Leav -- ing the strait and nar -- row way,
  Go -- ing the down -- ward road to -- day.
  What shall the fi -- nal end -- ing be—
  Where will you spend E -- ter -- ni -- ty?
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Turn, and be -- lieve this ve -- ry hour;
  Trust in the Sa -- viour's grace and power:
  Then shall your joy -- ous ans --wer be,
  Saved through a long E -- ter -- ni -- ty!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Where " "will " "you " "spend " E ter ni "ty? "
  "\nThis " ques "tion " "comes " "to " "you " "and " "me! "
  "\nTell " "me, " "what " "shall " "your " an "swer " "be— "
  "\nWhere " "will " "you " "spend " E ter ni "ty? "
  "\nE" ter ni "ty! "
  "\nE" ter ni "ty! "
  "\nWhere " "will " "you " "spend " e ter ni "ty?\n"

  \set stanza = "2."
  "\nMa" "ny " "are " choos "ing " "Christ " to "day, "
  "\nTurn" "ing " "from " "all " "their " "sins " a "way; "
  "\nHeaven " "shall " "their " bless "ed " por "tion " "be: "
  "\nWhere " "will " "you " "spend " E ter ni "ty? "
  "\nE" ter ni "ty! "
  "\nE" ter ni "ty! "
  "\nWhere " "will " "you " "spend " e ter ni "ty?\n"

  \set stanza = "3."
  "\nLeav" "ing " "the " "strait " "and " nar "row " "way, "
  "\nGo" "ing " "the " down "ward " "road " to "day. "
  "\nWhat " "shall " "the " fi "nal " end "ing " "be— "
  "\nWhere " "will " "you " "spend " E ter ni "ty? "
  "\nE" ter ni "ty! "
  "\nE" ter ni "ty! "
  "\nWhere " "will " "you " "spend " e ter ni "ty?\n"

  \set stanza = "4."
  "\nTurn, " "and " be "lieve " "this " ve "ry " "hour; "
  "\nTrust " "in " "the " Sa "viour's " "grace " "and " "power: "
  "\nThen " "shall " "your " joy "ous " ans"wer " "be, "
  "\nSaved " "through " "a " "long " E ter ni "ty! "
  "\nE" ter ni "ty! "
  "\nE" ter ni "ty! "
  "\nSaved " "through " "a " "long " e ter ni "ty?"
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
            \new Voice \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner" { \wordsFour \chorusFour }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor } { \global \bass }
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
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorusFour
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
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
