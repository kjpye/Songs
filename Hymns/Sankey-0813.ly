\version "2.25.12"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Here I am; Send me!"
  subtitle    = "Sankey No. 813"
  subsubtitle = "Sankey 880 No. 18"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "S. P. Grannis."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "D. March, D.D."
  meter       = \markup\smallCaps "8.7. D."
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
  \textMark \markup { \box \bold "A" } s4 s1*1 s2
  \textMark \markup { \box \bold "B" } s2 s1 s4
  \textMark \markup { \box \bold "C" } s2. s1
  \textMark \markup { \box \bold "D" } s1 s2.
  \textMark \markup { \box \bold "E" } s4 s1 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'8. 16 | 8 8 a8. g16 a8 c\fermata f,8. g16 | a8. c16 g8 a \bar "|" \break
  f4 8 8 | 8. 16 a8 g a16 c8.\fermata 8 g | 8. 16 \bar "|" \break
  a8.\fermata g16 4\fermata bes8 8 | 8. 16 8 c d16 c8. a8 8 |
  bes8. 16 a8. 16 g4\fermata a8 8 | bes8. 16 a8. g16 f d8. \bar "|" \break
  f8 d | c f g8. a16 g4\fermata bes8. d16 | c8\fermata a g8. f16 4\fermata
}

alto = \relative {
  \autoBeamOff
  c'8. 16 | 8 8 f8. e16 f8 8\fermata 8. 16 |f8. 16 e8 8
  f4 c8 8 | 8. 16 f8 e f16 8.\fermata e8 e | 8. 16
  f8.\fermata 16 e4\fermata g8 8 | 8. 16 8 a b16 a8. f8 8 |
  e8. 16 f8. 16 e4\fermata f8 f | e8. 16 8. 16 d d8.
  d8 bes | a c f8. 16 e4\fermata 8. 16 | f8\fermata f e8. c16 4\fermata
}

tenor = \relative {
  \autoBeamOff
  a8. 16 | 8 8 c8. 16 c8 a\fermata c8. d16 | c8. a16 b8 c
  a4 8 8 | 8. 16 c8 8 16 a8.\fermata g8 c | 8. 16
  b8.\fermata 16 c4\fermata 8 8 | 8. 16 8 8 16 8. 8 8 |
  c8. 16 8. 16 4\fermata 8 8 | 8. 16 cis8. 16 d bes8.
  bes8 f | f a b8. 16 c4\fermata 8. bes16 | a8\fermata c8 bes8. a16 4
}

