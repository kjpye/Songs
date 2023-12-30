\version "2.25.0"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Are you a Reaper?"
  subtitle    = "Sankey No. 763"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "D. B. Towner."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Julia H. Johnston."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2.*4
  \textMark \markup { \box \bold "B" } s2.*4
  \textMark \markup { \box \bold "C" } s2.*6
  \textMark \markup { \box \bold "D" } s2.*5
  \textMark \markup { \box \bold "E" } s2.*4
  \textMark \markup { \box \bold "F" } s2.*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  bes8 c d ees f g | aes4. g4 f8 | bes4(g8) ees4. | c'4. bes4 8 |
  aes4. g4 8 | f4. g4 a8 | bes4.~4. | bes,8 c d ees f g |
  aes4. g4 f8 | bes4(g8) ees4. | c'4. d4 ees8 | 4(bes8) g4 ees8 | g4. 4 f8 | ees4.~4.
  \section \sectionLabel \markup\smallCaps Chorus.
  f4. g4 8 | aes8 f4~4 r8 | g4. aes4 8 | c8 bes4~4 r8 | c4.~8 bes a |
  bes4.~8 aes g | f4. a4 c8 | bes4.~4. | bes,8 c d ees f g |
  aes4. g4 f8 | bes4(g8) ees4. | c' d4 ees8 | 4(bes8) g4 ees8 | g4. 4 f8 | ees4.~4. |
}

alto = \relative {
  \autoBeamOff
  bes8 8 8 8 ees ees | 4. 4 8 | 4. 4. | 4. 4 8 |
  d4. ees4 8 | f4. ees4 8 | d4.~4. | bes8 8 8 8 ees ees |
  ees4. 4 8 | 4. 4. | 4. a4 g8 | 4(ees8) 4 8 | 4. d4 8 | ees4.~4. \section |
  d4. ees4 8 | f d4~4 r8 | ees4. f4 8 | aes8 g4~4 r8 | aes4.~8 g fis |
  g4.~8 f ees | d4. f4 8 | 4.~4. | bes,8 8 8 8 ees8 8 |
  ees4. 4 8 | 4. 4. | 4. aes4 g8 | 4(ees8) 4 8 | 4. d4 8 | ees4.~4. |
}

tenor = \relative {
  \autoBeamOff
  bes8 8 aes g aes bes | c4. bes4 aes8 | g4(bes8) g4(bes8) | ees4. 4 8 |
  bes4. 4 8 | 4. 4 f8 | 4.~4. | bes8 8 aes g aes bes |
  c4. bes4 aes8 | g4(bes8) 4. | aes4. bes4 8 | 4(g8) bes4 a8 | bes4. 4 a8 | g4.~4. \section |
  bes4. 4 8 | 8 4~4 r8 | 4. ees4 8 | 8 4~4 r8 | 8 8 8 8 8 8 |
  ees8 8 8 8 bes8 8 | 4. c4 ees8 | d4.~4. | bes8 8 aes g aes bes |
  c4. bes4 aes8 | g4(bes8) 4. | aes bes4 8 | 4(g8) bes4 a8 | bes4. 4 aes8 | g4.~4. |
}

bass = \relative {
  \autoBeamOff
  bes8 aes f ees8 8 8 | 4. 4 8 | 4. 4(g8) aes4. g4 8 |
  f4. ees4 8 | d4. ees4 c8 | bes4.~4. | bes'8 aes f ees8 8 8 |
  ees4. 4 8 | 4. g | aes f4 ees8 | 4. 4 c8 | bes4. 4 8 | ees4.~4. \section |
  bes4. 4 8 | 8 4~4 r8 | ees4. 4 8 | 8 4~4 r8 | 8 8 8 8 8 8 |
  ees8 8 8 8 8 8 | f4. 4 8 | bes,4.~4. | bes'8 aes f ees8 8 8 |
  ees4. 4 8 | 4. g | aes f4 ees8 | 4. 4 c8 | bes4. 4 8 | ees4.~4. |
}

