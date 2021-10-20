\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Heavens declare Thy Glory!"
  subtitle    = "Sankey No. 268"
  subsubtitle = "Sankey 880 No. 623"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "R. Harrison."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Isaac Watts, D.D."
  meter       = \markup\smallCaps "L.M."
  piece       = \markup\smallCaps "Warrington."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key c \major
  \time 3/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*8
  \mark \markup { \box "B" } s2.*8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4 4 f
  e4(g) c
  c4(d) b
  c2 e4
  d2 4
  e2 d8[c]
  b2 a4
  g2.
  c4 4 g % B
  a4(b) c
  f4.(e8) d[c]
  d4(b) a
  g2 f4
  e4(g) c
  c4.(d8) b4
  c2.
}

alto = \relative {
  \autoBeamOff
  e'4 c b
  c4(e) c
  e4(f) d
  e2 g4
  g2 4
  g2 4
  g2 fis4
  g2.
  e4 g e % B
  f4{g} g
  a4.(g8) f[e]
  e4(d) d
  e2 f4
  c2 e4
  f2 d4
  e2.
}

tenor = \relative {
  \autoBeamOff
  g4 4 4
  g2 4
  c4(a) g
  g2 c4
  d2 b4
  c2 b8[c]
  d2 c4
  b2.
  c4 4 4 % B
  c4(d) c
  a2 4
  g2 b4
  c2 4
  c2 g4
  a2 g4
  g2.
}

bass = \relative {
  \autoBeamOff
  c4 e d
  c2 e4
  a4(f) g
  c,2 c'4
  b2 g4 c,2 d8[e]
  d2 4
  g2.
  c,4 e c % B
  f2 e4
  d4.(e8) f[fis]
  g2 f4
  e2 a4
  g4(e) c
  f4(d) g
  c,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  The heavens de -- clare Thy glo -- ry, Lord!
  In ev -- 'ry star Thy wis -- dom shines;
  But when our eyes be -- hold Thy Word,
  We read Thy name in fair -- er lines.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  The ra -- diant sun, the chan -- ging light,
  And nights and days Thy power con -- fess;
  But the blest vol -- ume Thou hast writ
  Re -- veals Thy jus -- tice and Thy grace.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Sun, moon, and stars con -- vey Thy praise
  Round the whole earth, and nev -- er stand;
  So when Thy truth be -- gan its race,
  It touched and glanced on ev -- ery land.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Nor shall Thy spread -- ing Gos -- pel rest,
  Till through the world Thy truth has run;
  Till Christ has all the na -- tions blest
  That see the light or fell the sun.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "The " "heavens " de "clare " "Thy " glo "ry, " "Lord! "
  "\nIn " ev "'ry " "star " "Thy " wis "dom " "shines; "
  "\nBut " "when " "our " "eyes " be "hold " "Thy " "Word, "
  "\nWe " "read " "Thy " "name " "in " fair "er " "lines. "

  \set stanza = "2."
  "\nThe " ra "diant " "sun, " "the " chan "ging " "light, "
  "\nAnd " "nights " "and " "days " "Thy " "power " con "fess; "
  "\nBut " "the " "blest " vol "ume " "Thou " "hast " "writ "
  "\nRe" "veals " "Thy " jus "tice " "and " "Thy " "grace. "

  \set stanza = "3."
  "\nSun, " "moon, " "and " "stars " con "vey " "Thy " "praise "
  "\nRound " "the " "whole " "earth, " "and " nev "er " "stand; "
  "\nSo " "when " "Thy " "truth " be "gan " "its " "race, "
  "\nIt " "touched " "and " "glanced " "on " ev "ery " "land. "

  \set stanza = "4."
  "\nNor " "shall " "Thy " spread "ing " Gos "pel " "rest, "
  "\nTill " "through " "the " "world " "Thy " "truth " "has " "run; "
  "\nTill " "Christ " "has " "all " "the " na "tions " "blest "
  "\nThat " "see " "the " "light " "or " "fell " "the " "sun. "
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
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
                                              \wordsFour  \chorus
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
                                              \wordsFour  \chorus
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
