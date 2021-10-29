\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come, Thou Everlasting Spirit!"
  subtitle    = "Sankey No. 280"
  subsubtitle = "Sankey 880 No. 676"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup "Italian Melody."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "C. Wesley."
  meter       = \markup\smallCaps "8.7.D."
  piece       = \markup\smallCaps "Florence."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*4
  \mark \markup { \box "C" } s1*4
  \mark \markup { \box "D" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4 4 fis g8[fis]
  e4. 8 fis4 4
  g4 fis8[g] fis[g]  g[a]
  g4 fis g2
  b4. 8 a4 b % B
  g4. 8 a4 4
  b4 a8[b] c4(b8) c
  b4 a g2
  b4. 8 a4 d % C
  d4 cis d d
  d4. 8 c4 b
  a4 4 b2
  b4. 8 a4 d % D
  d4. cis8 d4 4
  d4. 8 c4 b
  a4 4 g2
}

alto = \relative {
  \autoBeamOff
  d'4 4 4 4
  c4. cis8 d4 4
  d4 4 c e
  d4 4 2
  g4. 8 fis4 4 % B
  e4. 8 fis4 4
  g4 fis8[g] e[fis g] a
  g4 fis g2
  g4. 8 fis4 4 % C
  g4 4 fis4 4
  g4. fis8 e[fis] g4
  g4 fis g2
  fis4. g8 4 fis % D
  g4. 8 fis4 4
  g4. fis8 e[fis] g4
  g4(fis8) 8 g2
}

tenor = \relative {
  \autoBeamOff
  b4 b a g
  g4. a8 4 4
  g4 4 4 c
  b4 a b2
  d4. 8 4 dis % B
  e8(b4) cis8 d4 4
  d4. 8 c4(d8) e
  d4. c8 b2
  d4. 8 4 4 % C
  b4 a a a
  g4. 8 4 8[b]
  d4 4 2
  b4. 8 e4 d % D
  e4. a,8 4 4
  g4. 8 4 8[b]
  d4. c8 b2
}

bass = \relative {
  \autoBeamOff
  g4 4 d b
  c4. a8 d4 4
  b4 4 c a
  d4 4 g,2
  g4. b8 d4 b % B
  e4. 8 d4 4
  g4. 8 4. c,8
  d4 4 g2
  g4. 8 d4 b % C
  e4 a, d d
  b4. 8 c4 g'8[b]
  d,4 4 g2
  dis4. e8 cis4 d % D
  a4. 8 d4 4
  b4. 8 c4 g'8[b]
  d,4. 8 g,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Come, Thou ev -- er -- last -- ing spi -- rit,
  Bring to ev -- 'ry thank -- ful mind
  All the Sa -- viour's dy -- ing mer -- it,
  All His suf -- f'rings for man -- kind:
  True Re -- cord -- er of His pas -- sion,
  Now the liv -- ing faith im -- part;
  Now re -- veal His great sal -- va -- tion
  Un -- to ev -- 'ry faith -- ful heart.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Come, Thou wit -- ness of His dy -- ing;
  Come, Re -- mem -- bran -- cer Di -- vine;
  Let us fee Thy power ap -- ply -- ing
  Christ to ev -- 'ry soul, and mine:
  Let us groan Thine in -- ward groan -- ing;
  Look on Him we pierced and grieve;
  All par -- take the grace a -- ton -- ing—
  All the sprin -- kled blood re -- ceive.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Yes, in me, in me He dwell -- eth;
  I in Him, and He in me!
  And my emp -- ty soul He fil -- leth,
  Here and through e -- ter -- ni -- ty.
  Thus I wait for His re -- turn -- ing,
  Sing -- ing all the way to heaevn;
  Such the joy -- ous song of morn -- ing,
  Such the ban -- quet song of even.
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "Come, " "Thou " ev er last "ing " spi "rit, "
  "\nBring " "to " ev "'ry " thank "ful " "mind "
  "\nAll " "the " Sa "viour's " dy "ing " mer "it, "
  "\nAll " "His " suf "f'rings " "for " man "kind: "
  "\nTrue " Re cord "er " "of " "His " pas "sion, "
  "\nNow " "the " liv "ing " "faith " im "part; "
  "\nNow " re "veal " "His " "great " sal va "tion "
  "\nUn" "to " ev "'ry " faith "ful " "heart. "

  \set stanza = "2."
  "\nCome, " "Thou " wit "ness " "of " "His " dy "ing; "
  "\nCome, " Re mem bran "cer " Di "vine; "
  "\nLet " "us " "fee " "Thy " "power " ap ply "ing "
  "\nChrist " "to " ev "'ry " "soul, " "and " "mine: "
  "\nLet " "us " "groan " "Thine " in "ward " groan "ing; "
  "\nLook " "on " "Him " "we " "pierced " "and " "grieve; "
  "\nAll " par "take " "the " "grace " a ton "ing— "
  "\nAll " "the " sprin "kled " "blood " re "ceive. "

  \set stanza = "3."
  "\nYes, " "in " "me, " "in " "me " "He " dwell "eth; "
  "\nI " "in " "Him, " "and " "He " "in " "me! "
  "\nAnd " "my " emp "ty " "soul " "He " fil "leth, "
  "\nHere " "and " "through " e ter ni "ty. "
  "\nThus " "I " "wait " "for " "His " re turn "ing, "
  "\nSing" "ing " "all " "the " "way " "to " "heaevn; "
  "\nSuch " "the " joy "ous " "song " "of " morn "ing, "
  "\nSuch " "the " ban "quet " "song " "of " "even. "
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