chorus = \lyricmode {
  Are you a reap -- er? Are you a rea -- per?
  Ga -- ther -- ing fruit __ un -- to life ev -- er -- more?
  Lift up your eyes, for the har -- vest is rea -- dy;
  Has -- ten, oh, has -- ten to ga -- ther your store!
}

chorusMen = \lyricmode {
  \repeat unfold 42 \skip 1
  \repeat unfold 10 \skip 1
  Ga -- ther -- ing, ga -- ther -- ing fruit, gol -- den fruit
  \repeat unfold 27 \skip 1
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Lift up your eyes to the fields that are whit -- 'ning;
  Hark! 'tis the voice of the Mas -- ter and Lord.
  See! on each side there is work for the reap -- er,
  Sheaves that are gold -- en shall be the re -- ward.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Look on the fields how the har -- vest is was -- ting,
  Wait -- ing for reap -- ers to gar -- ner it in!
  He that is faith -- ful re -- ceiv -- eth hi wa -- ges;
  Joy ev -- er -- last -- ing the reap -- er shall win.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Souls that are rea -- dy to en -- ter the king -- dom,
  Wait for the glad in -- vi -- ta -- tion to -- day:
  “Go ye and tell,” is the word of the Mas -- ter—
  Ser -- vant of Je -- sus, oh hear, and o -- bey!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Reap for His glo -- ry in fields that are near -- est;
  Look all a -- broad, for the ahr -- vest is white:
  O'er the wide earth aer the sheaves to be gar -- nered—
  Has -- ten, O reap -- er, fast com -- eth the night!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Lift " "up " "your " "eyes " "to " "the " "fields " "that " "are " whit "'ning; "
  "\nHark! " "'tis " "the " "voice " "of " "the " Mas "ter " "and " "Lord. "
  "\nSee! " "on " "each " "side " "there " "is " "work " "for " "the " reap "er, "
  "\nSheaves " "that " "are " gold "en " "shall " "be " "the " re "ward. "
  "\nAre " "you " "a " reap "er? " "Are " "you " "a " rea "per? "
  "\nGa" ther "ing " "fruit "  un "to " "life " ev er "more? "
  "\nLift " "up " "your " "eyes, " "for " "the " har "vest " "is " rea "dy; "
  "\nHas" "ten, " "oh, " has "ten " "to " ga "ther " "your " "store!\n"

  \set stanza = "2."
  "\nLook " "on " "the " "fields " "how " "the " har "vest " "is " was "ting, "
  "\nWait" "ing " "for " reap "ers " "to " gar "ner " "it " "in! "
  "\nHe " "that " "is " faith "ful " re ceiv "eth " "hi " wa "ges; "
  "\nJoy " ev er last "ing " "the " reap "er " "shall " "win. "
  "\nAre " "you " "a " reap "er? " "Are " "you " "a " rea "per? "
  "\nGa" ther "ing " "fruit "  un "to " "life " ev er "more? "
  "\nLift " "up " "your " "eyes, " "for " "the " har "vest " "is " rea "dy; "
  "\nHas" "ten, " "oh, " has "ten " "to " ga "ther " "your " "store!\n"

  \set stanza = "3."
  "\nSouls " "that " "are " rea "dy " "to " en "ter " "the " king "dom, "
  "\nWait " "for " "the " "glad " in vi ta "tion " to "day: "
  "\n“Go " "ye " "and " "tell,” " "is " "the " "word " "of " "the " Mas "ter— "
  "\nSer" "vant " "of " Je "sus, " "oh " "hear, " "and " o "bey! "
  "\nAre " "you " "a " reap "er? " "Are " "you " "a " rea "per? "
  "\nGa" ther "ing " "fruit "  un "to " "life " ev er "more? "
  "\nLift " "up " "your " "eyes, " "for " "the " har "vest " "is " rea "dy; "
  "\nHas" "ten, " "oh, " has "ten " "to " ga "ther " "your " "store!\n"

  \set stanza = "4."
  "\nReap " "for " "His " glo "ry " "in " "fields " "that " "are " near "est; "
  "\nLook " "all " a "broad, " "for " "the " ahr "vest " "is " "white: "
  "\nO'er " "the " "wide " "earth " "aer " "the " "sheaves " "to " "be " gar "nered— "
  "\nHas" "ten, " "O " reap "er, " "fast " com "eth " "the " "night! "
  "\nAre " "you " "a " reap "er? " "Are " "you " "a " rea "per? "
  "\nGa" ther "ing " "fruit "  un "to " "life " ev er "more? "
  "\nLift " "up " "your " "eyes, " "for " "the " har "vest " "is " rea "dy; "
  "\nHas" "ten, " "oh, " has "ten " "to " ga "ther " "your " "store! "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Lift " "up " "your " "eyes " "to " "the " "fields " "that " "are " whit "'ning; "
  "\nHark! " "'tis " "the " "voice " "of " "the " Mas "ter " "and " "Lord. "
  "\nSee! " "on " "each " "side " "there " "is " "work " "for " "the " reap "er, "
  "\nSheaves " "that " "are " gold "en " "shall " "be " "the " re "ward. "
  "\nAre " "you " "a " reap "er? " "Are " "you " "a " rea "per? "
  "\nGa" ther "ing, " ga ther "ing " "fruit, " gol "den " "fruit "
  "\nun" "to " "life " ev er "more? "
  "\nLift " "up " "your " "eyes, " "for " "the " har "vest " "is " rea "dy; "
  "\nHas" "ten, " "oh, " has "ten " "to " ga "ther " "your " "store!\n"

  \set stanza = "2."
  "\nLook " "on " "the " "fields " "how " "the " har "vest " "is " was "ting, "
  "\nWait" "ing " "for " reap "ers " "to " gar "ner " "it " "in! "
  "\nHe " "that " "is " faith "ful " re ceiv "eth " "hi " wa "ges; "
  "\nJoy " ev er last "ing " "the " reap "er " "shall " "win. "
  "\nAre " "you " "a " reap "er? " "Are " "you " "a " rea "per? "
  "\nGa" ther "ing, " ga ther "ing " "fruit, " gol "den " "fruit "
  "\nun" "to " "life " ev er "more? "
  "\nLift " "up " "your " "eyes, " "for " "the " har "vest " "is " rea "dy; "
  "\nHas" "ten, " "oh, " has "ten " "to " ga "ther " "your " "store!\n"

  \set stanza = "3."
  "\nSouls " "that " "are " rea "dy " "to " en "ter " "the " king "dom, "
  "\nWait " "for " "the " "glad " in vi ta "tion " to "day: "
  "\n“Go " "ye " "and " "tell,” " "is " "the " "word " "of " "the " Mas "ter— "
  "\nSer" "vant " "of " Je "sus, " "oh " "hear, " "and " o "bey! "
  "\nAre " "you " "a " reap "er? " "Are " "you " "a " rea "per? "
  "\nGa" ther "ing, " ga ther "ing " "fruit, " gol "den " "fruit "
  "\nun" "to " "life " ev er "more? "
  "\nLift " "up " "your " "eyes, " "for " "the " har "vest " "is " rea "dy; "
  "\nHas" "ten, " "oh, " has "ten " "to " ga "ther " "your " "store!\n"

  \set stanza = "4."
  "\nReap " "for " "His " glo "ry " "in " "fields " "that " "are " near "est; "
  "\nLook " "all " a "broad, " "for " "the " ahr "vest " "is " "white: "
  "\nO'er " "the " "wide " "earth " "aer " "the " "sheaves " "to " "be " gar "nered— "
  "\nHas" "ten, " "O " reap "er, " "fast " com "eth " "the " "night! "
  "\nAre " "you " "a " reap "er? " "Are " "you " "a " rea "per? "
  "\nGa" ther "ing, " ga ther "ing " "fruit, " gol "den " "fruit "
  "\nun" "to " "life " ev er "more? "
  "\nLift " "up " "your " "eyes, " "for " "the " har "vest " "is " rea "dy; "
  "\nHas" "ten, " "oh, " has "ten " "to " ga "ther " "your " "store! "
}


\book {
  \bookOutputSuffix "midi-women"
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
