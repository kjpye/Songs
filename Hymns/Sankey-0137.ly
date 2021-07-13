\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Flowing, ever flowing!"
  subtitle    = "Sankey No. 137"
  subsubtitle = "Sankey 880 No. 495"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "R. Lowry."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "E. F. C. Husted."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s2.*4
  \mark \markup { \box "B" } s2.*4
  \mark \markup { \box "C" } s2.*4
  \mark \markup { \box "D" } s2.*8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  \autoBeamOff
  f'4 8 bes4 aes8
  g4 8 c4.
  bes4 a8 g4 a8
  g4. f \break
  f4 8 bes4 a8 % B
  g4 8 c4.
  bes4 a8 d4 c8
  c4. bes \break 
  d4 8 8[c] bes % C
  c4 8 4.
  c4 8 8[bes] a
  bes4 8 4. \bar "||" \break
  d4.^\markup\smallCaps Refrain. bes % D
  f4. d
  f4 bes8 a4 bes8
  c4. g
  c4. d
  ees4. c
  bes4 8 d4 c8
  bes4.~4.
}

alto = \relative {
  \autoBeamOff
  d'4 8 4 f8
  es4 8 g4.
  f4 8 ees4 8
  ees4. d
  d4 8 4 f8 % B
  ees4 8 g4.
  f4 8 4 ees8
  ees4. d
  f4 8 8[ees] d % C
  f4 8 4.
  ees4 8 8[d] ees
  d4 8 4.
  f4. d
  d4. bes
  d4 f8 ees4 d8
  ees4. 4.
  ees4. f
  g4. ees
  d4 8 f4 ees8
  d4.~4.
}

tenor = \relative {
  \autoBeamOff
  bes4 8 f4 bes8
  bes4 8 ees4.
  d4 c8 bes4 c8
  bes4. 4.
  bes4 8 f4 bes8 % B
  bes4 8 ees4.
  d4 c8 bes4 a8
  bes4. 4.
  bes4 8 4 8 % C
  a4 8 4.
  a4 8 8[bes] c
  bes4 8 4.
  bes4. f % D
  bes4. f
  bes4 8 f4 8
  g4. bes
  g4. b
  c4. g
  f4 8 bes4 8
  bes4.~4.
}

bass= \relative {
  \autoBeamOff
  bes,4 8 4 d8
  ees4 8 c4.
  f4 8 4 8
  bes,4. 4.
  bes4 8 4 d8 % B
  ees4 8 c4.
  f4 8 4 8
  bes,4. 4.
  bes'4 8 4 8 % C
  f4 8 4.
  f4 8 4 8
  bes,4 8 4.
  bes4. 4. % D
  bes4. 4.
  bes4 d8 c4 bes8
  ees4. 4.
  ees4. d
  c4. ees
  f4 8 4 8
  bes,4.~4.
}

chorus = \lyricmode {
  Flow -- ing ev -- er!
  flow -- ing, ev -- er flow -- ing!
  Flow -- ing ev -- er!
  Flow -- ing now for thee!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Lo! a foun -- tain full and free,
  Flow -- ing, ev -- er flow -- ing!
  Faint -- ing heart, it is for thee—
  Flow -- ing, ev -- er flow -- ing!
  Ev -- er spark -- ling, nev -- er still,
  Taste its sweet -- ness, all who will.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  List the mur -- mur that it speaks,
  Flow -- ing, ev -- er flow -- ing!
  On the soul in song it breaks,
  Flow -- ing, ev -- er flow -- ing!
  Sing -- ing wea -- ry souls to ease,—
  Mu -- sic of all mel -- o -- dies.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Bles -- sed fount! the pur -- est known,
  Flow -- ing, ev -- er flow -- ing!
  Stream of life from out God's throne,
  Flow -- ing, ev -- er flow -- ing!
  Sa -- cred blood for sin -- ners spilt,—
  This can cleanse a -- way thy guilt.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Lo! " "a " foun "tain " "full " "and " "free, "
  "\nFlow" "ing, " ev "er " flow "ing! "
  "\nFaint" "ing " "heart, " "it " "is " "for " "thee— "
  "\nFlow" "ing, " ev "er " flow "ing! "
  "\nEv" "er " spark "ling, " nev "er " "still, "
  "\nTaste " "its " sweet "ness, " "all " "who " "will. "
  "\nFlow" "ing " ev "er! "
  "\nflow" "ing, " ev "er " flow "ing! "
  "\nFlow" "ing " ev "er! "
  "\nFlow" "ing " "now " "for " "thee! "

  \set stanza = "2."
  "\nList " "the " mur "mur " "that " "it " "speaks, "
  "\nFlow" "ing, " ev "er " flow "ing! "
  "\nOn " "the " "soul " "in " "song " "it " "breaks, "
  "\nFlow" "ing, " ev "er " flow "ing! "
  "\nSing" "ing " wea "ry " "souls " "to " "ease,— "
  "\nMu" "sic " "of " "all " mel o "dies. "
  "\nFlow" "ing " ev "er! "
  "\nflow" "ing, " ev "er " flow "ing! "
  "\nFlow" "ing " ev "er! "
  "\nFlow" "ing " "now " "for " "thee! "

  \set stanza = "3."
  "\nBles" "sed " "fount! " "the " pur "est " "known, "
  "\nFlow" "ing, " ev "er " flow "ing! "
  "\nStream " "of " "life " "from " "out " "God's " "throne, "
  "\nFlow" "ing, " ev "er " flow "ing! "
  "\nSa" "cred " "blood " "for " sin "ners " "spilt,— "
  "\nThis " "can " "cleanse " a "way " "thy " "guilt. "
  "\nFlow" "ing " ev "er! "
  "\nflow" "ing, " ev "er " flow "ing! "
  "\nFlow" "ing " ev "er! "
  "\nFlow" "ing " "now " "for " "thee! "
}
  
nl = { \bar "||" \break }

\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
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
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
          >>
        >>
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
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
          >>
        >>
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
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
