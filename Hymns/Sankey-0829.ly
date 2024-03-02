\version "2.25.13"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "'Tis There!"
  subtitle    = "Sankey No. 829"
  subsubtitle = "Sankey 880 No. 252"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup{\smallCaps "Este's" Psalter}
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "H. Bonar, D.D."
  meter       = \markup\smallCaps "C.M."
  piece       = \markup\smallCaps "Winchester Old."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*3 s2.
  \textMark \markup { \box \bold "B" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4 | b4. 8 a4 g | c4 4 b a | b4 d d cis | d2. \bar "|" \break
  b4 | e4. d8 c4 b | a g fis b | a g g fis | g2.
}

alto = \relative {
  \autoBeamOff
  d'4 | g4. 8 fis4 g | 4 4 4 fis | g fis8[g] a4. g8 | fis2.
  g4 | 4. b8 a4 g8[fis] | e4 c d d | d b8[cis] d4. c8 | b2.
}

tenor = \relative {
  \autoBeamOff
  b4 | d4. 8 4 b | e e d d | d d e e | d2.
  d4 | c g e' d | c4. g8 a4 g | fis g a a | g2.
}

bass = \relative {
  \autoBeamOff
  g4 | 4. 8 d4 e | c4 c g' d | g b a a | d,2.
  
  g4 | c,4. g8 a4 b | c e d g, | d' e d d | g,2.
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Op -- pressed by noon -- day's scorch -- ing heat,
  To yon -- der Cross I flee,
  Be -- neath its shel -- ter take my seat—
  No shade like this to me!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Be -- neath that Cross clear wa -- ters burst,
  A foun -- tain spark -- ling free,
  And there I quench my des -- ert thirst—
  No spring like this for me!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  For bur -- dened ones a rest -- ing- place
  Be -- side that Cross I see;
  Here I cast off my wear -- i -- ness—
  No rest like this for me!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  A stran -- ger here, I pitch my tent
  Be -- neath this spread -- ing tree:
  Here shall my pil -- grim life be spent—
  No home like this for me!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Op" "pressed " "by " noon "day's " scorch "ing " "heat, "
  "\nTo " yon "der " "Cross " "I " "flee, "
  "\nBe" "neath " "its " shel "ter " "take " "my " "seat— "
  "\nNo " "shade " "like " "this " "to " "me!\n"

  \set stanza = "2."
  "\nBe" "neath " "that " "Cross " "clear " wa "ters " "burst, "
  "\nA " foun "tain " spark "ling " "free, "
  "\nAnd " "there " "I " "quench " "my " des "ert " "thirst— "
  "\nNo " "spring " "like " "this " "for " "me!\n"

  \set stanza = "3."
  "\nFor " bur "dened " "ones " "a " rest ing "place "
  "\nBe" "side " "that " "Cross " "I " "see; "
  "\nHere " "I " "cast " "off " "my " wear i "ness— "
  "\nNo " "rest " "like " "this " "for " "me!\n"

  \set stanza = "4."
  "\nA " stran "ger " "here, " "I " "pitch " "my " "tent "
  "\nBe" "neath " "this " spread "ing " "tree: "
  "\nHere " "shall " "my " pil "grim " "life " "be " "spent— "
  "\nNo " "home " "like " "this " "for " "me! "
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
