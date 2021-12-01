\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "What a Friend we have in Jesus!"
  subtitle    = "Sankey No. 319"
  subsubtitle = "Sankey 880 No. 117"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "C. C. Converse."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. Scriven."
  meter       = \markup\smallCaps "8.7.D."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*2 s2
  \mark \markup { \box "B" } s2 s1*3
  \mark \markup { \box "C" }    s1*3
  \mark \markup { \box "D" }    s1*3 s2
  \mark \markup { \box "E" } s2 s1*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

br = {
  % \break
}
nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''4. 8 d c a f
  f2 d4 r
  c4. f8 \bar "|" \br a8 f c' a
  g2. r4 % B
  c4. 8 d c a f
  f2 d4 r
  c4. f8 a g f e % C
  f2. r4
  g4. fis8 g a b g
  a2 c4 r % D
  d4. 8 c a bes a
  g2. r4
  c4. 8 \bar "|" \br d8 c a f
  f2 d4 r % E
  c4. f8 a g f e
  f2. r4
}

alto = \relative {
  \autoBeamOff
  f'4. 8 8 8 8 c
  d2 bes4 r
  \once\partCombineApart c4. 8 8 8 f f
  e2. r4 % B
  f4. 8 8 8 8 c
  d2 bes4 r
  a4. c8 f c c c % C
  c2. r4
  e4. dis8 e f g e
  f2 4 r % D
  f4. 8 8 8 g f
  e2. r4
  f4. 8 8 8 8 c
  d2 bes4 r % E
  a4. c8 f c c c
  c2. r4
}

tenor = \relative {
  \autoBeamOff
  a4. 8 bes a c a
  bes2 f4 r
  a4. 8 8 8 8 c
  c2. r4 % B
  a4. 8 bes a c a
  bes2 f4 r
  f4. a8 c bes a g % C
  a2. r4
  c4. 8 8 8 8 8
  c2 a4 r % D
  bes4. 8 c c c c
  c2. r4
  a4. 8 bes a c a
  bes2 f4 r % E
  f4. a8 c bes a g
  a2. r4
}

bass = \relative {
  \autoBeamOff
  f4. 8 8 8 8 8
  bes,2 4 r
  f'4. 8 8 8 8 8
  c2. r4 % B
  f4. 8 8 8 8 8
  bes,2 4 r
  c4. 8 8 8 8 8 % C
  f2. r4
  c4. 8 8 8 8 8
  f2 4 r % D
  \once\partCombineApart bes4. \once\partCombineApart 8 a f e f
  c2. r4
  f4. 8 8 8 8 8
  bes,2 4 r % E
  c4. 8 8 8 8 8
  f2. r4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  What a Friend we have in Je -- sus,
  All our sins and griefs to bear!
  What a pri -- vi -- lege to car -- ry
  Ev -- ry -- thing to God in prayer!
  Oh, what peace we oft -- en for -- feit,
  Oh, what need -- less pain we bear—
  All be -- cause we do not car -- ry
  Ev -- 'ry -- thing to God in prayer!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Have we tri -- als and temp -- ta -- tions?
  Is there trou -- ble an -- y -- where?
  We should nev -- er be dis -- cou -- raged:
  Take it to the Lord in prayer.
  Can we find a friend so faith -- ful,
  Who will all our sor -- row share?
  Je -- sus knows our ev -- 'ry weak -- ness—
  Take it to the Lord in prayer!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Are we weak and hea -- vy la -- den,
  cum -- bered with a load of care?
  Pre -- cious Sa -- viour, still out re -- fuge—
  Take it to the Lord in prayer.
  Do thy friends des -- pise, for -- sake thee?
  Take it to the Lord in prayer,
  In His arms He'll take and shield thee,
  Thou wilt find a sol -- ace there.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "What " "a " "Friend " "we " "have " "in " Je "sus, "
  "\nAll " "our " "sins " "and " "griefs " "to " "bear! "
  "\nWhat " "a " pri vi "lege " "to " car "ry "
  "\nEv" ry "thing " "to " "God " "in " "prayer! "
  "\nOh, " "what " "peace " "we " oft "en " for "feit, "
  "\nOh, " "what " need "less " "pain " "we " "bear— "
  "\nAll " be "cause " "we " "do " "not " car "ry "
  "\nEv" 'ry "thing " "to " "God " "in " "prayer! "

  \set stanza = "2."
  "\nHave " "we " tri "als " "and " temp ta "tions? "
  "\nIs " "there " trou "ble " an y "where? "
  "\nWe " "should " nev "er " "be " dis cou "raged: "
  "\nTake " "it " "to " "the " "Lord " "in " "prayer. "
  "\nCan " "we " "find " "a " "friend " "so " faith "ful, "
  "\nWho " "will " "all " "our " sor "row " "share? "
  "\nJe" "sus " "knows " "our " ev "'ry " weak "ness— "
  "\nTake " "it " "to " "the " "Lord " "in " "prayer! "

  \set stanza = "3."
  "\nAre " "we " "weak " "and " hea "vy " la "den, "
  "\ncum" "bered " "with " "a " "load " "of " "care? "
  "\nPre" "cious " Sa "viour, " "still " "out " re "fuge— "
  "\nTake " "it " "to " "the " "Lord " "in " "prayer. "
  "\nDo " "thy " "friends " des "pise, " for "sake " "thee? "
  "\nTake " "it " "to " "the " "Lord " "in " "prayer, "
  "\nIn " "His " "arms " "He'll " "take " "and " "shield " "thee, "
  "\nThou " "wilt " "find " "a " sol "ace " "there. "
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
    page-breaking = #ly:one-page-breaking
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
