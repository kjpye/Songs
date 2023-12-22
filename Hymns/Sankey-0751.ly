\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "To the Work!"
  subtitle    = "Sankey No. 751"
  subsubtitle = "Sankey 880 No. 176"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. H. Doane."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*2
  \textMark \markup { \box \bold "B" }    s1*3
  \textMark \markup { \box \bold "C" }    s1*2 s2.
  \textMark \markup { \box \bold "D" } s4 s1*2
  \textMark \markup { \box \bold "E" }    s1*2 s2.
  \textMark \markup { \box \bold "F" } s4 s1*2 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'8. bes16 | c4 8. 16 4 f,8 g | a4 8. 16 4 g8 a |
  bes4 8. a16 bes4 a8 bes | d4 c8. b16 c4 a8. bes16 | c4 8. 16 4 f,8 g |
  a4 8. 16 4 8 8 | g4 c8 c b4 c8 d | e4 8. d16 c4\fermata
  \section \sectionLabel \markup\smallCaps "Chorus." \break
  a8. bes16 | c2. f8. a,16 | g2. 8. a16 |
  bes2. c8. bes16 | a2. 8. bes16 | c2. \bar "|" \break
  f8. e16 | d2. e4 | f8 c d8. bes16 a4 g | f2.
}

alto = \relative {
  \autoBeamOff
  f'8. g16 | a4 8. 16 4 c,8 8 | f4 8. 16 4 e8 f |
  g4 8. dis16 g4 f8 g | bes4 a8. gis16 a4 f8. g16 | a4 8. 16 4 c,8 e |
  f4 8. 16 4 8 8 | g4 8 8 4 e8 fis | g4 8. f16 e4\fermata \section
  f8. g16 | a2. 8. f16 | e2. 8. f16 |
  g2. e8. g16 | f2. 8. 16 | f4 e f
  f8. 16 | 4 fis g g | f8 8 8. g16 d4 e | f2.
}

tenor = \relative {
  \autoBeamOff
  c'8. 16 | 4 8. 16 4 a8 bes | c4 8. 16 4 8 8 |
  c4 8. 16 4 8 8 | 4 8. 16 4 8. 16 | 4 8. 16 4 a8 bes |
  c4 8. 16 4 8 8 | 4 e8 8 d4 c8 8 | 4 8. b16 c4\fermata \section
  r4 | r c8. 16 4 8. 16 | 4 8. 16 4 r |
  r4 c8. 16 4 8. 16 | 4 8. 16 4 8. 16 | 4 bes a
  a8. c16 | d4 c bes c | 8 a bes8. d16 c4 bes | a2.
}

