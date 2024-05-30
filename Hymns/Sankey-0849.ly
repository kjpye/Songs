\version "2.25.16"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "My Saviour!"
  subtitle    = "Sankey No. 849"
  subsubtitle = "N. H. No. 43"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Wm. J. Kirkpatrick"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Dora Greenwell."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key e \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*2
  \textMark \markup { \box \bold "B" }    s2.*3
  \textMark \markup { \box \bold "C" }    s2.*2 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  \autoBeamOff
  e'4 | gis8 8 4 b | 8 a8 4 gis |
  fis8 8 4 cis' | 8 b8 4 a | gis8 b e4 b |
  dis8 cis8 4 a8[fis] | e8 8 gis4 fis | 4 e\fermata
}

alto = \relative {
  \autoBeamOff
  e'4 | 8 8 4 4 | dis8 8 4 e |
  dis8 8 4 4 | e8 8 4 4 | 8 gis8 4 4 |
  b8 a8 4 fis8[cis] | b8 8 e4 dis | 4 e\omit\fermata
}

tenor = \relative {
  \autoBeamOff
  gis4 | b8 8 4 4 | 8 8 4 4 |
  b8 8 4 a | 8 gis8 4 cis | b8 8 4 e
  e8 8 4 cis8[a] | gis8 8 b4 a | a gis_\fermata
}

bass = \relative {
  \autoBeamOff
  e4 | 8 8 4 gis | fis8 8 4 e |
  b8 8 4 4 | e8 8 4 4 | 8 8 4 4 |
  a8 8 4 a, | b8 8 4 4 | 4 \chord <e, e'>\omit\fermata
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  I am not skilled to un -- der -- stand
  What God hath willed, what God hath planned;
  I on -- ly know at His right hand
  Is One who is my Sa -- viour!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I take Him at His word in -- deed:
  “Christ died for sin -- ners”— this I read;
  For in my heart I find a need
  Of Him to be my Sa -- viour!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  That He should leave His place on high,
  And come for sin -- ful man to die,
  You count it strange?— so once did I,
  Be -- fore I knew my Sa -- viour!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  And oh, that He ful -- filled may see
  The trav -- ail of His soul in me,
  And with His work con -- ten -- ted be,
  As I with my dear Sa -- viour!
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Yea, liv -- ing, dy -- ing, let me bring
  My strength, my sol -- ace from this spring:
  That He who lives to be my King
  Once died to be my Sa -- viour!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I " "am " "not " "skilled " "to " un der "stand "
  "\nWhat " "God " "hath " "willed, " "what " "God " "hath " "planned; "
  "\nI " on "ly " "know " "at " "His " "right " "hand "
  "\nIs " "One " "who " "is " "my " Sa "viour!\n"

  \set stanza = "2."
  "\nI " "take " "Him " "at " "His " "word " in "deed: "
  "\n“Christ " "died " "for " sin "ners”— " "this " "I " "read; "
  "\nFor " "in " "my " "heart " "I " "find " "a " "need "
  "\nOf " "Him " "to " "be " "my " Sa "viour!\n"

  \set stanza = "3."
  "\nThat " "He " "should " "leave " "His " "place " "on " "high, "
  "\nAnd " "come " "for " sin "ful " "man " "to " "die, "
  "\nYou " "count " "it " "strange?— " "so " "once " "did " "I, "
  "\nBe" "fore " "I " "knew " "my " Sa "viour!\n"

  \set stanza = "4."
  "\nAnd " "oh, " "that " "He " ful "filled " "may " "see "
  "\nThe " trav "ail " "of " "His " "soul " "in " "me, "
  "\nAnd " "with " "His " "work " con ten "ted " "be, "
  "\nAs " "I " "with " "my " "dear " Sa "viour!\n"

  \set stanza = "5."
  "\nYea, " liv "ing, " dy "ing, " "let " "me " "bring "
  "\nMy " "strength, " "my " sol "ace " "from " "this " "spring: "
  "\nThat " "He " "who " "lives " "to " "be " "my " "King "
  "\nOnce " "died " "to " "be " "my " Sa "viour! "
}

wordsMidiMen = \lyricmode {
}

\book {
  \paper {
    output-suffix = midi
  }
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack     }
            \new Voice { \global \repeat-verses \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat-verses \verses \alto \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat-verses \verses \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat-verses \verses \bass }
          >>
        >>
    \midi {}
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
            \new NullVoice = alignerT { \keepWithTag #'dash \tenor }
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
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat-verses \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses \soprano \bar "|." }
                                    { \global \repeat-verses \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses { \tenor \nl } }
                                    { \global \repeat-verses \verses \bass }
            \new NullVoice = alignerT { \repeat-verses \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \paper {
    output-suffix = single
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

\book {
  \paper {
    output-suffix = singlepage
  }
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
