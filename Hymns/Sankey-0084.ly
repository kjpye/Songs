\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "No Other Name."
  subtitle    = "Sankey No. 84"
  subsubtitle = "Sankey 880 No. 134"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "P. P. Bliss."
%  arranger    = "arranger"
%  opus        = "opus"

  meter       = "7.6."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4 s2.*3 s2
  \mark \markup { \box "B" } s4 s2.*3 s2
  \mark \markup { \box "C" } s4 s2.*3 s2
  \mark \markup { \box "D" } s4 s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s2.*16
}

soprano = \relative {
  f'8(a)
  c4. d8 c8. bes16
  a8.(bes16) c4 a
  g4. a8 bes8. a16
  g2 \bar "|" \break \partial 4 f8(a)
  c4. d8 c8. bes16 % B
  a8.(bes16) c4 a
  g8. c16 4 b
  c2 \bar "|" \break \partial 4 c4^\markup\smallCaps Chorus.
  c4. a8 d8. c16 % C
  c8.(bes16) a4 a
  bes4. g8 c8. bes16
  a2 \bar "|" \break \partial 4 f8(a)
  c8. b16 c4 a % D
  d8. cis16 d4 f
  c4. a8 bes8. g16
  f2
}

alto = \relative {
  fis'8 a
  fis4. 8 8. 16
  f4 f f
  e4. f8 g8. f16
  e2 f8(a)
  f4. 8 8. 16 % B
  f4 f f
  e8. 16 d4 f
  e2 4
  f4. 8 8. 16 % C
  f4 f f
  g4. e8 a8. g16
  f2 8(a)
  f8. 16 4 4 % D
  f8. e16 f4 gis
  a4. f8 e8. 16
  f2
}

tenor = \relative {
  a4
  a4. bes8 a8. g16
  f8. g16 a4 c
  c4. 8 8. 16
  c2 a4
  a4. bes8 a8. g16 % B
  f8.(g16) a4 c
  c8. 16 g4 g
  g2 bes4
  a4. f8 bes8. a16 % C
  a8. g16 f4c'
  c4. 8 8. 16
  c2 a4
  a8. g16 a4 c % D
  bes8. 16 4 d
  f4. c8 8. bes16
  a2
}

bass= \relative {
  g4
  g4. 8 8. 16
  f8.(g16) f4 f
  c4. 8 8. 16
  c2 f4
  f4. 8 8. 16 % B
  f8.(g16) f4 f
  g8. 16 4 4
  c,2 c4
  f4. 8 8. 16
  f4 f f
  c4. 8 8. 16
  f2 4
  f8. 16 4 4
  bes8. 16 4 b
  c4. c,8 8. 16
  f2
}

chorus = \lyricmode {
  No oth -- er name is giv -- en,
  No oth -- er way is known;
  'Tis Je -- sus  Christ, the First and Last—
  He saves, and He a -- lone!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  One of -- fer of sal -- va -- tion,
  To all the world made known;
  The on -- ly sure foun -- da -- tion
  Is Christ, the Cor -- ner -- Stone.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  One on -- ly door of hea -- ven
  Stands o -- pen wide to -- day;
  One sac -- ri -- fice is giv -- en—
  'Tis Christ, the Liv -- ing Way.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  My on -- ly song and sto -- ry Is—
  Je -- sus died for me;
  My on -- ly hope for glo -- ry—
  The Cross of Cal -- va -- ry.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "One " of "fer " "of " sal va "tion, "
  "\nTo " "all " "the " "world " "made " "known; "
  "\nThe " on "ly " "sure " foun da "tion "
  "\nIs " "Christ, " "the " Cor ner "Stone. "
  "\nNo " oth "er " "name " "is " giv "en, "
  "\nNo " oth "er " "way " "is " "known; "
  "\n'Tis " Je "sus "  "Christ, " "the " "First " "and " "Last— "
  "\nHe " "saves, " "and " "He " a "lone! "

  \set stanza = "2."
  "\nOne " on "ly " "door " "of " hea "ven "
  "\nStands " o "pen " "wide " to "day; "
  "\nOne " sac ri "fice " "is " giv "en— "
  "\n'Tis " "Christ, " "the " Liv "ing " "Way. "
  "\nNo " oth "er " "name " "is " giv "en, "
  "\nNo " oth "er " "way " "is " "known; "
  "\n'Tis " Je "sus "  "Christ, " "the " "First " "and " "Last— "
  "\nHe " "saves, " "and " "He " a "lone! "

  \set stanza = "3."
  "\nMy " on "ly " "song " "and " sto "ry " "Is— "
  "\nJe" "sus " "died " "for " "me; "
  "\nMy " on "ly " "hope " "for " glo "ry— "
  "\nThe " "Cross " "of " Cal va "ry. "
  "\nNo " oth "er " "name " "is " giv "en, "
  "\nNo " oth "er " "way " "is " "known; "
  "\n'Tis " Je "sus "  "Christ, " "the " "First " "and " "Last— "
  "\nHe " "saves, " "and " "He " a "lone! "
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
  \bookOutputSuffix "midi"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidi
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
    \midi {}
  }
}
