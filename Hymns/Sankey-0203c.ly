\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "All Hail the Power!"
  subtitle    = "Sankey No. 203 (Third tune)"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. Ellor."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Edward Perronet."
  meter       = \markup\smallCaps "c.m."
  piece       = \markup\smallCaps "Diadem."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key bes \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*7
  \mark \markup { \box "B" }    s2.*8
  \mark \markup { \box "C" }    s2.*7 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4
  bes2 c4
  d8.(ees16 f4) bes,
  c4(bes) a
  bes2 a8[g]
  f4. 8 8 8
  d4(f) bes
  g4(ees') ees
  d2 c4 % B
  bes2 8[c]
  d2 4
  d4(c) bes
  c4(bes) a
  bes8.(c16 d4) f
  ees4.( d8[c ees]
  d4. c8[bes d]
  c4. bes8[a c] % C
  bes4) 4 r
  ees4 4 r
  c4 4 r
  d4 4 f
  bes,8.(c16 d4) c
  bes2 a4
  bes2
}

alto = \relative {
  \autoBeamOff
  d'4
  f2 4
  f2 g4
  g4(fis) ees
  d2 f8[ees]
  d4. 8 8 8
  d2 f4
  ees4(g) g
  f2 ees4 % B
  d2 8[ees]
  f2 4
  f2 g4
  g4(f) ees
  d8.(ees16 f4) aes
  g4.(f8[ees g]
  f4. ees8[d f]
  ees4. d8[c ees] % C
  d4) d r
  g4 4 r
  f4 4 r
  f4 4 4
  f2 ees4
  d2 c4
  d2
}

tenor = \relative {
  \autoBeamOff
  bes4
  c4(bes) a
  bes8.(ees16 d4) d
  ees4(d) c
  bes2 4
  bes4. 8 8 8
  bes2 4
  bes2 4
  bes2 a4 % B
  bes2 4
  bes2 4
  d2 4
  ees4(d) c
  bes2 d4
  ees4 bes r
  bes4 4 r
  a4 4 r
  bes4 4 r
  bes4 4 r
  a4 4 r
  bes4 4 d
  d8.(c16 bes4) g
  f2 4
  f2
}

bass = \relative {
  \autoBeamOff
  bes,4
  bes4(d) f
  bes2 g4
  ees(f) f
  bes,2 4
  bes4. 8 8 8
  bes2 d4
  ees2 c4
  f2 4 % B
  bes,2 4
  bes'2 4
  a2 g4
  ees4(f) f
  bes,2 bes'4
  ees,4 4 r
  bes4 4 r
  f'4 4 r % C
  bes4.(a8[g f]
  ees4. d8[c bes]
  f'4. g8[a f]
  bes4) 4 4
  bes2 ees,4
  f2 4
  bes,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  And crown Him, crown Him, crown Him,
  crown Him, and crown Him Lord of all!
}

chorusTenor = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  crown Him,
  crown Him,
  crown Him,
  crown Him
  _ _ _ _ _ _ _ _ _ _ _ _
}

chorusBass = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  crown Him,
  _ _ _ _ _ _
}