bass = \relative {
  \autoBeamOff
  f8. 16 | 4 8. 16 4 8 8 | 4 8. 16 4 8 8 |
  c4 8. 16 4 8 8 | f4 8. 16 4 8. 16 | 4 8. 16 4 8 8 |
  f4 8. 16 4 8 8 | e4 c8 e g4 a8 8 | g4 8. g,16 c4\fermata \section
  r4 | r f8. 16 4 8. 16 | c4 8. 16 4 r |
  r4 c8. 16 4 8. 16 | f4 8. 16 4 8. g16 | a4 g f
  f8. 16 | bes4 a g c8[bes] | a f bes,8. 16 c4 4 | f2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorusSop = \lyricmode {
  \repeat unfold 48 \skip 1
  \repeat unfold 12 \skip 1
  Let us hope.
  Let us watch.
  \repeat unfold 8 \skip 1
}

chorus = \lyricmode {
  Toil -- ing on, Toil -- ing on,
  Toil -- ing on, Toil -- ing on,
  Let us hope and trust,
  Let us watch and pray,
  And la -- bour till the mas -- ter comes.
}

chorusMen = \lyricmode {
  \repeat unfold 48 \skip 1
  Toil -- ing on, \skip 1 \skip 1 \skip 1 Toil -- ing on,
  Toil -- ing on, \skip 1 \skip 1 \skip 1 Toil -- ing on,
  \repeat unfold 18 \skip 1
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  To the work! to the work!
  We are ser -- vants of God,
  Let us fol -- low the path that our Mas -- ter has trod;
  With the balm of His coun -- sel our strength to re -- new,
  Let us do with our might what our hands find to do.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  To the work! to the work!
  Let the hun -- gry be fed,
  To the foun -- tain of Life let the wea -- ry be led;
  In the cross and its ban -- ner our glo -- ry shall be,
  While we her -- ald the ti -- dings,
  \override LyricText.font-shape = #'italic
  “Sal -- va -- tion is free.”
  \revert LyricText.font-shape
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  To the work! to the work!
  There is la -- bour for all,
  For the king -- dom of dark -- ness and er -- ror shall fail;
  And the name of Je -- ho -- vah ex -- alt -- ed shall be,
  In the loud -- swell -- ing cho -- rus,
  \override LyricText.font-shape = #'italic
  “Sal -- va -- tion is free.”
  \revert LyricText.font-shape
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  To the work! to the work!
  In the strength of the Lord,
  And a robe and a crown shall our la -- bour re -- ward;
  When the home of the faith -- ful our dwell -- ing shall be,
  And we shout with the ran -- somed,
  \override LyricText.font-shape = #'italic
  “Sal -- va -- tion is free.”
  \revert LyricText.font-shape
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "To " "the " "work! " "to " "the " "work! "
  "\nWe " "are " ser "vants " "of " "God, "
  "\nLet " "us " fol "low " "the " "path " "that " "our " Mas "ter " "has " "trod; "
  "\nWith " "the " "balm " "of " "His " coun "sel " "our " "strength " "to " re "new, "
  "\nLet " "us " "do " "with " "our " "might " "what " "our " "hands " "find " "to " "do. "
  "\nToil" "ing " "on, " Toil "ing " "on, "
  "\nToil" "ing " "on, " Toil "ing " "on, "
  "\nLet " "us " "hope, "
  "\nLet " "us " "watch, "
  "\nAnd " la "bour " "till " "the " mas "ter " "comes.\n"

  \set stanza = "2."
  "\nTo " "the " "work! " "to " "the " "work! "
  "\nLet " "the " hun "gry " "be " "fed, "
  "\nTo " "the " foun "tain " "of " "Life " "let " "the " wea "ry " "be " "led; "
  "\nIn " "the " "cross " "and " "its " ban "ner " "our " glo "ry " "shall " "be, "
  "\nWhile " "we " her "ald " "the " ti "dings, "
  "\n“Sal" va "tion " "is " "free.” "
  "\nToil" "ing " "on, " Toil "ing " "on, "
  "\nToil" "ing " "on, " Toil "ing " "on, "
  "\nLet " "us " "hope, "
  "\nLet " "us " "watch, "
  "\nAnd " la "bour " "till " "the " mas "ter " "comes.\n"

  \set stanza = "3."
  "\nTo " "the " "work! " "to " "the " "work! "
  "\nThere " "is " la "bour " "for " "all, "
  "\nFor " "the " king "dom " "of " dark "ness " "and " er "ror " "shall " "fail; "
  "\nAnd " "the " "name " "of " Je ho "vah " ex alt "ed " "shall " "be, "
  "\nIn " "the " loud swell "ing " cho "rus, "
  "\n“Sal" va "tion " "is " "free.” "
  "\nToil" "ing " "on, " Toil "ing " "on, "
  "\nToil" "ing " "on, " Toil "ing " "on, "
  "\nLet " "us " "hope, "
  "\nLet " "us " "watch, "
  "\nAnd " la "bour " "till " "the " mas "ter " "comes.\n"

  \set stanza = "4."
  "\nTo " "the " "work! " "to " "the " "work! "
  "\nIn " "the " "strength " "of " "the " "Lord, "
  "\nAnd " "a " "robe " "and " "a " "crown " "shall " "our " la "bour " re "ward; "
  "\nWhen " "the " "home " "of " "the " faith "ful " "our " dwell "ing " "shall " "be, "
  "\nAnd " "we " "shout " "with " "the " ran "somed, "
  "\n“Sal" va "tion " "is " "free.” "
  "\nToil" "ing " "on, " Toil "ing " "on, "
  "\nToil" "ing " "on, " Toil "ing " "on, "
  "\nLet " "us " "hope, "
  "\nLet " "us " "watch, "
  "\nAnd " la "bour " "till " "the " mas "ter " "comes. "
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "To " "the " "work! " "to " "the " "work! "
  "\nWe " "are " ser "vants " "of " "God, "
  "\nLet " "us " fol "low " "the " "path " "that " "our " Mas "ter " "has " "trod; "
  "\nWith " "the " "balm " "of " "His " coun "sel " "our " "strength " "to " re "new, "
  "\nLet " "us " "do " "with " "our " "might " "what " "our " "hands " "find " "to " "do. "
  "\nToil" "ing " "on, " Toil "ing " "on, "
  "\nToil" "ing " "on, " Toil "ing " "on, "
  "\nLet " "us " "hope " "and " "trust, "
  "\nLet " "us " "watch " "and " "pray, "
  "\nAnd " la "bour " "till " "the " mas "ter " "comes.\n"

  \set stanza = "2."
  "\nTo " "the " "work! " "to " "the " "work! "
  "\nLet " "the " hun "gry " "be " "fed, "
  "\nTo " "the " foun "tain " "of " "Life " "let " "the " wea "ry " "be " "led; "
  "\nIn " "the " "cross " "and " "its " ban "ner " "our " glo "ry " "shall " "be, "
  "\nWhile " "we " her "ald " "the " ti "dings, "
  "\n“Sal" va "tion " "is " "free.” "
  "\nToil" "ing " "on, " Toil "ing " "on, "
  "\nToil" "ing " "on, " Toil "ing " "on, "
  "\nLet " "us " "hope " "and " "trust, "
  "\nLet " "us " "watch " "and " "pray, "
  "\nAnd " la "bour " "till " "the " mas "ter " "comes.\n"

  \set stanza = "3."
  "\nTo " "the " "work! " "to " "the " "work! "
  "\nThere " "is " la "bour " "for " "all, "
  "\nFor " "the " king "dom " "of " dark "ness " "and " er "ror " "shall " "fail; "
  "\nAnd " "the " "name " "of " Je ho "vah " ex alt "ed " "shall " "be, "
  "\nIn " "the " loud swell "ing " cho "rus, "
  "\n“Sal" va "tion " "is " "free.” "
  "\nToil" "ing " "on, " Toil "ing " "on, "
  "\nToil" "ing " "on, " Toil "ing " "on, "
  "\nLet " "us " "hope " "and " "trust, "
  "\nLet " "us " "watch " "and " "pray, "
  "\nAnd " la "bour " "till " "the " mas "ter " "comes.\n"

  \set stanza = "4."
  "\nTo " "the " "work! " "to " "the " "work! "
  "\nIn " "the " "strength " "of " "the " "Lord, "
  "\nAnd " "a " "robe " "and " "a " "crown " "shall " "our " la "bour " re "ward; "
  "\nWhen " "the " "home " "of " "the " faith "ful " "our " dwell "ing " "shall " "be, "
  "\nAnd " "we " "shout " "with " "the " ran "somed, "
  "\n“Sal" va "tion " "is " "free.” "
  "\nToil" "ing " "on, " Toil "ing " "on, "
  "\nToil" "ing " "on, " Toil "ing " "on, "
  "\nLet " "us " "hope " "and " "trust, "
  "\nLet " "us " "watch " "and " "pray, "
  "\nAnd " la "bour " "till " "the " mas "ter " "comes. "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "To " "the " "work! " "to " "the " "work! "
  "\nWe " "are " ser "vants " "of " "God, "
  "\nLet " "us " fol "low " "the " "path " "that " "our " Mas "ter " "has " "trod; "
  "\nWith " "the " "balm " "of " "His " coun "sel " "our " "strength " "to " re "new, "
  "\nLet " "us " "do " "with " "our " "might " "what " "our " "hands " "find " "to " "do. "
  "\nToil" "ing " "on, " Toil "ing " "on, "
  "\nToil" "ing " "on, " Toil "ing " "on, "
  "\nToil" "ing " "on, " Toil "ing " "on, "
  "\nLet " "us " "hope " "and " "trust, "
  "\nLet " "us " "watch " "and " "pray, "
  "\nAnd " la "bour " "till " "the " mas "ter " "comes.\n"

  \set stanza = "2."
  "\nTo " "the " "work! " "to " "the " "work! "
  "\nLet " "the " hun "gry " "be " "fed, "
  "\nTo " "the " foun "tain " "of " "Life " "let " "the " wea "ry " "be " "led; "
  "\nIn " "the " "cross " "and " "its " ban "ner " "our " glo "ry " "shall " "be, "
  "\nWhile " "we " her "ald " "the " ti "dings, "
  "\n“Sal" va "tion " "is " "free.” "
  "\nToil" "ing " "on, " Toil "ing " "on, "
  "\nToil" "ing " "on, " Toil "ing " "on, "
  "\nToil" "ing " "on, " Toil "ing " "on, "
  "\nLet " "us " "hope " "and " "trust, "
  "\nLet " "us " "watch " "and " "pray, "
  "\nAnd " la "bour " "till " "the " mas "ter " "comes.\n"

  \set stanza = "3."
  "\nTo " "the " "work! " "to " "the " "work! "
  "\nThere " "is " la "bour " "for " "all, "
  "\nFor " "the " king "dom " "of " dark "ness " "and " er "ror " "shall " "fail; "
  "\nAnd " "the " "name " "of " Je ho "vah " ex alt "ed " "shall " "be, "
  "\nIn " "the " loud swell "ing " cho "rus, "
  "\n“Sal" va "tion " "is " "free.” "
  "\nToil" "ing " "on, " Toil "ing " "on, "
  "\nToil" "ing " "on, " Toil "ing " "on, "
  "\nToil" "ing " "on, " Toil "ing " "on, "
  "\nLet " "us " "hope " "and " "trust, "
  "\nLet " "us " "watch " "and " "pray, "
  "\nAnd " la "bour " "till " "the " mas "ter " "comes.\n"

  \set stanza = "4."
  "\nTo " "the " "work! " "to " "the " "work! "
  "\nIn " "the " "strength " "of " "the " "Lord, "
  "\nAnd " "a " "robe " "and " "a " "crown " "shall " "our " la "bour " re "ward; "
  "\nWhen " "the " "home " "of " "the " faith "ful " "our " dwell "ing " "shall " "be, "
  "\nAnd " "we " "shout " "with " "the " ran "somed, "
  "\n“Sal" va "tion " "is " "free.” "
  "\nToil" "ing " "on, " Toil "ing " "on, "
  "\nToil" "ing " "on, " Toil "ing " "on, "
  "\nToil" "ing " "on, " Toil "ing " "on, "
  "\nLet " "us " "hope " "and " "trust, "
  "\nLet " "us " "watch " "and " "pray, "
  "\nAnd " la "bour " "till " "the " mas "ter " "comes. "
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidiSop
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
  \bookOutputSuffix "midi-alto"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics \wordsMidiAlto
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
  \bookOutputSuffix "midi-men"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
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

#(set-global-staff-size 18)

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
            \new NullVoice = "alignerA" \alto
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "alignerA" { \wordsOne \chorus }
            \new Lyrics \lyricsto "alignerA"   \wordsTwo
            \new Lyrics \lyricsto "alignerA"   \wordsThree
            \new Lyrics \lyricsto "alignerA"   \wordsFour
            \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS {\small \chorusSop}
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT {\small \chorusMen}
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
            \new NullVoice = "alignerA" { \repeat unfold \verses \alto }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "alignerA" { \wordsOne   \chorus
                                               \wordsTwo   \chorus
                                               \wordsThree \chorus
                                               \wordsFour  \chorus
                                             }
            \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS {\repeat unfold \verses \chorusSop }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses {\small \chorusMen} }
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
