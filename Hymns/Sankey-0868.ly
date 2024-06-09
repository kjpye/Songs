\version "2.25.16"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Fully Trusting."
  subtitle    = "Sankey No. 868"
  subsubtitle = "Sankey 880 No. 208"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. C. Morgan."
  meter       = \markup\smallCaps "8.7."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*3 s2
  \textMark \markup { \box \bold "B" } s4 s2.*3 s2
  \textMark \markup { \box \bold "C" } s4 s2.*3 s2
  \textMark \markup { \box \bold "D" } s4 s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  c''8. d16 | c4 a4 8. bes16 | a4 f e8 f | g4. a8 bes c | a2 \bar "|" \break
  c8. d16 | c4 a4 8. bes16 | a4 f4 8 8 | 8 bes a4 g | f2
  \section \sectionLabel \markup\smallCaps Chorus. \break
  c'8. 16 | d4 bes d8. 16 | c4 a c8 a | g8 c e4 d | c2\fermata \bar "|" \break
  c8. d16 | c4 a4 8. bes16 | a4 f4 8 8 | 8 bes a4 g | f2
}

alto = \relative {
  a'8. bes16 | a4 f4 8. 16 | 4 4 c8 f | e4. f8 g e | f2
  a8. bes16 | a4 f4 8. 16 | 4 c f8 ees | d g f4 e | f2 \section
  f8. 16 | 4 d f8. 16 | f4 4 8 8 | e g8 4 f | e2
  f8. 16 | 4 4 8. 16 | 4 c f8 ees | d g f4 e | f2
}

tenor = \relative {
  c'8. 16 | 4 4 8. d16 | c4 4 8 8 | 4. 8 8 8 | 2
  c8. 16 | 4 4 8. d16 | c4 a4 8 8 | bes d c4 bes | a2 \section
  a8. 16 | bes4 f bes8. 16 | a4 c a8 c | c e c4 b | c4(bes\fermata)
  a8. bes16 | a4 c4 8. d16 | c4 a4 8 8 | bes d c4 bes | a2
}

bass = \relative {
  f8. 16 | 4 4 8. 16 | 4 a bes8 a | g4. f8 e c | f2
  f8. 16 | 4 4 8. 16 | 4 4 d8 c | bes g c4 4 | f2 \section
  f8. 16 | bes,4 4 8. d16 | f4 4 8 8 | g8 8 4 g, | c2_\fermata
  f8. 16 | 4 4 8. 16 | 4 4 d8 c | bes g c4 4 | f2
}

chorus = \lyricmode {
  I am trust -- ing, ful -- ly trust -- ing,
  Sweet -- ly trust -- ing in His word;
  I am trust -- ing, ful -- ly trust -- ing,
  Sweet -- ly trust -- ing in His word.
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  All my doubts I give to Je -- sus!
  I've His gra -- cious pro -- mise heard—
  I “shall nev -- er be con -- found -- ed”—
  I am trust -- ing in that word.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  All my sin I lay on Je -- sus!
  He doth wash me in His blood:
  He will keep me pure and ho -- ly,
  He will bring me home to God.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  All my tears I give to Je -- sus!
  Rests my wea -- ry soul on Him;
  Tho’ my way be hid in dark -- ness,
  Nev -- er can His light grow dim.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  All my joys I give to Je -- sus!
  He is all I want of bliss;
  He of all the worlds is Mas -- ter—
  He has all I need in this.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  All I am I give to Je -- sus!
  All my bo -- dy, all my soul,
  All I have, and all I hope for,
  While e -- ter -- nal ag -- es roll.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "All " "my " "doubts " "I " "give " "to " Je "sus! "
  "\nI've " "His " gra "cious " pro "mise " "heard— "
  "\nI " "“shall " nev "er " "be " con found "ed”— "
  "\nI " "am " trust "ing " "in " "that " "word. "
  "\nI " "am " trust "ing, " ful "ly " trust "ing, "
  "\nSweet" "ly " trust "ing " "in " "His " "word; "
  "\nI " "am " trust "ing, " ful "ly " trust "ing, "
  "\nSweet" "ly " trust "ing " "in " "His " "word.\n"

  \set stanza = "2."
  "\nAll " "my " "sin " "I " "lay " "on " Je "sus! "
  "\nHe " "doth " "wash " "me " "in " "His " "blood: "
  "\nHe " "will " "keep " "me " "pure " "and " ho "ly, "
  "\nHe " "will " "bring " "me " "home " "to " "God. "
  "\nI " "am " trust "ing, " ful "ly " trust "ing, "
  "\nSweet" "ly " trust "ing " "in " "His " "word; "
  "\nI " "am " trust "ing, " ful "ly " trust "ing, "
  "\nSweet" "ly " trust "ing " "in " "His " "word.\n"

  \set stanza = "3."
  "\nAll " "my " "tears " "I " "give " "to " Je "sus! "
  "\nRests " "my " wea "ry " "soul " "on " "Him; "
  "\nTho’ " "my " "way " "be " "hid " "in " dark "ness, "
  "\nNev" "er " "can " "His " "light " "grow " "dim. "
  "\nI " "am " trust "ing, " ful "ly " trust "ing, "
  "\nSweet" "ly " trust "ing " "in " "His " "word; "
  "\nI " "am " trust "ing, " ful "ly " trust "ing, "
  "\nSweet" "ly " trust "ing " "in " "His " "word.\n"

  \set stanza = "4."
  "\nAll " "my " "joys " "I " "give " "to " Je "sus! "
  "\nHe " "is " "all " "I " "want " "of " "bliss; "
  "\nHe " "of " "all " "the " "worlds " "is " Mas "ter— "
  "\nHe " "has " "all " "I " "need " "in " "this. "
  "\nI " "am " trust "ing, " ful "ly " trust "ing, "
  "\nSweet" "ly " trust "ing " "in " "His " "word; "
  "\nI " "am " trust "ing, " ful "ly " trust "ing, "
  "\nSweet" "ly " trust "ing " "in " "His " "word.\n"

  \set stanza = "5."
  "\nAll " "I " "am " "I " "give " "to " Je "sus! "
  "\nAll " "my " bo "dy, " "all " "my " "soul, "
  "\nAll " "I " "have, " "and " "all " "I " "hope " "for, "
  "\nWhile " e ter "nal " ag "es " "roll. "
  "\nI " "am " trust "ing, " ful "ly " trust "ing, "
  "\nSweet" "ly " trust "ing " "in " "His " "word; "
  "\nI " "am " trust "ing, " ful "ly " trust "ing, "
  "\nSweet" "ly " trust "ing " "in " "His " "word. "
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
    \midi { \context { \Staff autoBeaming = ##f } }
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
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
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
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
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
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}
