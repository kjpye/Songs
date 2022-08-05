\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Look not Behind thee."
  subtitle    = "Sankey No. 438"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" }    s1*3
  \mark \markup { \box "B" }    s1*3
  \mark \markup { \box "C" }    s1*3
  \mark \markup { \box "D" }    s1*3 s2
  \mark \markup { \box "E" } s2 s1*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  b'4 g8. a16 b4 d,8. dis16
  e4 g8. a16 b2
  d4 cis8. d16 b4 a8 g
  g4 fis8. g16 a4(ais) % B
  b4 g8. a16 b4 d,8. dis16
  e4 g8. a16 b2
  c4 b8 a d b g a % C
  b4 g8. a16 g2 \bar "||"
  a4^\markup\smallCaps Chorus. fis8. g16 a8 d4 8
  cis4 b8. cis16 d2 % D
  a4 fis8. g16 a8 d4 8
  cis4 d8. e16 d4(cis)
  b4 g8. a16 \bar "|" \break b4 d,8. 16
  e4 g8. a16 b2 % E
  c4 b8 a d b g a
  b4 g8. a16 g2
}

alto = \relative {
  \autoBeamOff
  b4 c8. 16 d4 b8. 16
  c4 e8. ees16 d2
  g4 8. 16 4 d8 8
  d4 cis8. 16 d4(c) % B
  b4 c8. 16 d4 b8. 16
  c4 e8. ees16 d2
  c4 d8 fis g g g g % C
  g4 e8. fis16 g2
  fis4 d8. e16 fis8 4 8
  e4 d8. e16 fis2 % D
  fis4 d8. e16 fis8 4 8
  e4 fis8. g16 fis4(a)
  g4 e8. ees16 d4 b8. 16
  c4 e8. ees16 d2 % E
  c4 d8 fis g g g g
  g4 e8. fis16 g2
}

tenor = \relative {
  \autoBeamOff
  d4 e8. ees16 d4 g8. 16
  g4 8. 16 2
  b4 ais8. b16 d4 b8 8
  b4 a8. g16 fis2 % B
  g4 e8. ees16 d4 g8. 16
  g4 8. 16 2
  g4 8 d' d d b e % C
  d4 b8. 16 b2
  d4 a8. 16 d8 a4 8
  a4 8. 16 2 % D
  d4 a8. 16 d8 a4 8
  a4 8. 16 4(d)
  d4 c8. 16 b4 g8. 16
  g4 8. 16 2 % E
  g4 8 d' d d b e
  d4 b8. c16 b2
}

bass = \relative {
  \autoBeamOff
  g,4 8. 16 4 8. 16
  c4 8. 16 g2
  g'4 8. 16 4 8 8
  e4 a,8. 16 d2 % B
  g,4 8. 16 4 8. 16
  c4 8. 16 g'2
  e4 d8 c b g e' c % C
  d4 8. 16 g2
  d4 8. 16 8 4 8
  a4 8. 16 d2 % D
  d4 8. 16 8 4 8
  a4 8. 16 d4(fis)
  g4 8. 16 4 g,8. 16
  c4 8. 16 g'4(f) % E
  e4 d8 c b g e' c
  d4 8. 16 g,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  List to the warn -- ing! no long -- er re -- main!
  Fly from the val -- ley, es -- cape from the plain!
  Turn from the voi -- ces that lure thee to stay:
  An -- gels are call -- ing thee— then why still de -- lay?
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Look not be -- hind thee:
  O sin -- ner be -- ware!
  Haste to the moun -- tain,
  Thy ref -- uge is there;
  Trust not the voi -- ces
  That lure thee to stay:
  Je -- sus is call -- ing thee—
  Then why still de -- lay?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Look not be -- hind thee;
  O lost one, be -- ware!
  Why dost thou lin -- ger
  'Twixt hope and des -- pair?
  Dan -- ger and dark -- ness
  En -- com -- pass thy way:
  Je -- sus is call -- ing thee—
  Then why still de -- lay?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Look not be -- hind thee,
  The tempt -- er is near;
  Speed to the moun -- tain,
  Thy path -- way is clear:
  Je -- sus who loves thee
  Is call -- ing to -- day:
  Come to thy Fa -- ther's house—
  Oh, why still de -- lay?
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Look " "not " be "hind " "thee: "
  "\nO " sin "ner " be "ware! "
  "\nHaste " "to " "the " moun "tain, "
  "\nThy " ref "uge " "is " "there; "
  "\nTrust " "not " "the " voi "ces "
  "\nThat " "lure " "thee " "to " "stay: "
  "\nJe" "sus " "is " call "ing " "thee— "
  "\nThen " "why " "still " de "lay? "
  "\nList " "to " "the " warn "ing! " "no " long "er " re "main! "
  "\nFly " "from " "the " val "ley, " es "cape " "from " "the " "plain! "
  "\nTurn " "from " "the " voi "ces " "that " "lure " "thee " "to " "stay: "
  "\nAn" "gels " "are " call "ing " "thee— " "then " "why " "still " de "lay?\n"

  \set stanza = "2."
  "\nLook " "not " be "hind " "thee; "
  "\nO " "lost " "one, " be "ware! "
  "\nWhy " "dost " "thou " lin "ger "
  "\n'Twixt " "hope " "and " des "pair? "
  "\nDan" "ger " "and " dark "ness "
  "\nEn" com "pass " "thy " "way: "
  "\nJe" "sus " "is " call "ing " "thee— "
  "\nThen " "why " "still " de "lay? "
  "\nList " "to " "the " warn "ing! " "no " long "er " re "main! "
  "\nFly " "from " "the " val "ley, " es "cape " "from " "the " "plain! "
  "\nTurn " "from " "the " voi "ces " "that " "lure " "thee " "to " "stay: "
  "\nAn" "gels " "are " call "ing " "thee— " "then " "why " "still " de "lay?\n"

  \set stanza = "3."
  "\nLook " "not " be "hind " "thee, "
  "\nThe " tempt "er " "is " "near; "
  "\nSpeed " "to " "the " moun "tain, "
  "\nThy " path "way " "is " "clear: "
  "\nJe" "sus " "who " "loves " "thee "
  "\nIs " call "ing " to "day: "
  "\nCome " "to " "thy " Fa "ther's " "house— "
  "\nOh, " "why " "still " de "lay? "
  "\nList " "to " "the " warn "ing! " "no " long "er " re "main! "
  "\nFly " "from " "the " val "ley, " es "cape " "from " "the " "plain! "
  "\nTurn " "from " "the " voi "ces " "that " "lure " "thee " "to " "stay: "
  "\nAn" "gels " "are " call "ing " "thee— " "then " "why " "still " de "lay? "
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

singlescore = {
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
