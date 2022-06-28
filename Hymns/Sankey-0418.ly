\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Calling to thee."
  subtitle    = "Sankey No. 418"
  subsubtitle = "N. H. No. 73"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Hubert P. Main."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Grace J. Frances."
  meter       = \markup\smallCaps "19s."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key c \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" }     s2.*2 s4.
  \mark \markup { \box "B" } s4. s2.*2
  \mark \markup { \box "C" }     s2.*3
  \mark \markup { \box "D" }     s2.*4
  \mark \markup { \box "E" }     s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'8 a g e g4
  c8 b a a g4
  g8 d e \bar "|" \break f8 g a
  a8 g f e4. % B
  g8 a g e g4
  c8 d c b a4 % C
  c8 b a g c\fermata g
  g8 d'\fermata b c4. \bar "||" \break
  e,8^\markup\smallCaps Chorus. g c e4. % D
  d8 c a g4.
  e8 8 8 8 g4
  a8 g e d4.
  e8 g c e4. % E
  d8 c a g4.
  a8 8 8 g c4
  d8 a b c4.
}

alto = \relative {
  \autoBeamOff
  e'8 f e c e4
  g8 8 f f e4
  d8 b c d e f
  f8 e d c4. % B
  e8 f e c e4
  g8 8 8 8 f4 % C
  d8 8 dis e e\fermata e
  f8 8\fermata 8 e4.
  c8 8 e g4. % D
  a8 8 f e4.
  c8 8 8 8 e4
  f8 e c b4.
  c8 8 e g4. % E
  a8 8 f e4.
  f8 8 8 e8 4
  f8 8 8 e4.
}

tenor = \relative {
  \autoBeamOff
  c'8 8 8 g c4
  c8 8 8 8 4
  b8 g g g g b
  c8 8 g8 4. % B
  c8 8 8 g c4
  c8 8 8 8 4 % C
  a8 b c c g\fermata c
  b8 8 d c4.
  g8 e g c4. % D
  c8 8 8 4.
  g8 8 8 8 c4
  c8 8 g8 4.
  g8 e g c4. % E
  c8 8 8 4.
  c8 8 8 8 g4
  b8 d g,8 4.
}

bass = \relative {
  \autoBeamOff
  c8 8 8 8 4
  e8 8 f c c4
  g8 8 8 8 8 8
  c8 8 8 4. % B
  c8 8 8 8 4
  e8 8 8 f8 4 % C
  fis8 8 8 g g\fermata g
  g,8 8\fermata 8 c4.
  c8 8 8 4. % D
  f8 8 8 c4.
  c8 8 8 8 4
  c8 8 8 g4.
  c8 8 8 4. % E
  f8 8 8 c4.
  f8 8 8 c8 4
  g8 8 8 c4.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Call -- ing to thee, call -- ing to thee;
  Je -- sus is call -- ing. "\"Come" un -- to "Me!\""
  Call -- ing to thee, call -- ing to thee;
  Hear the Good Shep -- herd call -- ing to thee!
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Out on the moun -- tain, sad and for -- sa -- ken,
  Lost in its ma -- zes, no light cast thou see;
  Yet in His mer -- cy, full of com -- pas -- sion,
  Lo! the Good Shep -- herd is call -- ing to thee!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Far on the moun -- tain, why wilt thou wan -- der?
  Dark -- er and dark -- er the path -- way will be;
  Turn from thy roam -- ing, fly from its dan -- gers,
  While the Good Shep -- herd is call -- ing to thee!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Flee from thy bon -- dage, Je -- sus will help thee,
  On -- ly be -- lieve Him, and thou shalt be free;
  Won -- der -- ful mer -- cy, nound -- less com -- pas -- sion:
  Still the Good Shep -- herd is call -- ing to thee!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Out " "on " "the " moun "tain, " "sad " "and " for sa "ken, "
  "\nLost " "in " "its " ma "zes, " "no " "light " "cast " "thou " "see; "
  "\nYet " "in " "His " mer "cy, " "full " "of " com pas "sion, "
  "\nLo! " "the " "Good " Shep "herd " "is " call "ing " "to " "thee! "
  "\nCall" "ing " "to " "thee, " call "ing " "to " "thee; "
  "\nJe" "sus " "is " call "ing. " "\"Come " un "to " "Me!\" "
  "\nCall" "ing " "to " "thee, " call "ing " "to " "thee; "
  "\nHear " "the " "Good " Shep "herd " call "ing " "to " "thee! "

  \set stanza = "2."
  "\nFar " "on " "the " moun "tain, " "why " "wilt " "thou " wan "der? "
  "\nDark" "er " "and " dark "er " "the " path "way " "will " "be; "
  "\nTurn " "from " "thy " roam "ing, " "fly " "from " "its " dan "gers, "
  "\nWhile " "the " "Good " Shep "herd " "is " call "ing " "to " "thee! "
  "\nCall" "ing " "to " "thee, " call "ing " "to " "thee; "
  "\nJe" "sus " "is " call "ing. " "\"Come " un "to " "Me!\" "
  "\nCall" "ing " "to " "thee, " call "ing " "to " "thee; "
  "\nHear " "the " "Good " Shep "herd " call "ing " "to " "thee! "

  \set stanza = "3."
  "\nFlee " "from " "thy " bon "dage, " Je "sus " "will " "help " "thee, "
  "\nOn" "ly " be "lieve " "Him, " "and " "thou " "shalt " "be " "free; "
  "\nWon" der "ful " mer "cy, " nound "less " com pas "sion: "
  "\nStill " "the " "Good " Shep "herd " "is " call "ing " "to " "thee! "
  "\nCall" "ing " "to " "thee, " call "ing " "to " "thee; "
  "\nJe" "sus " "is " call "ing. " "\"Come " un "to " "Me!\" "
  "\nCall" "ing " "to " "thee, " call "ing " "to " "thee; "
  "\nHear " "the " "Good " Shep "herd " call "ing " "to " "thee! "
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
            \addlyrics \wordsMidiMen
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
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
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

\book {
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
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
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
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
