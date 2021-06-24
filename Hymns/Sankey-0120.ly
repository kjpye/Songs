\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "It was for me."
  subtitle    = "Sankey No. 120"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Janet L. harding."
%  arranger    = "arranger"
%  opus        = "opus"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key f \major
  \time 3/4
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4. s2.*3 s4.
  \mark \markup { \box "B" } s4. s2.*3 s4.
  \mark \markup { \box "C" } s4. s2. s4.
  \mark \markup { \box "D" } s4. s2.*2 s4.
  \mark \markup { \box "E" } s4. s2.*2 s4.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4.
  s2.*6
  s8 \tempo 4=110 s8 s2 s4. \tempo 4=120 s4.
  s2.*6
  s8 \tempo 4=110 s8 s2 \tempo 4=55 s4.
}

soprano = \relative {
  c''8^\markup\smallCaps "Solo or Duet." b d
  c4. a8 bes gis
  a4. 8 8 8
  bes4. 8 8. 16
  a4. \bar "|" \break \partial 4. c8 b d
  c4. a8 bes gis % B
  a4. 8 8 8
  bes8^\markup\italic rit. 8 4 4
  a4. \bar "|" \break \partial 4. d8^\markup\smallCaps Refrain. c f,
  a4. bes8 a c, % C
  f4. \bar "|" \break \partial 4.
  f8 e f
  g8 a bes4 g % D
  c4. d8 c f,
  a4. \bar "|" \break \partial 4. bes8 a c,
  f4. 8 e f % E
  g8 a^\markup\italic rit. bes4 e,
  f4.\fermata
}

alto = \relative {
  a'8 gis bes
  a4. c,8 d b
  c4. f8 e d
  e4. d8 e8. d16
  c4. a'8 gis bes
  a4. c,8 d b % B
  c4. f8 e ees
  d8 bes' d,4 e
  f4. a8 a c,
  f8 c c d c bes % C
  a8 c c c c c
  c8 c e4 e % D
  f4. a8 a c,
  f8 c c f f c
  c8 c c c c c % E
  c8 c e4 c
  c4.\fermata

}

tenor = \relative {
  r8 r4
  \once\partCombineApart r8 c <f a> r \once\partCombineApart r4
  \once\partCombineApart r8 c <f a> r \once\partCombineApart r4
  \once\partCombineApart r8 c <e bes'> r \once\partCombineApart r4
  \once\partCombineApart r8 c <f a> r r4
  \once\partCombineApart r8 c <f a> r \once\partCombineApart r4 % B
  \once\partCombineApart r8 c <f a> r \once\partCombineApart r4
  f8 bes bes4 c
  <f, c'>4. r8 r4
  r8 a a r r4 % C
  r8 a a a bes a
  bes8 a c4 c % D
  c4. r8 r4
  r8 a a d c bes
  a8 a a c bes a % E
  bes8 a g4 a
  <f a>4.\fermata
}

bass= \relative {
  r8 r4
  f,4. r8 <f f'> r
  f4. r8 <f f'> r
  c4. r8 c' r
  f,4. r8 r4
  f4. r8 <f f'> r % B
  f4. r8 <f f'> r
  bes4 c c
  f,4. r8 r4
  r8 f' f r r4 % C
  r8 f f f g f
  e8 f g4 bes % D
  a4. r8 r4
  r8 f f f f g
  f4. a8 g f % E
  e8 f c4 c
  f,4.\fermata
}

chorus = \lyricmode {
  It was for me, __
  it was for me. __
  For me he left His throne a -- bove;
  His grace, His good -- ness all for me, __
  For me the o -- cean of His love.
}

