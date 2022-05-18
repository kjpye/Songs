\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Wilt Thou not Come"
  subtitle    = "Sankey No. 394"
  subsubtitle = "C. C. No. 183"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
  meter       = \markup\smallCaps "8.8.8.6."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key aes \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
  \mark \markup { \box "C" } s4 s1*3 s2.
  \mark \markup { \box "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'4
  aes4 4 4 4
  aes4 4 4 g8[aes]
  bes4 4 4 4
  bes4 4 4 \bar "|" \break aes8[bes]
  c4 4 4 4 % B
  des4 4 4 bes
  ees4. aes,8 c4 bes
  aes2. \bar "|" \break c8.^\markup\smallCaps Refrain. d16
  ees2 c4 8. 16
  des2 bes4 8 8
  c4 4 d d
  ees2. \bar "|" \break c8. des16
  ees2 c4 ees8. 16
  des2 f,4 bes8 8
  aes4 4 c bes
  aes2.
}

alto = \relative {
  \autoBeamOff
  c'4
  c4 des ees des
  ees4 des c ees
  ees4 d ees f
  ees d ees aes
  ees e f ges % B
  f4 4 4 ees
  ees4. c8 ees4 g
  aes2. 8. bes16
  c4 aes8. 16 8 8 8. 16 % C
  bes4 g8. 16 8 8 8 8
  aes4 4 4 4
  g2. aes8. bes16
  c4 aes8. 16 8 8 ges8. 16 % D
  f2 des4 f8 8
  ees4 c ees des
  c2.
}

tenor = \relative {
  \autoBeamOff
  aes4
  ees4 ees aes aes
  aes4 ees ees ees8[f]
  g4 aes bes bes
  bes4 aes g aes8[g]
  aes4 bes aes aes % B
  aes4 4 4 g
  aes4. 8 4 des
  c2. r4
  r4 c8. 16 ees8 8 r4 % C
  r4 bes8. 16 ees8 8 8 8
  ees4 4 bes bes
  bes2. r4
  r4 c8. 16 ees8 8 r4 % D
  r4 des8. aes16 8 8 des8 8
  c4 aes g g
  aes2.
}