bass = \relative {
  \autoBeamOff
  f8. 16 | 8 8 8. c16 f8 8\fermata a,8. bes16 | c8. 16 8 8
  f4 8 8 | 8. 16 8 c f16 8.\fermata c8 8 | g'8. 16
  g8.\fermata 16 c,4\fermata 8 8 | 8. 16 8 8 f16 8. 8 8 |
  g8. 16 f8. 16 c4\fermata f,8 8 | g8. 16 a8. 16 bes16 8.
  bes8 8 | c c g8. 16 c4\fermata 8. 16 | f8\fermata 8 c8. \chord <f, f'>16  4\fermata 
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 6

wordsOne = \lyricmode {
  \set stanza = "1."
  Hark the voice of Je -- sus cry -- ing—
  “Who will go and work to -- day?
  Fields are white, and har -- vest wait -- ing:
  Who will bear the sheaves a -- way?”
  Loud and strong the Mas -- ter call -- eth,
  Rich re -- ward He of -- fers thee:
  Who will an -- swer, glad -- ly say -- ing?—
  “Here I am; send me, send me!
  Here I am; send me, send me!”
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  If you can -- not cross the o -- cean,
  And the hea -- then lands ex -- plore,
  You can find the hea -- then near -- er,
  You can help them at your door.
  If you can -- not give your thou -- sands,
  You can give the wi -- dow's mite;
  And the least you do for Je -- sus,
  Will be pre -- cious in His sight,
  Will be pre -- cious in His sight.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  If you can -- not speak like an -- gels,
  If you can -- not preach like Paul,
  You can tell the love of Je -- sus,
  You can say He died for all.
  If you can -- not rouse the wick -- ed
  With the Judg -- ment's dread a -- larms.
  You can lead the lit -- tle chil -- dren
  To the Sa -- viour's wait -- ing arms,
  To the Sa -- viour's wait -- ing arms.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  If you can -- not be the watch -- man,
  Stand -- ing high on Zi -- on's wall,
  Point -- ing out the path to hea -- ven,
  Off -- 'ring life and peaec to all;
  With your prayers and with your boun -- ties
  You can do what Heaven de -- mands;
  You can be like faith -- ful Aa -- ron,
  Hold -- ing up the pro -- phet's hands,
  Hold -- ing up the pro -- phet's hands.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  If a -- mong the old -- er peo -- ple
  You may not be apt to teach.
  “Feed My lambs,” said Christ our Shep -- herd,
  “ace the food with -- in their reach.”
  And it may be that the chil -- dren
  You have led with trem -- bling hand
  Will be found a -- mong your jew -- els,
  When you reach the bet -- ter land,
  When you reach the bet -- ter land.
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Let none hear you id -- ly say -- ing,
  Ťhere is no -- thing I can do,”
  While the souls of men are dy -- ing,
  And the Mas -- ter calls for you.
  Take the task He gives you glad -- ly,
  Let His work your plea -- sure be;
  An -- swer quick -- ly when He call -- eth:
  “Here I am; send me, send me!
  Here I am; send me, send me!”
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Hark " "the " "voice " "of " Je "sus " cry "ing— "
  "\n“Who " "will " "go " "and " "work " to "day? "
  "\nFields " "are " "white, " "and " har "vest " wait "ing: "
  "\nWho " "will " "bear " "the " "sheaves " a "way?” "
  "\nLoud " "and " "strong " "the " Mas "ter " call "eth, "
  "\nRich " re "ward " "He " of "fers " "thee: "
  "\nWho " "will " an "swer, " glad "ly " say "ing?— "
  "\n“Here " "I " "am; " "send " "me, " "send " "me! "
  "\nHere " "I " "am; " "send " "me, " "send " "me!”\n"

  \set stanza = "2."
  "\nIf " "you " can "not " "cross " "the " o "cean, "
  "\nAnd " "the " hea "then " "lands " ex "plore, "
  "\nYou " "can " "find " "the " hea "then " near "er, "
  "\nYou " "can " "help " "them " "at " "your " "door. "
  "\nIf " "you " can "not " "give " "your " thou "sands, "
  "\nYou " "can " "give " "the " wi "dow's " "mite; "
  "\nAnd " "the " "least " "you " "do " "for " Je "sus, "
  "\nWill " "be " pre "cious " "in " "His " "sight, "
  "\nWill " "be " pre "cious " "in " "His " "sight.\n"

  \set stanza = "3."
  "\nIf " "you " can "not " "speak " "like " an "gels, "
  "\nIf " "you " can "not " "preach " "like " "Paul, "
  "\nYou " "can " "tell " "the " "love " "of " Je "sus, "
  "\nYou " "can " "say " "He " "died " "for " "all. "
  "\nIf " "you " can "not " "rouse " "the " wick "ed "
  "\nWith " "the " Judg "ment's " "dread " a "larms. "
  "\nYou " "can " "lead " "the " lit "tle " chil "dren "
  "\nTo " "the " Sa "viour's " wait "ing " "arms, "
  "\nTo " "the " Sa "viour's " wait "ing " "arms.\n"

  \set stanza = "4."
  "\nIf " "you " can "not " "be " "the " watch "man, "
  "\nStand" "ing " "high " "on " Zi "on's " "wall, "
  "\nPoint" "ing " "out " "the " "path " "to " hea "ven, "
  "\nOff" "'ring " "life " "and " "peaec " "to " "all; "
  "\nWith " "your " "prayers " "and " "with " "your " boun "ties "
  "\nYou " "can " "do " "what " "Heaven " de "mands; "
  "\nYou " "can " "be " "like " faith "ful " Aa "ron, "
  "\nHold" "ing " "up " "the " pro "phet's " "hands, "
  "\nHold" "ing " "up " "the " pro "phet's " "hands.\n"

  \set stanza = "5."
  "\nIf " a "mong " "the " old "er " peo "ple "
  "\nYou " "may " "not " "be " "apt " "to " "teach. "
  "\n“Feed " "My " "lambs,” " "said " "Christ " "our " Shep "herd, "
  "\n“ace " "the " "food " with "in " "their " "reach.” "
  "\nAnd " "it " "may " "be " "that " "the " chil "dren "
  "\nYou " "have " "led " "with " trem "bling " "hand "
  "\nWill " "be " "found " a "mong " "your " jew "els, "
  "\nWhen " "you " "reach " "the " bet "ter " "land, "
  "\nWhen " "you " "reach " "the " bet "ter " "land.\n"

  \set stanza = "6."
  "\nLet " "none " "hear " "you " id "ly " say "ing, "
  "\nŤhere " "is " no "thing " "I " "can " "do,” "
  "\nWhile " "the " "souls " "of " "men " "are " dy "ing, "
  "\nAnd " "the " Mas "ter " "calls " "for " "you. "
  "\nTake " "the " "task " "He " "gives " "you " glad "ly, "
  "\nLet " "His " "work " "your " plea "sure " "be; "
  "\nAn" "swer " quick "ly " "when " "He " call "eth: "
  "\n“Here " "I " "am; " "send " "me, " "send " "me! "
  "\nHere " "I " "am; " "send " "me, " "send " "me!” "
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
