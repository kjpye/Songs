\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "All Hail the Power!"
  subtitle    = "Sankey No. 203 (First tune.)"
  subsubtitle = "Sankey 880 No. 646"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. Shrubsole."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Edward Perronet."
  meter       = \markup\smallCaps "c.m.p."
  piece       = \markup\smallCaps "Miles' Lane."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*5
  \mark \markup { \box "B" } s1*5 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4
  bes4 4 4 c
  d4 c8[bes] c4 f,
  g4 f8[ees] d4 c
  bes2. f'4
  bes4 4 4 c
  d4 c8[bes] c4 f, % B
  bes2 2
  d2 2
  f2 2
  d4 ees^\markup\italic rit. d c
  bes2.
}

alto = \relative {
  \autoBeamOff
  d'4
  f4 g f f
  f4 8[e] f4 f
  ees4 bes bes a
  bes2. d4
  f4 g f f
  f4 8[e] f4 ees % B
  d2 2
  g2 2
  f2 2
  f4 g f f8[ees]
  d2.
}

tenor = \relative {
  \autoBeamOff
  bes4
  d4 ees d a
  bes4 c8[g] a4 bes
  bes4 8[g] f4 8[ees]
  d2. bes'4
  d4 c bes a
  bes4 c8[g] a4 4 % B
  bes2 2
  g2 2
  bes2 2
  d4 bes bes a
  bes2.
}

bass = \relative {
  \autoBeamOff
  bes,4
  bes4 ees bes f'
  bes4 a8[g] f4 d
  ees4 d8[ees] f4 f,
  bes2. 4
  bes4 ees d f
  bes4 a8[g] f4 4 % B
  bes,2 2
  bes2 2
  d2 2
  bes'4 ees, f f,
  bes2.
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
  And crown Him, crown Him, crown Him, crown Him Lord of all!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Crown Him, ye mart -- yrs of our God,
  Who from His al -- tar call;
  Ex -- tol the stem of Jes -- se's rod,
  And crown Him, crown Him, crown Him, crown Him Lord of all!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Ye cho -- sen seed of Is -- rael's race,
  A rem -- nant weak and small,
  Hail Him who saves you by His grace,
  And crown Him, crown Him, crown Him, crown Him Lord of all!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Ye Gen -- tile sin -- ners, ne'er for -- get
  The worm -- wood and the gall;
  Go, spread your tro -- phies at His feet,
  And crown Him, crown Him, crown Him, crown Him Lord of all!
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Let ev -- 'ry kin -- dred, ev -- 'ry tribe,
  On this ter -- rest -- rial ball,
  To Him all ma -- jes -- ty a -- scribe,
  And crown Him, crown Him, crown Him, crown Him Lord of all!
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Oh that with yon -- der sac -- red throng
  We at His feet may fall;
  Join in the ev -- er  -- last -- ing song,
  And crown Him, crown Him, crown Him, crown Him Lord of all!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "All " "hail " "the " "pow'r " "of " Je "su's " "name! "
  "\nLet " an "gels " pro "strate " "fall; "
  "\nBring " "forth " "the " roy "all " di a "dem, "
  "\nAnd " "crown " "Him, " "crown " "Him, " "crown " "Him, " "crown " "Him " "Lord " "of " "all! "

  \set stanza = "2."
  "\nCrown " "Him, " "ye " mart "yrs " "of " "our " "God, "
  "\nWho " "from " "His " al "tar " "call; "
  "\nEx" "tol " "the " "stem " "of " Jes "se's " "rod, "
  "\nAnd " "crown " "Him, " "crown " "Him, " "crown " "Him, " "crown " "Him " "Lord " "of " "all! "

  \set stanza = "3."
  "\nYe " cho "sen " "seed " "of " Is "rael's " "race, "
  "\nA " rem "nant " "weak " "and " "small, "
  "\nHail " "Him " "who " "saves " "you " "by " "His " "grace, "
  "\nAnd " "crown " "Him, " "crown " "Him, " "crown " "Him, " "crown " "Him " "Lord " "of " "all! "

  \set stanza = "4."
  "\nYe " Gen "tile " sin "ners, " "ne'er " for "get "
  "\nThe " worm "wood " "and " "the " "gall; "
  "\nGo, " "spread " "your " tro "phies " "at " "His " "feet, "
  "\nAnd " "crown " "Him, " "crown " "Him, " "crown " "Him, " "crown " "Him " "Lord " "of " "all! "

  \set stanza = "5."
  "\nLet " ev "'ru " kin "dred, " ev "'ry " "tribe, "
  "\nOn " "this " ter rest "rial " "ball, "
  "\nTo " "Him " "all " ma jes "ty " a "scribe, "
  "\nAnd " "crown " "Him, " "crown " "Him, " "crown " "Him, " "crown " "Him " "Lord " "of " "all! "

  \set stanza = "6."
  "\nOh " "that " "with " yon "der " sac "red " "throng "
  "\nWe " "at " "His " "feet " "may " "fall; "
  "\nJoin " "in " "the " ev er last "ing " "song, "
  "\nAnd " "crown " "Him, " "crown " "Him, " "crown " "Him, " "crown " "Him " "Lord " "of " "all! "
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
          \new Staff = tenor
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
