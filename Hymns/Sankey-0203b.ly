\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "All Hail the Power!"
  subtitle    = "Sankey No. 203 (Second tune)"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Oliver Holden."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Edward Perronet."
  meter       = \markup\smallCaps "c.m.p."
  piece       = \markup\smallCaps "Coronation."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 18)

global = {
  \key g \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*5 s2.
  \mark \markup { \box "B" } s4 s1*7 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'4
  g4 4 b b
  a4 g a b
  a4 g b a
  g2. \bar "|" \break a4
  b4 a g b
  d8[c] b[a] b4 d
  d2 2 % B
  e2 d4(cis)
  d2. \bar "|" \break b4
  d4 b g b
  a8[g] a[b] a4 g
  d'2 c
  b4.(c8 a4) a
  g2.\fermata
}

alto = \relative {
  \autoBeamOff
  b4
  b4 4 d d
  d4 4 4 4
  d4 b d c
  b2. d4
  g4 d b g'
  b8[a] g[fis] g4 a
  g2 a % B
  g2 fis4(e)
  fis2. g4
  g4 4 d g
  fis8[e] fis[g] fis4 g
  g2 e
  d2. 4
  d2.\fermata
}

tenor = \relative {
  \autoBeamOff
  g4
  g4 4 4 4
  fis4 e fis g
  fis4 g g fis
  g2. a4
  b4 a g b
  d8[c] b[a] b4 a
  b2 a % B
  b2 a
  a2. g4
  b4 d d d
  d4 4 4 b
  g2 2
  g4.(a8 fis a) c4
  b2.\fermata
}

bass = \relative {
  \autoBeamOff
  g,4
  g4 4 g' g
  fis4 4 4 4
  fis4 g fis fis
  g,2. d'4
  g4 d b g'
  b8[a] g[fis] g4 fis
  g2 fis % B
  e2 a
  d,2. g4
  g4 4 b g
  d4 4 4 e
  b2 c
  d2. 4
  g,2.\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  All hail the pow'r of Je -- su's name!
  Let an -- gels pro -- strate fall;
  Bring forth the roy -- all di -- a -- dem,
  And crown Him Lord of all!
  Bring forth the roy -- all di -- a -- dem,
  And crown Him Lord of all!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Crown Him, ye mart -- yrs of our God,
  Who from His al -- tar call;
  Ex -- tol the stem of Jes -- se's rod,
  And crown Him Lord of all!
  Ex -- tol the stem of Jes -- se's rod,
  And crown Him Lord of all!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Ye cho -- sen seed of Is -- rael's race,
  A rem -- nant weak and small,
  Hail Him who saves you by His grace,
  And crown Him Lord of all!
  Hail Him who saves you by His grace,
  And crown Him Lord of all!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Ye Gen -- tile sin -- ners, ne'er for -- get
  The worm -- wood and the gall;
  Go, spread your tro -- phies at His feet,
  And crown Him Lord of all!
  Go, spread your tro -- phies at His feet,
  And crown Him Lord of all!
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Let ev -- 'ry kin -- dred, ev -- 'ry tribe,
  On this ter -- rest -- rial ball,
  To Him all ma -- jes -- ty a -- scribe,
  And crown Him Lord of all!
  To Him all ma -- jes -- ty a -- scribe,
  And crown Him Lord of all!
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Oh that with yon -- der sac -- red throng
  We at His feet may fall;
  Join in the ev -- er  -- last -- ing song,
  And crown Him Lord of all!
  Join in the ev -- er  -- last -- ing song,
  And crown Him Lord of all!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "All " "hail " "the " "pow'r " "of " Je "su's " "name! "
  "\nLet " an "gels " pro "strate " "fall; "
  "\nBring " "forth " "the " roy "all " di a "dem, "
  "\nAnd " "crown " "Him " "Lord " "of " "all! "
  "\nBring " "forth " "the " roy "all " di a "dem, "
  "\nAnd " "crown " "Him " "Lord " "of " "all! "

  \set stanza = "2."
  "\nCrown " "Him, " "ye " mart "yrs " "of " "our " "God, "
  "\nWho " "from " "His " al "tar " "call; "
  "\nEx" "tol " "the " "stem " "of " Jes "se's " "rod, "
  "\nAnd " "crown " "Him " "Lord " "of " "all! "
  "\nEx" "tol " "the " "stem " "of " Jes "se's " "rod, "
  "\nAnd " "crown " "Him " "Lord " "of " "all! "

  \set stanza = "3."
  "\nYe " cho "sen " "seed " "of " Is "rael's " "race, "
  "\nA " rem "nant " "weak " "and " "small, "
  "\nHail " "Him " "who " "saves " "you " "by " "His " "grace, "
  "\nAnd " "crown " "Him " "Lord " "of " "all! "
  "\nHail " "Him " "who " "saves " "you " "by " "His " "grace, "
  "\nAnd " "crown " "Him " "Lord " "of " "all! "

  \set stanza = "4."
  "\nYe " Gen "tile " sin "ners, " "ne'er " for "get "
  "\nThe " worm "wood " "and " "the " "gall; "
  "\nGo, " "spread " "your " tro "phies " "at " "His " "feet, "
  "\nAnd " "crown " "Him " "Lord " "of " "all! "
  "\nGo, " "spread " "your " tro "phies " "at " "His " "feet, "
  "\nAnd " "crown " "Him " "Lord " "of " "all! "

  \set stanza = "5."
  "\nLet " ev "'ry " kin "dred, " ev "'ry " "tribe, "
  "\nOn " "this " ter rest "rial " "ball, "
  "\nTo " "Him " "all " ma jes "ty " a "scribe, "
  "\nAnd " "crown " "Him " "Lord " "of " "all! "
  "\nTo " "Him " "all " ma jes "ty " a "scribe, "
  "\nAnd " "crown " "Him " "Lord " "of " "all! "

  \set stanza = "6."
  "\nOh " "that " "with " yon "der " sac "red " "throng "
  "\nWe " "at " "His " "feet " "may " "fall; "
  "\nJoin " "in " "the " ev er last "ing " "song, "
  "\nAnd " "crown " "Him " "Lord " "of " "all! "
  "\nJoin " "in " "the " ev er last "ing " "song, "
  "\nAnd " "crown " "Him " "Lord " "of " "all! "
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
            \new Lyrics \lyricsto "aligner"   \wordsFive
            \new Lyrics \lyricsto "aligner"   \wordsSix
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
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass \bass }
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
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass \bass }
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
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto }
          >>
                                % Tenor staff
          \new Staff= tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor \tenor \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