wordsOne = \lyricmode {
  \set stanza = "1."
  All hail the pow'r of Je -- su's name!
  Let an -- gels pro -- strate fall;
  Let an -- gels pro -- strate fall;
  Bring forth the roy -- all di -- a -- dem,
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Crown Him, ye mart -- yrs of our God,
  Who from His al -- tar call;
  Who from His al -- tar call;
  Ex -- tol the stem of Jes -- se's rod,
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Ye cho -- sen seed of Is -- rael's race,
  A rem -- nant weak and small,
  A rem -- nant weak and small,
  Hail Him who saves you by His grace,
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Ye Gen -- tile sin -- ners, ne'er for -- get
  The worm -- wood and the gall;
  The worm -- wood and the gall;
  Go, spread your tro -- phies at His feet,
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Let ev -- 'ry kin -- dred, ev -- 'ry tribe,
  On this ter -- rest -- rial ball,
  On this ter -- rest -- rial ball,
  To Him all ma -- jes -- ty a -- scribe,
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Oh that with yon -- der sac -- red throng
  We at His feet may fall;
  We at His feet may fall;
  Join in the ev -- er  -- last -- ing song,
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "All " "hail " "the " "pow'r " "of " Je "su's " "name! "
  "\nLet " an "gels " pro "strate " "fall; "
  "\nLet " an "gels " pro "strate " "fall; "
  "\nBring " "forth " "the " roy "all " di a "dem, "
  "\nAnd " "crown " "Him, " "crown " "Him, " "crown " "Him, "
  "\ncrown " "Him, " "and " "crown " "Him " "Lord " "of " "all! "

  \set stanza = "2."
  "\nCrown " "Him, " "ye " mart "yrs " "of " "our " "God, "
  "\nWho " "from " "His " al "tar " "call; "
  "\nWho " "from " "His " al "tar " "call; "
  "\nEx" "tol " "the " "stem " "of " Jes "se's " "rod, "
  "\nAnd " "crown " "Him, " "crown " "Him, " "crown " "Him, "
  "\ncrown " "Him, " "and " "crown " "Him " "Lord " "of " "all! "

  \set stanza = "3."
  "\nYe " cho "sen " "seed " "of " Is "rael's " "race, "
  "\nA " rem "nant " "weak " "and " "small, "
  "\nA " rem "nant " "weak " "and " "small, "
  "\nHail " "Him " "who " "saves " "you " "by " "His " "grace, "
  "\nAnd " "crown " "Him, " "crown " "Him, " "crown " "Him, "
  "\ncrown " "Him, " "and " "crown " "Him " "Lord " "of " "all! "

  \set stanza = "4."
  "\nYe " Gen "tile " sin "ners, " "ne'er " for "get "
  "\nThe " worm "wood " "and " "the " "gall; "
  "\nThe " worm "wood " "and " "the " "gall; "
  "\nGo, " "spread " "your " tro "phies " "at " "His " "feet, "
  "\nAnd " "crown " "Him, " "crown " "Him, " "crown " "Him, "
  "\ncrown " "Him, " "and " "crown " "Him " "Lord " "of " "all! "

  \set stanza = "5."
  "\nLet " ev "'ry " kin "dred, " ev "'ry " "tribe, "
  "\nOn " "this " ter rest "rial " "ball, "
  "\nOn " "this " ter rest "rial " "ball, "
  "\nTo " "Him " "all " ma jes "ty " a "scribe, "
  "\nAnd " "crown " "Him, " "crown " "Him, " "crown " "Him, "
  "\ncrown " "Him, " "and " "crown " "Him " "Lord " "of " "all! "

  \set stanza = "6."
  "\nOh " "that " "with " yon "der " sac "red " "throng "
  "\nWe " "at " "His " "feet " "may " "fall; "
  "\nWe " "at " "His " "feet " "may " "fall; "
  "\nJoin " "in " "the " ev er last "ing " "song, "
  "\nAnd " "crown " "Him, " "crown " "Him, " "crown " "Him, "
  "\ncrown " "Him, " "and " "crown " "Him " "Lord " "of " "all! "
}
  
wordsMidiTenor = \lyricmode {
  \set stanza = "1."
  "All " "hail " "the " "pow'r " "of " Je "su's " "name! "
  "\nLet " an "gels " pro "strate " "fall; "
  "\nLet " an "gels " pro "strate " "fall; "
  "\nBring " "forth " "the " roy "all " di a "dem, "
  "\nAnd " "crown " "Him, " "crown " "Him, " "crown " "Him, "
  "\ncrown " "Him, " "crown " "Him, " "crown " "Him, "
  "\ncrown " "Him, " "and " "crown " "Him " "Lord " "of " "all! "

  \set stanza = "2."
  "\nCrown " "Him, " "ye " mart "yrs " "of " "our " "God, "
  "\nWho " "from " "His " al "tar " "call; "
  "\nWho " "from " "His " al "tar " "call; "
  "\nEx" "tol " "the " "stem " "of " Jes "se's " "rod, "
  "\nAnd " "crown " "Him, " "crown " "Him, " "crown " "Him, "
  "\ncrown " "Him, " "crown " "Him, " "crown " "Him, "
  "\ncrown " "Him, " "and " "crown " "Him " "Lord " "of " "all! "

  \set stanza = "3."
  "\nYe " cho "sen " "seed " "of " Is "rael's " "race, "
  "\nA " rem "nant " "weak " "and " "small, "
  "\nA " rem "nant " "weak " "and " "small, "
  "\nHail " "Him " "who " "saves " "you " "by " "His " "grace, "
  "\nAnd " "crown " "Him, " "crown " "Him, " "crown " "Him, "
  "\ncrown " "Him, " "crown " "Him, " "crown " "Him, "
  "\ncrown " "Him, " "and " "crown " "Him " "Lord " "of " "all! "

  \set stanza = "4."
  "\nYe " Gen "tile " sin "ners, " "ne'er " for "get "
  "\nThe " worm "wood " "and " "the " "gall; "
  "\nThe " worm "wood " "and " "the " "gall; "
  "\nGo, " "spread " "your " tro "phies " "at " "His " "feet, "
  "\nAnd " "crown " "Him, " "crown " "Him, " "crown " "Him, "
  "\ncrown " "Him, " "crown " "Him, " "crown " "Him, "
  "\ncrown " "Him, " "and " "crown " "Him " "Lord " "of " "all! "

  \set stanza = "5."
  "\nLet " ev "'ry " kin "dred, " ev "'ry " "tribe, "
  "\nOn " "this " ter rest "rial " "ball, "
  "\nOn " "this " ter rest "rial " "ball, "
  "\nTo " "Him " "all " ma jes "ty " a "scribe, "
  "\nAnd " "crown " "Him, " "crown " "Him, " "crown " "Him, "
  "\ncrown " "Him, " "crown " "Him, " "crown " "Him, "
  "\ncrown " "Him, " "and " "crown " "Him " "Lord " "of " "all! "

  \set stanza = "6."
  "\nOh " "that " "with " yon "der " sac "red " "throng "
  "\nWe " "at " "His " "feet " "may " "fall; "
  "\nWe " "at " "His " "feet " "may " "fall; "
  "\nJoin " "in " "the " ev er last "ing " "song, "
  "\nAnd " "crown " "Him, " "crown " "Him, " "crown " "Him, "
  "\ncrown " "Him, " "crown " "Him, " "crown " "Him, "
  "\ncrown " "Him, " "and " "crown " "Him " "Lord " "of " "all! "
}
  
