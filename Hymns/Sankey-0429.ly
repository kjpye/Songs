\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Yet There is Room!"
  subtitle    = "Sankey No. 429"
  subsubtitle = "Sankey 880 No. 31"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "H. Bonar. D. D."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 4/2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*4
  \mark \markup { \box "C" } s1*8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo "Slow, with expression." 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  \tag #'both  {c''2 b4. c8 <<{\hideNotes a4 \unHideNotes\tiny f} \new Voice a2>> r4 f}
  \tag #'v2    {c'2  b4. c8   a4 f r2  }
  \tag #'other {c'2  b4. c8   a2   r4 f}
  a4. 8 g4 f g1
  bes2 c4. g8 bes2 a % B
  g4. c8 b4 d c1 \break
  c1^\markup\smallCaps Refrain. a2 r % C
  c1^\p a2 r4 f
  a2.^\mf bes4 a2 g
  f1. r2
}

alto = \relative {
  \autoBeamOff
  \tag #'both  {a'2 gis4. a8 <<{\hideNotes f4 \unHideNotes \tiny c8} \new Voice f2>> r4 c}
  \tag #'v2    {a'2 gis4. a8 f4  c r2  }
  \tag #'other {a'2 gis4. a8 f2    r4 c}
  f4. 8 c4 4 e1
  e2 4. 8 g2 f % B
  e4. g8 f4 4 e1
  f1 2 r % C
  f1 2 r4 c
  f2. 4 2 e
  f1. r2
}

tenor = \relative {
  \autoBeamOff
  \tag #'both  {c'2 d4. c8 <<{\omit c4 \tiny a} \new Voice c2>> r4 a}
  \tag #'v2    {c2  d4. c8    c4 a                  r2  }
  \tag #'other {c2  d4. c8                     c2   r4 a}
  c4. 8 bes4 a c1
  c2 g4. c8 2 2 % B
  c4. e8 d4 b c1
  a1 c2 r % C
  a1 c2 r4 a
  c2. d4 c2 bes
  a1. r2
}

bass = \relative {
  \autoBeamOff
  \tag #'both  {f2 4. 8 <<{\omit f4 \tiny 4} \new Voice f2>> r4 f}
  \tag #'v2    {f2 4. 8    f4 4                  r2  }
  \tag #'other {f2 4. 8                     f2   r4 f}
  f4. 8 e4 f c1
  c2 4. 8 f2 2 % B
  g4. 8 4 4 c,1
  f1 2 r % C
  f1 2  r4 f
  f2. bes,4 c2 2
  f,1. r2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  \set stanza = "1-8."
  Room, room, still room!
  oh, en -- ter, en -- ter now!
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  \set stanza = "9."
  \markup\italic No \markup\italic room, \markup\italic no \markup\italic room!
  \markup\italic oh, \markup\italic woe -- \markup\italic ful \markup\italic cry!— \markup\italic "\"No" \markup\italic "room!\""
}

verses = 9

wordsOne = \lyricmode {
  \set stanza = "1."
  "\"Yet" there is "room!\"" _ The Lamb's bright hall of song,
  With its fair glo -- ry, beck -- ons thee a -- long:
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Day is de -- clin -- ing, _ and the sun is low;
  The sha -- dows length -- en, light makes haste to go.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  The bri -- dal hall _ is fill -- ing for the feast;
  Pass in! pass in! and be the Bride -- groom's guest:
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  It fills, it fills, _ that hall of ju -- bi -- lee!
  Make haste, make haste! 'tis not too full for thee!
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Yet there is room! _ still o -- pen stands the gate—
  The gate of love; it is not yhet too late:
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Pass in! pass in! _ That ban -- quet is for thee:
  That cup of ev -- er -- last -- ing love is free;
}
  
wordsSeven = \lyricmode {
  \set stanza = "7."
  All heaven is there! _ all joy! Go in, go in!
  The an -- gels be4ck -- on the prize to win:
}
  
wordsEight = \lyricmode {
  \set stanza = "8."
  Loud -- er and sweet -- _ er sounds the lov -- ing call:
  Come lin -- g'rer, come! en -- ter that fes -- tal hall:
}
  
wordsNine = \lyricmode {
  \set stanza = "9."
  Ere night that gate _ may close, and seal thy doom:
  Then the last, low, long cry: "\"No" room, no "room!\""
}
  