bass = \relative {
  \autoBeamOff
  aes,4
  aes4 bes c des
  c4 bes aes ees'
  ees4 f g aes
  g4 f ees c8[ees]
  aes4 g f ees % B
  des4 4 4 ees8[des]
  c4. f8 ees4 ees
  aes,2. r4
  r4 aes'8. 16 8 8 r4 % C
  r4 ees8. 16 8 8 8 8
  aes4 4 f bes,
  ees2. r4
  r4 aes8. 16 8 8 r4 % D
  r4 des,8. 16 8 8 bes bes
  ees4 4 4 4
  aes,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  He is call -- ing, gen -- tly call -- ing,
  Do not turn from Him a -- way;
  He is call -- ing, gen -- tly call -- ing,
  He is call -- ing thee to -- day.
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  He is call -- ing, gen -- tly call -- ing,
  _ _ _ _ _ _ _
  He is call -- ing, gen -- tly call -- ing,
  _ _ _ _ _ _ _
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Wilt thou not come, O soul op -- prest,
  To Him who of -- fers peace and rest?
  While Je -- sus pleads, no long -- er stay;
  He's call -- ing thee to -- day.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Wilt thou not heed the Sa -- viour's voice,
  Be -- lieve His word, make Him thy choice?
  Ac -- cept His grace with -- out de -- lay;
  He's call -- ing thee to -- day.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, hear Him say. "\"Be" not a -- fraid,
  On Me thy load of guilt was "laid\":"
  "\"Come" un -- to "Me,\"" "\"I" am the "Way\";"
  He's call -- ing thee to -- day.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  O wan -- d'ring one, no long -- er roam
  A -- way from God, a -- way from home;
  The Spi -- rits voice at once o -- bey;
  He's call -- ing thee to -- day.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Wilt " "thou " "not " "come, " "O " "soul " op "prest, "
  "\nTo " "Him " "who " of "fers " "peace " "and " "rest? "
  "\nWhile " Je "sus " "pleads, " "no " long "er " "stay; "
  "\nHe's " call "ing " "thee " to "day. "
  "\nHe " "is " call "ing, " gen "tly " call "ing, "
  "\nDo " "not " "turn " "from " "Him " a "way; "
  "\nHe " "is " call "ing, " gen "tly " call "ing, "
  "\nHe " "is " call "ing " "thee " to "day. "

  \set stanza = "2."
  "\nWilt " "thou " "not " "heed " "the " Sa "viour's " "voice, "
  "\nBe" "lieve " "His " "word, " "make " "Him " "thy " "choice? "
  "\nAc" "cept " "His " "grace " with "out " de "lay; "
  "\nHe's " call "ing " "thee " to "day. "
  "\nHe " "is " call "ing, " gen "tly " call "ing, "
  "\nDo " "not " "turn " "from " "Him " a "way; "
  "\nHe " "is " call "ing, " gen "tly " call "ing, "
  "\nHe " "is " call "ing " "thee " to "day. "

  \set stanza = "3."
  "\nOh, " "hear " "Him " "say. " "\"Be " "not " a "fraid, "
  "\nOn " "Me " "thy " "load " "of " "guilt " "was " "laid\": "
  "\n\"Come " un "to " "Me,\" " "\"I " "am " "the " "Way\"; "
  "\nHe's " call "ing " "thee " to "day. "
  "\nHe " "is " call "ing, " gen "tly " call "ing, "
  "\nDo " "not " "turn " "from " "Him " a "way; "
  "\nHe " "is " call "ing, " gen "tly " call "ing, "
  "\nHe " "is " call "ing " "thee " to "day. "

  \set stanza = "4."
  "\nO " wan "d'ring " "one, " "no " long "er " "roam "
  "\nA" "way " "from " "God, " a "way " "from " "home; "
  "\nThe " Spi "rits " "voice " "at " "once " o "bey; "
  "\nHe's " call "ing " "thee " to "day. "
  "\nHe " "is " call "ing, " gen "tly " call "ing, "
  "\nDo " "not " "turn " "from " "Him " a "way; "
  "\nHe " "is " call "ing, " gen "tly " call "ing, "
  "\nHe " "is " call "ing " "thee " to "day. "
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "Wilt " "thou " "not " "come, " "O " "soul " op "prest, "
  "\nTo " "Him " "who " of "fers " "peace " "and " "rest? "
  "\nWhile " Je "sus " "pleads, " "no " long "er " "stay; "
  "\nHe's " call "ing " "thee " to "day. "
  "\nHe " "is " "call " "He " "is " call "ing, "
  "\ngen" "tly " "call " gen "tly " call "ing, "
  "\nDo " "not " "turn " "from " "Him " a "way; " gen "tly " call "ing, "
  "\nHe " "is " "call " "He " "is " call "ing, "
  "\nHe " "is " call "ing " "thee " to "day. "

  \set stanza = "2."
  "\nWilt " "thou " "not " "heed " "the " Sa "viour's " "voice, "
  "\nBe" "lieve " "His " "word, " "make " "Him " "thy " "choice? "
  "\nAc" "cept " "His " "grace " with "out " de "lay; "
  "\nHe's " call "ing " "thee " to "day. "
  "\nHe " "is " "call " "He " "is " call "ing, "
  "\ngen" "tly " "call " gen "tly " call "ing, "
  "\nDo " "not " "turn " "from " "Him " a "way; " gen "tly " call "ing, "
  "\nHe " "is " "call " "He " "is " call "ing, "
  "\nHe " "is " call "ing " "thee " to "day. "

  \set stanza = "3."
  "\nOh, " "hear " "Him " "say. " "\"Be " "not " a "fraid, "
  "\nOn " "Me " "thy " "load " "of " "guilt " "was " "laid\": "
  "\n\"Come " un "to " "Me,\" " "\"I " "am " "the " "Way\"; "
  "\nHe's " call "ing " "thee " to "day. "
  "\nHe " "is " "call " "He " "is " call "ing, "
  "\ngen" "tly " "call " gen "tly " call "ing, "
  "\nDo " "not " "turn " "from " "Him " a "way; " gen "tly " call "ing, "
  "\nHe " "is " "call " "He " "is " call "ing, "
  "\nHe " "is " call "ing " "thee " to "day. "

  \set stanza = "4."
  "\nO " wan "d'ring " "one, " "no " long "er " "roam "
  "\nA" "way " "from " "God, " a "way " "from " "home; "
  "\nThe " Spi "rits " "voice " "at " "once " o "bey; "
  "\nHe's " call "ing " "thee " to "day. "
  "\nHe " "is " "call " "He " "is " call "ing, "
  "\ngen" "tly " "call " gen "tly " call "ing, "
  "\nDo " "not " "turn " "from " "Him " a "way; " gen "tly " call "ing, "
  "\nHe " "is " "call " "He " "is " call "ing, "
  "\nHe " "is " call "ing " "thee " to "day. "
}

\book {
  \bookOutputSuffix "midi-men"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
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
            \addlyrics \wordsMidi
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
  \bookOutputSuffix "midi-sop"
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
  \bookOutputSuffix "midi-alto"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics \wordsMidiAlto
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
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
                                              \wordsFour  \chorus
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
                                              \wordsFour  \chorus
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