wordsMidiBass = \lyricmode {
  \set stanza = "1."
  "All " "hail " "the " "pow'r " "of " Je "su's " "name! "
  "\nLet " an "gels " pro "strate " "fall; "
  "\nLet " an "gels " pro "strate " "fall; "
  "\nBring " "forth " "the " roy "all " di a "dem, "
  "\nAnd " "crown " "Him, " "crown " "Him, " "crown " "Him, "
  "\ncrown " "Him, " "and " "crown " "Him " "Lord " "of " "all! "

  \set stanza = "2."
  "\nCrown " "Him, " "ye " mart "yrs " "of " "our " "God, "
  "\nWho " "from " "His " al "tar " "call; "
  "\nWho " "from " "His " al "tar " "call; "
  "\nEx" "tol " "the " "stem " "of " Jes "se's " "rod, "
  "\nAnd " "crown " "Him, " "crown " "Him, " "crown " "Him, "
  "\ncrown " "Him, " "and " "crown " "Him " "Lord " "of " "all! "

  \set stanza = "3."
  "\nYe " cho "sen " "seed " "of " Is "rael's " "race, "
  "\nA " rem "nant " "weak " "and " "small, "
  "\nA " rem "nant " "weak " "and " "small, "
  "\nHail " "Him " "who " "saves " "you " "by " "His " "grace, "
  "\nAnd " "crown " "Him, " "crown " "Him, " "crown " "Him, "
  "\ncrown " "Him, " "and " "crown " "Him " "Lord " "of " "all! "

  \set stanza = "4."
  "\nYe " Gen "tile " sin "ners, " "ne'er " for "get "
  "\nThe " worm "wood " "and " "the " "gall; "
  "\nThe " worm "wood " "and " "the " "gall; "
  "\nGo, " "spread " "your " tro "phies " "at " "His " "feet, "
  "\nAnd " "crown " "Him, " "crown " "Him, " "crown " "Him, "
  "\ncrown " "Him, " "and " "crown " "Him " "Lord " "of " "all! "

  \set stanza = "5."
  "\nLet " ev "'ry " kin "dred, " ev "'ry " "tribe, "
  "\nOn " "this " ter rest "rial " "ball, "
  "\nOn " "this " ter rest "rial " "ball, "
  "\nTo " "Him " "all " ma jes "ty " a "scribe, "
  "\nAnd " "crown " "Him, " "crown " "Him, " "crown " "Him, "
  "\ncrown " "Him, " "and " "crown " "Him " "Lord " "of " "all! "

  \set stanza = "6."
  "\nOh " "that " "with " yon "der " sac "red " "throng "
  "\nWe " "at " "His " "feet " "may " "fall; "
  "\nWe " "at " "His " "feet " "may " "fall; "
  "\nJoin " "in " "the " ev er last "ing " "song, "
  "\nAnd " "crown " "Him, " "crown " "Him, " "crown " "Him, "
  "\ncrown " "Him, " "and " "crown " "Him " "Lord " "of " "all! "
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
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor } { \global \bass }
            \new NullVoice = alignerT \tenor
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusTenor
            \new NullVoice \bass
            \addlyrics \chorusBass
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
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass \bass }
            \new NullVoice = alignerT { \tenor \tenor \tenor \tenor \tenor \tenor }
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \chorusTenor \chorusTenor \chorusTenor \chorusTenor \chorusTenor \chorusTenor }
            \new NullVoice { \bass \bass \bass \bass \bass \bass }
            \addlyrics { \chorusBass \chorusBass \chorusBass \chorusBass \chorusBass \chorusBass }
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
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass \bass }
            \new NullVoice = alignerT { \tenor \tenor \tenor \tenor \tenor \tenor }
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \chorusTenor \chorusTenor \chorusTenor \chorusTenor \chorusTenor \chorusTenor }
            \new NullVoice { \bass \bass \bass \bass \bass \bass }
            \addlyrics { \chorusBass \chorusBass \chorusBass \chorusBass \chorusBass \chorusBass }
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

\book {
  \bookOutputSuffix "midi-tenor"
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
            \addlyrics \wordsMidiTenor
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

\book {
  \bookOutputSuffix "midi-bass"
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
            \addlyrics \wordsMidiBass
          >>
        >>
    \midi {}
  }
}