wordsSingle = \lyricmode {
  \set stanza = "1."
  "\"Yet" there is "room!\"" The Lamb's bright hall of song,
  With its fair glo -- ry, beck -- ons thee a -- long:
  Room, room, still room!
  oh, en -- ter, en -- ter now!

  \set stanza = "2."
  Day is de -- clin -- ing, and the sun is low;
  The sha -- dows length -- en, light makes haste to go.
  Room, room, still room!
  oh, en -- ter, en -- ter now!

  \set stanza = "3."
  The bri -- dal hall is fill -- ing for the feast;
  Pass in! pass in! and be the Bride -- groom's guest:
  Room, room, still room!
  oh, en -- ter, en -- ter now!

  \set stanza = "4."
  It fills, it fills, that hall of ju -- bi -- lee!
  Make haste, make haste! 'tis not too full for thee!
  Room, room, still room!
  oh, en -- ter, en -- ter now!

  \set stanza = "5."
  Yet there is room! still o -- pen stands the gate—
  The gate of love; it is not yhet too late:
  Room, room, still room!
  oh, en -- ter, en -- ter now!

  \set stanza = "6."
  Pass in! pass in! That ban -- quet is for thee:
  That cup of ev -- er -- last -- ing love is free;
  Room, room, still room!
  oh, en -- ter, en -- ter now!

  \set stanza = "7."
  All heaven is there! all joy! Go in, go in!
  The an -- gels be4ck -- on the prize to win:
  Room, room, still room!
  oh, en -- ter, en -- ter now!

  \set stanza = "8."
  Loud -- er and sweet -- er sounds the lov -- ing call:
  Come lin -- g'rer, come! en -- ter that fes -- tal hall:
  Room, room, still room!
  oh, en -- ter, en -- ter now!

  \set stanza = "9."
  Ere night that gate may close, and seal thy doom:
  Then the last, low, long cry: "\"No" room, no "room!\""
  \markup\italic No \markup\italic room, \markup\italic no \markup\italic room!
  \markup\italic oh, \markup\italic woe -- \markup\italic ful \markup\italic cry!— \markup\italic "\"No" \markup\italic "room!\""
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "\"Yet " "there " "is " "room!\" " "The " "Lamb's " "bright " "hall " "of " "song, "
  "\nWith " "its " "fair " glo "ry, " beck "ons " "thee " a "long: "
  "\nRoom, " "room, " "still " "room! "
  "\noh, " en "ter, " en "ter " "now! "

  \set stanza = "2."
  "\nDay " "is " de clin "ing, " "and " "the " "sun " "is " "low; "
  "\nThe " sha "dows " length "en, " "light " "makes " "haste " "to " "go. "
  "\nRoom, " "room, " "still " "room! "
  "\noh, " en "ter, " en "ter " "now! "

  \set stanza = "3."
  "\nThe " bri "dal " "hall " "is " fill "ing " "for " "the " "feast; "
  "\nPass " "in! " "pass " "in! " "and " "be " "the " Bride "groom's " "guest: "
  "\nRoom, " "room, " "still " "room! "
  "\noh, " en "ter, " en "ter " "now! "

  \set stanza = "4."
  "\nIt " "fills, " "it " "fills, " "that " "hall " "of " ju bi "lee! "
  "\nMake " "haste, " "make " "haste! " "'tis " "not " "too " "full " "for " "thee! "
  "\nRoom, " "room, " "still " "room! "
  "\noh, " en "ter, " en "ter " "now! "

  \set stanza = "5."
  "\nYet " "there " "is " "room! " "still " o "pen " "stands " "the " "gate— "
  "\nThe " "gate " "of " "love; " "it " "is " "not " "yhet " "too " "late: "
  "\nRoom, " "room, " "still " "room! "
  "\noh, " en "ter, " en "ter " "now! "

  \set stanza = "6."
  "\nPass " "in! " "pass " "in! " "That " ban "quet " "is " "for " "thee: "
  "\nThat " "cup " "of " ev er last "ing " "love " "is " "free; "
  "\nRoom, " "room, " "still " "room! "
  "\noh, " en "ter, " en "ter " "now! "

  \set stanza = "7."
  "\nAll " "heaven " "is " "there! " "all " "joy! " "Go " "in, " "go " "in! "
  "\nThe " an "gels " be4ck "on " "the " "prize " "to " "win: "
  "\nRoom, " "room, " "still " "room! "
  "\noh, " en "ter, " en "ter " "now! "

  \set stanza = "8."
  "\nLoud" "er " "and " sweet "er " "sounds " "the " lov "ing " "call: "
  "\nCome " lin "g'rer, " "come! " en "ter " "that " fes "tal " "hall: "
  "\nRoom, " "room, " "still " "room! "
  "\noh, " en "ter, " en "ter " "now! "

  \set stanza = "9."
  "\nEre " "night " "that " "gate " "may " "close, " "and " "seal " "thy " "doom: "
  "\nThen " "the " "last, " "low, " "long " "cry: " "\"No " "room, " "no " "room!\" "
  "\nNo " "room, " "no " "room! "
  "\noh, " woe "ful " "cry!— " "\"No " "room!\" "
}

