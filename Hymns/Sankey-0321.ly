\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "How Sweet the Hour"
  subtitle    = "Sankey No. 321"
  subsubtitle = "C. C. No. 99"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup "Scotch Air"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
  meter       = \markup\smallCaps "D.C.M."
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
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
  \repeat unfold 2 {
    \mark \markup { \box "C" } s4^\markup\smallCaps Chorus.  s1*3 s2.
    \mark \markup { \box "D" } s4 s1*3 s2.
  }
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c'4^\markup\italic\bold Moderato.
  f4. 8 4 a
  g4. f8 g4 a
  f4. 8 a4 c
  d2. \bar "|" \break f4
  c4. a8 4 f
  g4. f8 g4 a
  f4. d8 4 c
  f2. \bar "|" \break
  \repeat unfold 2 {
    d'4
    c4. a8 4 f % C
    g4. f8 g4 d'
    c4. a8 4 c
    d2. \bar "|" \break f4
    c4. a8 4 f % D
    g4. f8 g4 a
    f4. d8 4 c
    f2. \bar "|" \break
  }
}

alto = \relative {
  \autoBeamOff
  \once\partCombineApart c'4
  c4. 8 4 f
  e4. d8 e4 4
  \once\partCombineApart f4. 8 4 4
  f2. 4
  f4. 8 4 \once\partCombineApart 4 % B
  e4. d8 e4 c
  a4. b8 4 4
  a2.
  \repeat unfold 2 {
    f'4
    f4. 8 4 \once\partCombineApart 4 % C
    e4. d8 e4 4
    f4. 8 4 4
    f2. 4
    f4. 8 4 \once\partCombineApart 4 % D
    e4. d8 e4 c
    a4. bes8 4 4
    a2.
  }
}

tenor = \relative {
  \autoBeamOff
  a4
  a4. 8 4 c
  c4. 8 4 bes
  a4. 8 c4 a
  bes2. 4
  a4. c8 4 a % B
  c4. 8 4 e,
  f4. 8 4 e
  f2.
  \repeat unfold 2 {
    bes4
    a4. c8 4 a % C
    c4. 8 4 bes
    a4. c8 4 a
    bes2. 4
    a4. c8 4 a % D
    c4. 8 4 e,
    f4. 8 f4 e
    f2.
  }
}

bass = \relative {
  \autoBeamOff
  f4
  f4. 8 4 4
  c4. 8 4 4
  f4. 8 4 4
  bes,2. d4
  f4. 8 4 4 % B
  c4. 8 4 4
  d4. bes8 4 c
  f,2.
  \repeat unfold 2 {
    f'4
    f4. 8 4 4 % C
    c4. 8 4 4
    f4. 8 4 4
    bes,2. d4
    f4. 8 4 4 % D
    c4. 8 4 4
    d4. bes8 4 c
    f,2.
  }
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  We all shall meet in heav'n at last,
  We all shall meet in heav'n;
  Thro' faith in Je -- sus' pre -- cious blood,
  We all shall meet in heav'n.
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  How sweet the hour of praise and prayer,
  When our de -- vo -- tions blend,
  And on the wings of faith Di -- vine
  Our songs of joy as -- cend!
  'Tis then we hear in tones more clear
  The gra -- cious pro -- mise giv'n,
  That, though we part from firends on earth,
  We all shall meet in heav'n.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Hiw sweet the tie of hal -- low'd love
  That binds our hearts in one;
  When ga -- ther'd in the bless -- ed name
  Of Christ, the Fa -- ther's Son!
  And though the part -- ing soon may come,
  Yet in His word is giv'n
  The bless -- ed hope that by -- and -- by
  We all shall meet in heav'n.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Yes, soon our worn and wea -- ry feet
  Will reach the gold -- en strand,
  Where those we love our com -- ing wait
  In yon -- der sum -- mer -- land;
  A few more days, a few more years,
  By storm and tem -- pest driv'n,
  With songs and ev -- er -- last -- ing joy
  We all shall meet in heav'n.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "How " "sweet " "the " "hour " "of " "praise " "and " "prayer, "
  "\nWhen " "our " de vo "tions " "blend, "
  "\nAnd " "on " "the " "wings " "of " "faith " Di "vine "
  "\nOur " "songs " "of " "joy " as "cend! "
  "\n'Tis " "then " "we " "hear " "in " "tones " "more " "clear "
  "\nThe " gra "cious " pro "mise " "giv'n, "
  "\nThat, " "though " "we " "part " "from " "firends " "on " "earth, "
  "\nWe " "all " "shall " "meet " "in " "heav'n. "
  "\nWe " "all " "shall " "meet " "in " "heav'n " "at " "last, "
  "\nWe " "all " "shall " "meet " "in " "heav'n; "
  "\nThro' " "faith " "in " Je "sus' " pre "cious " "blood, "
  "\nWe " "all " "shall " "meet " "in " "heav'n. "

  \set stanza = "2."
  "\nHiw " "sweet " "the " "tie " "of " hal "low'd " "love "
  "\nThat " "binds " "our " "hearts " "in " "one; "
  "\nWhen " ga "ther'd " "in " "the " bless "ed " "name "
  "\nOf " "Christ, " "the " Fa "ther's " "Son! "
  "\nAnd " "though " "the " part "ing " "soon " "may " "come, "
  "\nYet " "in " "His " "word " "is " "giv'n "
  "\nThe " bless "ed " "hope " "that " by and "by "
  "\nWe " "all " "shall " "meet " "in " "heav'n. "
  "\nWe " "all " "shall " "meet " "in " "heav'n " "at " "last, "
  "\nWe " "all " "shall " "meet " "in " "heav'n; "
  "\nThro' " "faith " "in " Je "sus' " pre "cious " "blood, "
  "\nWe " "all " "shall " "meet " "in " "heav'n. "

  \set stanza = "3."
  "\nYes, " "soon " "our " "worn " "and " wea "ry " "feet "
  "\nWill " "reach " "the " gold "en " "strand, "
  "\nWhere " "those " "we " "love " "our " com "ing " "wait "
  "\nIn " yon "der " sum mer "land; "
  "\nA " "few " "more " "days, " "a " "few " "more " "years, "
  "\nBy " "storm " "and " tem "pest " "driv'n, "
  "\nWith " "songs " "and " ev er last "ing " "joy "
  "\nWe " "all " "shall " "meet " "in " "heav'n. "
  "\nWe " "all " "shall " "meet " "in " "heav'n " "at " "last, "
  "\nWe " "all " "shall " "meet " "in " "heav'n; "
  "\nThro' " "faith " "in " Je "sus' " pre "cious " "blood, "
  "\nWe " "all " "shall " "meet " "in " "heav'n. "
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
