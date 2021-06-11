\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Star of Promise."
  subtitle    = "Sankey No. 99"
  subsubtitle = "C.C. No. 175"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Wm. J. Kirkpatrick."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "S. Martin."
  meter       = "7.6."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 6/8
  \tempo 4=120
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s2.*4
  \mark \markup { \box "B" } s2.*4
  \mark \markup { \box "C" } s2.*4
  \mark \markup { \box "D" } s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
}

soprano = \relative {
  g'8 a g c4 e,8
  g4. f4 r8
  f8 g f d4 a'8
  a4.(g4) r8
  g8 a g e'4 b8 % B
  d4. c4 r8
  c8 b a d4 fis,8
  g4.~4 r8 \bar "||"
  b4^\markup\smallCaps Chorus. a8 g \once\partCombineApart r4 % C
  d'4 c8 b \once\partCombineApart r4
  g8. a16 b8 c8. b16 c8
  d4 g,8 e'4 r8
  e4 d8 b \once\partCombineApart r4 % D
  d4 c8 a \once\partCombineApart r4
  g8. c16 e8 4 d8
  c4.~4 \oneVoice r8
}

alto = \relative {
  e'8 8 8 4 c8
  d4. 4 r8
  d8 8 8 b4 f'8
  dis4.(e4) r8
  e8 8 8 g4 8 % B
  g4. a4 r8
  fis8 8 8 4 d8
  d4.~4 r8
  f4 8 8 \teeny a-. \teeny g-. % C
  f4 8 8 \teeny a-. \teeny g-.
  e8. 16 8 8. 16 8
  f4 8 g4 r8
  gis4 8 8  \teeny b8-. \teeny a-. % D
  f4 8 8 \teeny b-. \teeny a-.
  e8. 16 g8 4 f8
  << {\voiceOne e4.~4 r8} \new Voice {\teeny {\voiceTwo e8 g f} s4.} >>
}

tenor = \relative {
  c'8 8 8 g4 8
  b4. 4 r8
  b8 8 8 g4 b8
  c4.~4 r8
  c8 8 8 4 g8 % B
  g4(c8) c4 r8
  d8 8 c a4 c8
  b4.~4 r8
  d4 c8 b r4 % C
  b4 c8 d r4
  c8. g16 8 8. 16 8
  b4 8 c4 r8
  b4 8 8 r4 % D
  a4 8 c r4
  c8. 16 8 b4 8
  << {\voiceTwo g4.~4 r8} \new Voice {\teeny {\voiceOne g8 b a} s4.} >>
}

bass= \relative {
  c8 8 8 4 8
  g'4. 4 r8
  g,8 8 8 4 8
  c4.~4 r8
  c8 8 8 4 d8 % B
  e4. f4 r8
  d8 8 8 4 8
  g,4.~4 r8
  g'4 8 8 r4 % C
  g4 8 8 r4
  c,8. 16 8 8. 16 8
  g'4 8 c4 r8
  e,4 8 8 e4 % D
  f4 8 8 r4
  g8. 16 8 4 8
  c,4.~4 \oneVoice r8
}

chorus = \lyricmode {
  Smile on me, smile on me,
  Beau -- ti -- ful, beau -- ti -- ful morn -- ing star;
  Smile on me, smile on me,
  Beau -- ti -- ful  morn -- ing star. __
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Beau -- ti -- ful star of prom -- ise,
  Beau -- ti -- ful morn -- ing star;
  Beam -- ing with joy and glad -- ness
  O -- ver the world a -- far.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Beau -- ti -- ful star of prom -- ise,
  Bea -- con of hope and rest;
  Light -- ing the couch of sor -- row,
  Sooth -- ing the wea -- ry breast.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Beau -- ti -- ful star of prom -- ise,
  Shin -- ing when waves are dark;
  In -- to its long -- sought ha -- ven
  Guid -- ing the lone -- ly bark.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Beau -- ti -- ful star of prom -- ise,
  Star of e -- ter -- nal love;
  Thou wilt con -- duct me safe -- ly
  Home to the realms a -- bove.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Beau" ti "ful " "star " "of " prom "ise, "
  "\nBeau" ti "ful " morn "ing " "star; "
  "\nBeam" "ing " "with " "joy " "and " glad "ness "
  "\nO" "ver " "the " "world " a "far. "
  "\nSmile " "on " "me, " "smile " "on " "me, "
  "\nBeau" ti "ful, " beau ti "ful " morn "ing " "star; "
  "\nSmile " "on " "me, " "smile " "on " "me, "
  "\nBeau" ti "ful "  morn "ing " "star. " 

  \set stanza = "2."
  "\nBeau" ti "ful " "star " "of " prom "ise, "
  "\nBea" "con " "of " "hope " "and " "rest; "
  "\nLight" "ing " "the " "couch " "of " sor "row, "
  "\nSooth" "ing " "the " wea "ry " "breast. "
  "\nSmile " "on " "me, " "smile " "on " "me, "
  "\nBeau" ti "ful, " beau ti "ful " morn "ing " "star; "
  "\nSmile " "on " "me, " "smile " "on " "me, "
  "\nBeau" ti "ful "  morn "ing " "star. " 

  \set stanza = "3."
  "\nBeau" ti "ful " "star " "of " prom "ise, "
  "\nShin" "ing " "when " "waves " "are " "dark; "
  "\nIn" "to " "its " long "sought " ha "ven "
  "\nGuid" "ing " "the " lone "ly " "bark. "
  "\nSmile " "on " "me, " "smile " "on " "me, "
  "\nBeau" ti "ful, " beau ti "ful " morn "ing " "star; "
  "\nSmile " "on " "me, " "smile " "on " "me, "
  "\nBeau" ti "ful "  morn "ing " "star. " 

  \set stanza = "4."
  "\nBeau" ti "ful " "star " "of " prom "ise, "
  "\nStar " "of " e ter "nal " "love; "
  "\nThou " "wilt " con "duct " "me " safe "ly "
  "\nHome " "to " "the " "realms " a "bove. "
  "\nSmile " "on " "me, " "smile " "on " "me, "
  "\nBeau" ti "ful, " beau ti "ful " morn "ing " "star; "
  "\nSmile " "on " "me, " "smile " "on " "me, "
  "\nBeau" ti "ful "  morn "ing " "star. " 
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
%            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
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
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
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
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
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
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto }
          >> 
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass }
          >>
       >>
      >>
    >>
    \midi {}
  }
}