wordsMidiMen = \lyricmode {
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
            \new Voice { \global
                         \keepWithTag #'other \soprano
                         \keepWithTag #'v2    \soprano
                         \keepWithTag #'other \soprano
                         \keepWithTag #'other \soprano
                         \keepWithTag #'other \soprano
                         \keepWithTag #'other \soprano
                         \keepWithTag #'other \soprano
                         \keepWithTag #'other \soprano
                         \keepWithTag #'other \soprano
                         \bar "|."
                       }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global
                         \keepWithTag #'other \alto \nl
                         \keepWithTag #'v2    \alto \nl
                         \keepWithTag #'other \alto \nl
                         \keepWithTag #'other \alto \nl
                         \keepWithTag #'other \alto \nl
                         \keepWithTag #'other \alto \nl
                         \keepWithTag #'other \alto \nl
                         \keepWithTag #'other \alto \nl
                         \keepWithTag #'other \alto \nl
                         \bar "|."
                       }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global
                         \keepWithTag #'other \tenor
                         \keepWithTag #'v2    \tenor
                         \keepWithTag #'other \tenor
                         \keepWithTag #'other \tenor
                         \keepWithTag #'other \tenor
                         \keepWithTag #'other \tenor
                         \keepWithTag #'other \tenor
                         \keepWithTag #'other \tenor
                         \keepWithTag #'other \tenor
                       }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global
                         \keepWithTag #'other \bass
                         \keepWithTag #'v2 \bass
                         \keepWithTag #'other \bass
                         \keepWithTag #'other \bass
                         \keepWithTag #'other \bass
                         \keepWithTag #'other \bass
                         \keepWithTag #'other \bass
                         \keepWithTag #'other \bass
                         \keepWithTag #'other \bass
                       }
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
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \keepWithTag #'both \soprano
            \new Voice \partCombine { \global \keepWithTag #'both \soprano \bar "|." } { \global \keepWithTag #'other \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
            \new Lyrics \lyricsto "aligner"   \wordsSix
            \new Lyrics \lyricsto "aligner"   \wordsSeven
            \new Lyrics \lyricsto "aligner"   \wordsEight
            \new Lyrics \lyricsto "aligner"   \wordsNine
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \keepWithTag #'both \tenor } { \global \keepWithTag #'other \bass }
            \new NullVoice = alignerT { \keepWithTag #'both \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" {
                                         \keepWithTag #'other \soprano
                                         \keepWithTag #'v2    \soprano
                                         \keepWithTag #'other \soprano
                                         \keepWithTag #'other \soprano
                                         \keepWithTag #'other \soprano
                                         \keepWithTag #'other \soprano
                                         \keepWithTag #'other \soprano
                                         \keepWithTag #'other \soprano
                                         \keepWithTag #'other \soprano
                                       }
            \new Voice \partCombine { \global
                                      \keepWithTag #'other \soprano
                                      \keepWithTag #'v2    \soprano
                                      \keepWithTag #'other \soprano
                                      \keepWithTag #'other \soprano
                                      \keepWithTag #'other \soprano
                                      \keepWithTag #'other \soprano
                                      \keepWithTag #'other \soprano
                                      \keepWithTag #'other \soprano
                                      \keepWithTag #'other \soprano
                                      \bar "|."
                                    }
                                    { \global
                                      \keepWithTag #'other \alto \nl
                                      \keepWithTag #'v2    \alto \nl
                                      \keepWithTag #'other \alto \nl
                                      \keepWithTag #'other \alto \nl
                                      \keepWithTag #'other \alto \nl
                                      \keepWithTag #'other \alto \nl
                                      \keepWithTag #'other \alto \nl
                                      \keepWithTag #'other \alto \nl
                                      \keepWithTag #'other \alto \nl
                                      \bar "|."
                                    }
            \new Lyrics \lyricsto "aligner" \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global
                                      \keepWithTag #'other \tenor
                                      \keepWithTag #'v2    \tenor
                                      \keepWithTag #'other \tenor
                                      \keepWithTag #'other \tenor
                                      \keepWithTag #'other \tenor
                                      \keepWithTag #'other \tenor
                                      \keepWithTag #'other \tenor
                                      \keepWithTag #'other \tenor
                                      \keepWithTag #'other \tenor
                                    }
                                    { \global
                                      \keepWithTag #'other \bass
                                      \keepWithTag #'v2 \bass
                                      \keepWithTag #'other \bass
                                      \keepWithTag #'other \bass
                                      \keepWithTag #'other \bass
                                      \keepWithTag #'other \bass
                                      \keepWithTag #'other \bass
                                      \keepWithTag #'other \bass
                                      \keepWithTag #'other \bass
                                    }
            \new NullVoice = alignerT {
              \keepWithTag #'other \tenor
              \keepWithTag #'v2    \tenor
              \keepWithTag #'other \tenor
              \keepWithTag #'other \tenor
              \keepWithTag #'other \tenor
              \keepWithTag #'other \tenor
              \keepWithTag #'other \tenor
              \keepWithTag #'other \tenor
              \keepWithTag #'other \tenor
            }
          >>
        >>
}

\book {
  \bookOutputSuffix "single"
  \score {
    \singlescore
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
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
    \singlescore
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