chorusAlto = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  for me,
  _ _ _ _
  for me,
  _ _ _ _ _ _ _ _ _ _ _
  good -- ness, good -- ness all for me, for me,
  _ _ _ _ _ _ _ _
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  His good -- ness all for me,
  _ _ _ _ _ _ _ _
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, what am I, that I should be
  The ob -- ject of God's won -- drous grace?
  That He should send His Son to me,
  That I might see Him face to face?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  That He should give His Son for me,
  A sac -- ri -- fice of love Di -- vine—
  Of love as bound -- less as the sea,
  That I might call the Sa -- viour mine?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, won -- drous love, that He should leave
  His throne and come to earth for me!
  Should give His life my soul to save.
  The ran -- som pay that sets me free.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  A life of ser -- viec, death of shame,
  En -- sam -- ple true for all, for me—
  Oh, shall I not a -- dore His name,
  Through time and through e -- ter -- ni -- ty!
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "Oh, " "what " "am " "I, " "that " "I " "should " "be "
  "\nThe " ob "ject " "of " "God's " won "drous " "grace? "
  "\nThat " "He " "should " "send " "His " "Son " "to " "me, "
  "\nThat " "I " "might " "see " "Him " "face " "to " "face? "
  "\nIt " "was " "for " "me, " 
  "\nit " "was " "for " "me. " 
  "\nFor " "me " "he " "left " "His " "throne " a "bove; "
  "\nHis " "grace, " "His " good "ness " "all " "for " "me, " 
  "\nFor " "me " "the " o "cean " "of " "His " "love. "

  \set stanza = "2."
  "\nThat " "He " "should " "give " "His " "Son " "for " "me, "
  "\nA " sac ri "fice " "of " "love " Di "vine— "
  "\nOf " "love " "as " bound "less " "as " "the " "sea, "
  "\nThat " "I " "might " "call " "the " Sa "viour " "mine? "
  "\nIt " "was " "for " "me, " 
  "\nit " "was " "for " "me. " 
  "\nFor " "me " "he " "left " "His " "throne " a "bove; "
  "\nHis " "grace, " "His " good "ness " "all " "for " "me, " 
  "\nFor " "me " "the " o "cean " "of " "His " "love. "

  \set stanza = "3."
  "\nOh, " won "drous " "love, " "that " "He " "should " "leave "
  "\nHis " "throne " "and " "come " "to " "earth " "for " "me! "
  "\nShould " "give " "His " "life " "my " "soul " "to " "save. "
  "\nThe " ran "som " "pay " "that " "sets " "me " "free. "
  "\nIt " "was " "for " "me, " 
  "\nit " "was " "for " "me. " 
  "\nFor " "me " "he " "left " "His " "throne " a "bove; "
  "\nHis " "grace, " "His " good "ness " "all " "for " "me, " 
  "\nFor " "me " "the " o "cean " "of " "His " "love. "

  \set stanza = "4."
  "\nA " "life " "of " ser "viec, " "death " "of " "shame, "
  "\nEn" sam "ple " "true " "for " "all, " "for " "me— "
  "\nOh, " "shall " "I " "not " a "dore " "His " "name, "
  "\nThrough " "time " "and " "through " e ter ni "ty! "
  "\nIt " "was " "for " "me, " 
  "\nit " "was " "for " "me. " 
  "\nFor " "me " "he " "left " "His " "throne " a "bove; "
  "\nHis " "grace, " "His " good "ness " "all " "for " "me, " 
  "\nFor " "me " "the " o "cean " "of " "His " "love. "
}
  
wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "Oh, " "what " "am " "I, " "that " "I " "should " "be "
  "\nThe " ob "ject " "of " "God's " won "drous " "grace? "
  "\nThat " "He " "should " "send " "His " "Son " "to " "me, "
  "\nThat " "I " "might " "see " "Him " "face " "to " "face? "
  "\nIt " "was " "for " "me, " "for " "me, "
  "\nIt " "was " "for " "me, " "for " "me, "
  "\nFor " "me " "he " "left " "His " "throne " a "bove; "
  "\nHis " "grace, " "His " good "ness, "
  "\ngood" "ness " "all " "for " "me, " "for " "me, "
  "\nFor " "me " "the " o "cean " "of " "His " "love. "

  \set stanza = "2."
  "\nThat " "He " "should " "give " "His " "Son " "for " "me, "
  "\nA " sac ri "fice " "of " "love " Di "vine— "
  "\nOf " "love " "as " bound "less " "as " "the " "sea, "
  "\nThat " "I " "might " "call " "the " Sa "viour " "mine? "
  "\nIt " "was " "for " "me, " "for " "me, "
  "\nIt " "was " "for " "me, " "for " "me, "
  "\nFor " "me " "he " "left " "His " "throne " a "bove; "
  "\nHis " "grace, " "His " good "ness, "
  "\ngood" "ness " "all " "for " "me, " "for " "me, "
  "\nFor " "me " "the " o "cean " "of " "His " "love. "

  \set stanza = "3."
  "\nOh, " won "drous " "love, " "that " "He " "should " "leave "
  "\nHis " "throne " "and " "come " "to " "earth " "for " "me! "
  "\nShould " "give " "His " "life " "my " "soul " "to " "save. "
  "\nThe " ran "som " "pay " "that " "sets " "me " "free. "
  "\nIt " "was " "for " "me, " "for " "me, "
  "\nIt " "was " "for " "me, " "for " "me, "
  "\nFor " "me " "he " "left " "His " "throne " a "bove; "
  "\nHis " "grace, " "His " good "ness, "
  "\ngood" "ness " "all " "for " "me, " "for " "me, "
  "\nFor " "me " "the " o "cean " "of " "His " "love. "

  \set stanza = "4."
  "\nA " "life " "of " ser "viec, " "death " "of " "shame, "
  "\nEn" sam "ple " "true " "for " "all, " "for " "me— "
  "\nOh, " "shall " "I " "not " a "dore " "His " "name, "
  "\nThrough " "time " "and " "through " e ter ni "ty! "
  "\nIt " "was " "for " "me, " "for " "me, "
  "\nIt " "was " "for " "me, " "for " "me, "
  "\nFor " "me " "he " "left " "His " "throne " a "bove; "
  "\nHis " "grace, " "His " good "ness, "
  "\ngood" "ness " "all " "for " "me, " "for " "me, "
  "\nFor " "me " "the " o "cean " "of " "His " "love. "
}
  
