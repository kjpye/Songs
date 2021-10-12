\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "In Thy Name, O Lord, Assembling."
  subtitle    = "Sankey No. 255"
  subsubtitle = "Sankey 880 No. 688"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Henry Smart."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "T. Kelly."
  meter       = \markup\smallCaps "8.7.8.7.4.7."
  piece       = \markup\smallCaps "Regent Square."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 4/4
  \partial 2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2 s1*3
  \mark \markup { \box "B" }    s1*4
  \mark \markup { \box "C" }    s1*4 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4 e
  c'4 g  e'4. d8
  c4 g a a
  g4 c g f
  e2 g4 e % B
  c'4 g e'4. d8
  c4 b c b
  a4 g8[a] b4 a
  g2 d'4. 8 % C
  b4 g e'4. d8
  c4 a f' e
  d4 c c b
  c2
}

alto = \relative {
  \autoBeamOff
  e'4 c
  g'4 e g4. 8
  g4 g c, c
  c4 4 d b
  c2 e4 c % B
  g'4 8[f] e4. f8
  e4 4 4 4
  e4 4 g fis
  g2 4. 8 % C
  g4 4 4. e8
  f4 4 a g
  f4 e8[f] g4. f8
  r2
}

tenor = \relative {
  \autoBeamOff
  c'4 g
  g4 c c4. b8
  c4 4 a c
  g4 a g g
  g2 c4 4 % B
  g4 4 c4. b8
  a4 gis a gis
  e'4 d8[c] d4 c
  b2 4. 8 % C
  d4 b c4. bes8
  a4 c d g,
  a8[b] c4 d d
  c2
}

bass = \relative {
  \autoBeamOff
  c4 4
  e4 c g'4. f8
  e4 4 f f
  e4 a, b g
  c2 c'4 g % B
  e4 8[d] c4. d8
  e4 4 b e
  c4 a d d
  g2 4. 8 % C
  g4 4 c,4. 8
  f4 4 d e
  f8[g] a4 g g,
  c2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  In Thy name, O lord, as -- sem -- bling,
  We Thy peo -- ple now draw near;
  Teach us to re -- joice with trem -- bling,
  Speak, and let Thy ser -- vants hear,
  Hear with meek -- ness,
  Hear with meek -- ness,
  Hear Thy word with god -- ly fear.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  While our days on earth are length -- ened,
  May we give them, Lord, to Thee;
  Cheered by hope, and dai -- ly strength -- ened.
  May we run, nor wea -- ry be,
  Till Thy glo -- ry,
  Till Thy glo -- ry
  With -- out clouds in heaven we see.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Then in wor -- ship pur -- er, sweet -- er,
  Thee Thy peo -- ple shall a -- dore,
  Tast -- ing of en -- joy -- ment great -- er
  Far than thought con -- ceived be --fore;
  Full en -- joy -- ment,
  Full en -- joy -- ment—
  Full, un -- mixed, and ev -- er -- more.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "In " "Thy " "name, " "O " "lord, " as sem "bling, "
  "\nWe " "Thy " peo "ple " "now " "draw " "near; "
  "\nTeach " "us " "to " re "joice " "with " trem "bling, "
  "\nSpeak, " "and " "let " "Thy " ser "vants " "hear, "
  "\nHear " "with " meek "ness, "
  "\nHear " "with " meek "ness, "
  "\nHear " "Thy " "word " "with " god "ly " "fear. "

  \set stanza = "2."
  "\nWhile " "our " "days " "on " "earth " "are " length "ened, "
  "\nMay " "we " "give " "them, " "Lord, " "to " "Thee; "
  "\nCheered " "by " "hope, " "and " dai "ly " strength "ened. "
  "\nMay " "we " "run, " "nor " wea "ry " "be, "
  "\nTill " "Thy " glo "ry, "
  "\nTill " "Thy " glo "ry "
  "\nWith" "out " "clouds " "in " "heaven " "we " "see. "

  \set stanza = "3."
  "\nThen " "in " wor "ship " pur "er, " sweet "er, "
  "\nThee " "Thy " peo "ple " "shall " a "dore, "
  "\nTast" "ing " "of " en joy "ment " great "er "
  "\nFar " "than " "thought " con "ceived " be"fore; "
  "\nFull " en joy "ment, "
  "\nFull " en joy "ment— "
  "\nFull, " un "mixed, " "and " ev er "more. "
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
    system-system-spacing.basic-distance = #22
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
