\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Hallelujah! Christ is Risen."
  subtitle    = "Sankey No. 153"
  subsubtitle = "N.H. No. 75"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Bishop Wordsworth"
  meter       = \markup\smallCaps "8.7.d."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key c \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3
  \mark \markup { \box "B" } s1*3
  \mark \markup { \box "C" } s1*3
  \mark \markup { \box "D" } s1*3 s2
  \mark \markup { \box "E" } s2 s1*2 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  \tuplet 3/2 {g'8[a] b}
  c2~8. g16 e8. a16
  g4 2 8. c16
  b4. 8 a4 b
  c2. \tuplet 3/2 {g8[a] b} % B
  c2~8. g16 e8. a16
  g4 2 8. b16
  d4. b8 a4 d % C
  g,2. r4
  g4 b d g,
  g8[c] c[d] e4 c % D
  g4 b d g,
  a8[b] c[d] e2
  e4. d8 \bar "|" \break c4. 8
  d4 e f8. e16 f8. d16 % E
  c4. d8 c4 b
  c2.
}

alto = \relative {
  \autoBeamOff
  \tuplet 3/2 {g'8[a] b}
  c2~8. g16 e8. a16
  g4 2 e8. 16
  g2 f
  e4 4 4 \tuplet 3/2 {g8[a] b} % B
  c2~8. g16 e8. a16
  g4 2 r4
  g2 fis % C
  g8. d16 8. 16 4 r
  d4 4 f f
  e4 8[f] g4 e % D
  d4 4 f g
  g8[f] e[a] gis2
  gis4. 8 \bar "|" \break a4. 8
  a4 4 8. 16 8. f16 % E
  e8(g4) f8 e4 d
  e2.
}

tenor = \relative {
  \autoBeamOff
  \tuplet 3/2 {g8[a] b}
  c2~8. g16 e8. a16
  g4 2 c8. 16
  d2 2
  c4 g g \tuplet 3/2 {g8[a] b} % B
  c2~8. g16 e8. a16
  g4 2 r4
  b4.(d8) d4(c) % C
  b8. 16 8. 16 4 r
  b4 4 4 4
  c8[g] 4 4 4 % D
  b4 4 4 4
  c8[d] c[a] b2
  b4. e8 4. 8
  d4 c a8. 16 8. b16 % E
  c4. a8 g4 4
  g2.
}

bass = \relative {
  \autoBeamOff
  \tuplet 3/2 {g8[a] b}
  c2~8. g16 e8. a16
  g4 2 8. 16
  g2 g,
  c4 4 4 \tuplet 3/2 {g'8[a] b} % B
  c2~8. g16 e8. a16
  g4 2 r4
  g2 b % C
  g8. 16 8. 16 4 r
  g4 4 4 4
  c,4 4 4 4 % D
  g'4 4 4 4
  g4 a8[f] e2
  e4. 8 a4. g8
  f4 e d8. c16 d8. 16
  e4. f8 g4 g,
  c2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Hal -- le -- lu -- jah!
  Hal -- le -- lu -- jah!
  Hearts to heav'n and voi -- ces raise;
  Sing to God __ a hymn of glad -- ness,
  Sing __ to __ God a hymn of  praise;
  He who on the cross a vic -- tim
  For the world's sal -- va -- tion bled,
  Je -- sus Christ the King of glo -- ry,
  Now is ris -- en from the dead.
}
  
wordsOneSop = \lyricmode {
  _ _ _ _ _ _ _ _
  \set stanza = "1."
  Hearts to heav'n and voi -- ces raise;
  _ _ _ _ _ _ _ _
  \set stanza = "1."
  Sing to God a hymn of  praise;
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ -
  _ _ _ _ _ _ _
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Christ is ri -- sen, Christ the first- -- fruits
  Of the ho -- ly har -- vest- -- field,
  Which will all __ its full a -- bun -- dance
  At His glo -- rious ad -- vent yield;
  Then the gold -- en ears of har -- vest
  Will their heads be -- fore Him wave,
  Ri -- pened by His glo -- rious sun -- shine,
  From the fur -- rows of the grave.
}
  
wordsTwoSop = \lyricmode {
  _ _ _ _ _ _ _ _
  \set stanza = "2."
  Of the ho -- ly har -- vest- -- field,
  _ _ _ _ _ _ _ _
  \set stanza = "2."
  At His glo -- rious ad -- vent yield;
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ -
  _ _ _ _ _ _ _

}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Hal -- le -- lu -- jah!
  Hal -- le -- lu -- jah!
  Glo -- ry be to God on high!
  Hal -- le -- lu -- jah to the Sa -- viour,
  Who has gained the vic -- to -- ry;
  Hal -- le -- lu -- jah to the Spi -- rit;
  Let our high a -- scrip -- tions be,
  Hal -- le -- lu -- jah, now and ev -- er,
  To the bles -- sed Trin -- i -- ty!
}
  
wordsThreeSop = \lyricmode {
  _ _ _ _ _ _ _ _
  \set stanza = "3."
  Glo -- ry be to God on high!
  _ _ _ _ _ _ _ _
  \set stanza = "3."
  Who has gained the vic -- to -- ry;
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ -
  _ _ _ _ _ _ _
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Hal" le lu "jah! "
  "\nHal" le lu "jah! "
  "\nHearts " "to " "heav'n " "and " voi "ces " "raise; "
  "\nSing " "to " "God "  "a " "hymn " "of " glad "ness, "
  "\nSing "  "to "  "God " "a " "hymn " "of "  "praise; "
  "\nHe " "who " "on " "the " "cross " "a " vic "tim "
  "\nFor " "the " "world's " sal va "tion " "bled, "
  "\nJe" "sus " "Christ " "the " "King " "of " glo "ry, "
  "\nNow " "is " ris "en " "from " "the " "dead. "

  \set stanza = "2."
  "\nChrist " "is " ri "sen, " "Christ " "the " first- "fruits "
  "\nOf " "the " ho "ly " har vest- "field, "
  "\nWhich " "will " "all "  "its " "full " a bun "dance "
  "\nAt " "His " glo "rious " ad "vent " "yield; "
  "\nThen " "the " gold "en " "ears " "of " har "vest "
  "\nWill " "their " "heads " be "fore " "Him " "wave, "
  "\nRi" "pened " "by " "His " glo "rious " sun "shine, "
  "\nFrom " "the " fur "rows " "of " "the " "grave. "

  \set stanza = "3."
  "\nHal" le lu "jah! "
  "\nHal" le lu "jah! "
  "\nGlo" "ry " "be " "to " "God " "on " "high! "
  "\nHal" le lu "jah " "to " "the " Sa "viour, "
  "\nWho " "has " "gained " "the " vic to "ry; "
  "\nHal" le lu "jah " "to " "the " Spi "rit; "
  "\nLet " "our " "high " a scrip "tions " "be, "
  "\nHal" le lu "jah, " "now " "and " ev "er, "
  "\nTo " "the " bles "sed " Trin i "ty! "
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
            \new NullVoice = "alignerS" \soprano
            \new NullVoice = "aligner" \alto
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \with {alignAboveContext = women} \lyricsto "alignerS"   \wordsOneSop
            \new Lyrics \with {alignAboveContext = women} \lyricsto "alignerS"   \wordsTwoSop
            \new Lyrics \with {alignAboveContext = women} \lyricsto "alignerS"    \wordsThreeSop
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
          \new Staff = women \with { printPartCombineTexts = ##f }
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
            \new NullVoice = "aligner" { \alto \alto \alto }
            \new NullVoice = "alignerS" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \with {alignAboveContext = women} \lyricsto "alignerS" { \wordsOneSop \wordsTwoSop \wordsThreeSop }
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
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
            \new NullVoice = "aligner" { \alto \alto \alto }
            \new NullVoice = "alignerS" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \with {alignAboveContext = women} \lyricsto "alignerS" { \wordsOneSop \wordsTwoSop \wordsThreeSop }
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
            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
            \addlyrics \wordsMidi
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
    \midi {}
  }
}