wordsMidiTenor = \lyricmode {
  \repeat unfold 4 {
    "" "" "" "" "" "" "" "" "" ""
    "" "" "" "" "" "" ""
    "for " "me, " "for " "me, "
    "\nFor " "me " "He " "left " "His " "throne " a "bove; "
    "\nHis " good "ness " "all " "for " "me, " "for " "me, "
    "\nFor " "me " "the " o "cean " "of " "His " "love. "
  }
}
  
wordsMidiBass = \lyricmode {
  \repeat unfold 4 {
    "" "" "" "" "" "" "" "" "" ""
    "" "" "" "" ""
    "for " "me, " "for " "me, "
    "\nFor " "me " "He " "left " "His " "throne " a "bove; "
    "\nHis " good "ness " "all " "for " "me, "
    "\nFor " "me " "the " o "cean " "of " "His " "love. "
  }
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
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new NullVoice \soprano
            \addlyrics { \wordsOne \chorus }
            \addlyrics   \wordsTwo
            \addlyrics   \wordsThree
            \addlyrics   \wordsFour
            \new NullVoice \alto
            \addlyrics   \chorusAlto
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
            \new NullVoice \bass
            \addlyrics \chorusMen
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
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new NullVoice { \soprano \soprano \soprano \soprano }
            \addlyrics { \wordsOne   \chorus
                         \wordsTwo   \chorus
                         \wordsThree \chorus
                         \wordsFour  \chorus
                       }
            \new NullVoice { \alto \alto \alto \alto }
            \addlyrics   { \chorusAlto \chorusAlto \chorusAlto \chorusAlto }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
            \new NullVoice { \bass \bass \bass \bass }
            \addlyrics { \chorusMen \chorusMen \chorusMen \chorusMen }
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
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new NullVoice { \soprano \soprano \soprano \soprano }
            \addlyrics { \wordsOne   \chorus
                         \wordsTwo   \chorus
                         \wordsThree \chorus
                         \wordsFour  \chorus
                       }
            \new NullVoice { \alto \alto \alto \alto }
            \addlyrics   { \chorusAlto \chorusAlto \chorusAlto \chorusAlto }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
            \new NullVoice { \bass \bass \bass \bass }
            \addlyrics { \chorusMen \chorusMen \chorusMen \chorusMen }
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
  \bookOutputSuffix "midi-sop"
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
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidiSop
          >>
                                  % Alto staff
          \new Staff = alto
          <<
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

\book {
  \bookOutputSuffix "midi-alto"
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
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto }
            \addlyrics \wordsMidiAlto
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

\book {
  \bookOutputSuffix "midi-tenor"
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
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor }
            \addlyrics \wordsMidiTenor
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

\book {
  \bookOutputSuffix "midi-bass"
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
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
          >>
                                  % Alto staff
          \new Staff = alto
          <<
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
            \addlyrics \wordsMidiBass
          >>
        >>
      >>
    >>
    \midi {}
  }
}
