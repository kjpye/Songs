\version "2.25.27"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "High School Hymn"
%  subtitle    = "Sankey No. X"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "John B Dykes"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Tom Lehrer"
%  meter       = \markup\smallCaps "meter"
  piece       = "Eternal Father, Strong to Save"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*3
  \textMark \markup { \box \bold "B" } s1*2 s2.
  \textMark \markup { \box \bold "C" } s4 s1*3
  \textMark \markup { \box \bold "D" } s1*2 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  \partial 4
  c'4 | e4. 8 g4 g | a a g g | c d b g |
  g4 fis g d | f4. 8 e4 e | g4. 8 fis4 \bar "|" \break b4
  g4 fis e a | g fis e e | e4. 8 f4 f |
  fis4. 8 g4 g | g a g e | \partial 2. d4. c8 c4\fermata \section |
}

amensop = \relative { f'2 e }

alto = \relative {
  c'4 | 4. 8 e4 e | f f e g | g4. fis8 g4 d8[e] |
  d4 d d b | d4. 8 c4 c | e4. 8 d4 fis |
  e4. dis8 e4. fis8 | e4 dis e b | bes4. c8 a4 c |
  c4. 8 b4 f' | e d e c | b4. c8 4 |
}

amenalto = \relative { c'2 c }

tenor = \relative {
  e4 | g4. 8 c4. b8 | a[b] c[d] e4 d | c a g d'8[c] |
  a4 a b g | g4. 8 4 4 | a4. 8 4 b |
  b4 a b c | b b g g | g4. 8 f4 a |
  a4. 8 g4 d' | c c c g | f4. e8 4\fermata \section |
}

amentenor = \relative { a2 g }

bass = \relative {
  c4 | 4. 8 4 4 | f8[g] a[b] c4 b | a d, e b8[c] |
  d4 d g g | b,4. 8 c4 c | cis4. 8 d4 dis |
  e4 fis g a | b b, e e | c4. 8 f4 f |
  d4. 8 g4 b, | c fis, g g | g4. c8 4 |
}

amenbass = \relative { f,2 c' }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 2

wordsOne = \lyricmode {
  \set stanza = "1."
  To whom it may con -- cern we pray
  that we’ll get out of here some day.
  O Thou, our awe -- some chap -- er -- one,
  Who can’t leave well e -- nough a -- lone,
  Give us a break, we beg of Thee,
  Or, bet -- ter yet, just let us be.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  If thou canst hear us, that’s just swell.
  Some -- times it’s real -- ly hard to tell.
  Per -- haps we’ll nev -- er see Thy face,
  But we’ll keep pray -- ing just in case,
  un -- til the day we say good -- bye,
  Re -- leased at last from "<>" "<>" High.
  A -- men.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "To " "whom " "it " "may " con "cern " "we " "pray "
  "\nthat " "we’ll " "get " "out " "of " "here " "some " "day. "
  "\nO " "Thou, " "our " awe "some " chap er "one, "
  "\nWho " "can’t " "leave " "well " e "nough " a "lone, "
  "\nGive " "us " "a " "break, " "we " "beg " "of " "Thee, "
  "\nOr, " bet "ter " "yet, " "just " "let " "us " "be.\n"

  \set stanza = "2."
  "\nIf " "thou " "canst " "hear " "us, " "that’s " "just " "swell. "
  "\nSome" "times " "it’s " real "ly " "hard " "to " "tell. "
  "\nPer" "haps " "we’ll " nev "er " "see " "Thy " "face, "
  "\nBut " "we’ll " "keep " pray "ing " "just " "in " "case, "
  "\nun" "til " "the " "day " "we " "say " good "bye, "
  "\nRe" "leased " "at " "last " "from " "<> " "<> " "High. "
  "\nA" "men. "
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
            \new Voice { \global \repeat-verses \verses \soprano \amensop \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat-verses \verses \alto \amenalto \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat-verses \verses \tenor \amentenor}
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat-verses \verses \bass \amenbass}
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
            \new NullVoice = "aligner" \keepWithTag #'dash {\soprano \amensop}
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash {\soprano \amensop} \bar "|." } { \global \keepWithTag #'dash {\alto \amenalto} }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash {\tenor \amentenor} } { \global \keepWithTag #'dash {\bass \amenbass} }
            \new NullVoice = alignerT { \keepWithTag #'dash {\tenor \amentenor} }
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
            \new NullVoice = "aligner" { \repeat-verses \verses \soprano \amensop }
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses \soprano \amensop \bar "|." }
                                    { \global \repeat-verses \verses { \alto \nl } \amensop \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses { \tenor \nl } \amentenor }
                                    { \global \repeat-verses \verses \bass \amenbass }
            \new NullVoice = alignerT { \repeat-verses \verses \tenor \amentenor }
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
