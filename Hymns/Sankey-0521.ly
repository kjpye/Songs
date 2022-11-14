\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Shadow of the Highest."
  subtitle    = "Sankey No. 521"
%  subsubtitle = "Sankey 880 No. "
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Victor H. Benke."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Victoria Stuart."
  meter       = \markup\smallCaps "8.7."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*3 s2
  \mark \markup { \box "B" } s4 s2.*3 s2
  \mark \markup { \box "C" } s4 s1*2
  \mark \markup { \box "D" }    s1*3
  \mark \markup { \box "E" }    s1*2 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \time 3/4 \partial 4 \break }

soprano = \relative {
  \autoBeamOff
  b'8. ais16 | b4 g a8. gis16 | a4 e g8 8 | fis4. a8 d c | b2 \bar "|" \break 8. ais16 |
  b4 g a8 b | c4 a e8 g | 4. f8 b a | g2 \time 4/4 \partial 4 \bar "||" \break
  b8.^\markup\smallCaps Chorus. d16 | c2~8. 16 b8. a16 | b4 g~4 8. b16 |
  a2~8. d16 8. cis16 | d2. b8. c16 | d2~8. b16 c8. b16 |
  a4 c~4 e,8. a16 | g2~8. fis16 b8. a16 | g2~4\fermata
}

alto = \relative {
  \autoBeamOff
  d'8. cis16 | d4 4 e8. d16 | c4 4 8 cis | d4. fis8 g d | 2 8. cis16 |
  d4 4 e8 8 | 4 4 c8 e | c4. 8 f f | d2 g8. b16 |
  a2~8. 16 g8. fis16 | g4 b,~4 8. d16 |
  fis2~8. 16 8. e16 | f2. g8. a16 | b2~8. g16 e8. d16 |
  c4 e~4 c8. 16 | b2~8. a16 d8. c16 | b8. 16 c8. 16 b4\fermata  
}

tenor = \relative {
  \autoBeamOff
  g8. 16 | 4 b a8. e16 | 4 a e8 a | 4. c8 b a | g2 8. 16 |
  g4 b a8 gis | a4 4 8 bes | a4. 8 d c | b2 r4 |
  r4 d8. 16 8. 16 r4 | r4 g,8. 16 8. 16 r4 |
  r4 a8. 16 8. 16 r4 | r4 d8. 16 4 r | r d8. 16 8. 16 r4 |
  r4 a8. 16 8. 16 r4 | r4 g8. 16 8 r r4 | r8. d16 e8. 16 b4\fermata
}

bass = \relative {
  \autoBeamOff
  g,8. 16 | 4 4 c8. b16 | a4 4 8 8 | d4. 8 8 fis | g2 g,8. 16 |
  g4 4 c8 b | a4 c c8 cis | d4. 8 8 8 | g2 r4 |
  r4 d8. 16 8. 16 r4 | r g,8. 16 8. 16 r4 |
  r4 a8. 16 8. 16 r4 | r fis'8. a16 d,4 r | r g8. 16 8. 16 r4 |
  r4 a,8. 16 8. 16 r4 | r d8. 16 8 r r4 | r8. g,16 8. 16 4\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  I am dwell -- ing in the sha -- dow __
  Of the migh -- ty King of kings; __
  With His fea -- thers I am cov -- ered __
  And I rest __ be -- neath His wings. __
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  I am dwell -- ing in the sha -- dow
  Of the migh -- ty King of kings;
  With His fea -- thers I am cov -- ered
  And I rest be -- neath His wings.
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  In the sha -- dow of the High -- est
  My de -- fence shall ev -- er be,
  For His eye, that nev -- er sleep -- eth,
  Still is watch -- ing o -- ver me.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  In the sha -- dow of the High -- est
  I am safe from dread a -- larms,
  For be -- neath me and a -- round me
  Are His ev -- er -- last -- ing arms.
  
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  In the sha -- dow of the High -- est,
  There no e -- vil cam be -- fal---
  He's my Hope, my Shield, and Buck -- ler,
  Me De -- liv -- 'rer and my All.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "In " "the " sha "dow " "of " "the " High "est "
  "\nMy " de "fence " "shall " ev "er " "be, "
  "\nFor " "His " "eye, " "that " nev "er " sleep "eth, "
  "\nStill " "is " watch "ing " o "ver " "me. "
  "\nI " "am " dwell "ing " "in " "the " sha "dow " 
  "\nOf " "the " migh "ty " "King " "of " "kings; " 
  "\nWith " "His " fea "thers " "I " "am " cov "ered " 
  "\nAnd " "I " "rest "  be "neath " "His " "wings.\n" 

  \set stanza = "2."
  "\nIn " "the " sha "dow " "of " "the " High "est "
  "\nI " "am " "safe " "from " "dread " a "larms, "
  "\nFor " be "neath " "me " "and " a "round " "me "
  "\nAre " "His " ev er last "ing " "arms. "
  "\nI " "am " dwell "ing " "in " "the " sha "dow " 
  "\nOf " "the " migh "ty " "King " "of " "kings; " 
  "\nWith " "His " fea "thers " "I " "am " cov "ered " 
  "\nAnd " "I " "rest "  be "neath " "His " "wings.\n" 

  \set stanza = "3."
  "\nIn " "the " sha "dow " "of " "the " High "est, "
  "\nThere " "no " e "vil " "cam " be fal-
  "\nHe's " "my " "Hope, " "my " "Shield, " "and " Buck "ler, "
  "\nMe " De liv "'rer " "and " "my " "All. "
  "\nI " "am " dwell "ing " "in " "the " sha "dow " 
  "\nOf " "the " migh "ty " "King " "of " "kings; " 
  "\nWith " "His " fea "thers " "I " "am " cov "ered " 
  "\nAnd " "I " "rest "  be "neath " "His " "wings. " 
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
            \new Voice { \global \repeat unfold \verses \soprano }
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
            \addlyrics \wordsMidi
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
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
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
