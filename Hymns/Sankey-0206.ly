\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "We Praise Thee, we Bless Thee."
  subtitle    = "Sankey No. 206"
  subsubtitle = "N. H. No. 7"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Koschat"
  arranger    = \markup {"arr. by" \smallCaps "Ira D. Sankey."}
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
  meter       = \markup\smallCaps "11s."

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
  \mark \markup { \box "A" } s4 s2.*5
  \mark \markup { \box "B" }     s2.*5
  \mark \markup { \box "C" }     s2.*5 s2
  \mark \markup { \box "D" } s4  s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c'4
  a'4 4 4
  a4 f c
  a'4 4 4
  bes2 c,4
  bes'4 4 4
  bes4 g c, % B
  bes'4 4 4
  bes4(a) c,
  a'4 4 4
  a4 f c
  a'4 4 4 % C
  a4^\> (g\!) g
  d'4 4 4
  d4 c f,
  bes4 a g
  f2 \bar "|" \break f4
  d'4 4 4 % D
  d4 c f,
  bes4 a g
  f2
}

alto = \relative {
  \autoBeamOff
  c'4
  f4 4 4
  f4 c c
  f4 4 4
  e2 c4
  c4 4 d
  e4 4 c % B
  e4 f g
  f2 c4
  f4 4 4
  f4 c c
  f4 e ees % C
  d2 4
  d4 f f
  f4 4 4
  e4 4 4
  f2 ees4
  d4 f f % D
  f4 4 4
  e4 4 4
  f2
}

tenor = \relative {
  \autoBeamOff
  a4
  c4 e d
  c4 a a
  c4 4 4
  c2 4
  g4 e f
  g4 c c % B
  c4 4 4
  d4(c) a
  c4 e d
  c4 a a
  c4 4 4 % C
  c4(bes) bes
  bes4 g gis
  a4 4 4
  d4 c bes
  a2 4
  bes4 g gis
  a4 4 4
  d4 c bes
  a2
}

bass = \relative {
  \autoBeamOff
  f4
  f4 4 4
  f4 4 4
  f4 4 4
  g2 c,4
  c4 4 4
  c4 4 4 % B
  c4 d e
  f2 4
  f4 4 4
  f4 4 4
  f4 4 fis % C
  g2 bes,4
  bes4 4 b
  c4 4 d
  g,4 c c
  d2 c4
  bes4 4 b
  c4 4 d
  g,4 c c
  f2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  We praise Thee, we bless Thee, our Sa -- viour Di -- vine,
  All power and do -- min -- ion for ev -- er be Thine!
  We sing of Thy mer -- cy with joy -- ful ac -- claim,
  For Thou hast re -- deemed us: all praise to Thy name!
  For Thou hast re -- deemed us: all praise to Thy name!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  All hon -- our and praise to Thine ex -- cel -- lent name,
  Thy love is un -- chang -- ing— for ev -- er the same!
  We bless and a -- dore Thee, O Sa -- viour and King;
  With joy and thanks -- giv -- ing, Thy prais -- es we sing!
  With joy and thanks -- giv -- ing, Thy prais -- es we sing!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  The strength of the hills, and the depths of the sea,
  The earth and its ful -- ness be -- long un -- to Thee;
  And yet to the low -- ly Thou bend -- est Thine ear,
  So rea -- dy their hum -- ble pe -- ti -- tions to hear!
  So rea -- dy their hum -- ble pe -- ti -- tions to hear!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Thine in -- fi -- nite good -- ness our tongues shall em -- ploy;
  Thou giv -- est us rich -- ly all things to en -- joy;
  We'll fol -- low Thy foot -- steps, we'll rest in Thy love,
  And soon we shall praise Thee in man -- sions a -- bove!
  And soon we shall praise Thee in man -- sions a -- bove!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "We " "praise " "Thee, " "we " "bless " "Thee, " "our " Sa "viour " Di "vine, "
  "\nAll " "power " "and " do min "ion " "for " ev "er " "be " "Thine! "
  "\nWe " "sing " "of " "Thy " mer "cy " "with " joy "ful " ac "claim, "
  "\nFor " "Thou " "hast " re "deemed " "us: " "all " "praise " "to " "Thy " "name! "
  "\nFor " "Thou " "hast " re "deemed " "us: " "all " "praise " "to " "Thy " "name! "

  \set stanza = "2."
  "\nAll " hon "our " "and " "praise " "to " "Thine " ex cel "lent " "name, "
  "\nThy " "love " "is " un chang "ing— " "for " ev "er " "the " "same! "
  "\nWe " "bless " "and " a "dore " "Thee, " "O " Sa "viour " "and " "King; "
  "\nWith " "joy " "and " thanks giv "ing, " "Thy " prais "es " "we " "sing! "
  "\nWith " "joy " "and " thanks giv "ing, " "Thy " prais "es " "we " "sing! "

  \set stanza = "3."
  "\nThe " "strength " "of " "the " "hills, " "and " "the " "depths " "of " "the " "sea, "
  "\nThe " "earth " "and " "its " ful "ness " be "long " un "to " "Thee; "
  "\nAnd " "yet " "to " "the " low "ly " "Thou " bend "est " "Thine " "ear, "
  "\nSo " rea "dy " "their " hum "ble " pe ti "tions " "to " "hear! "
  "\nSo " rea "dy " "their " hum "ble " pe ti "tions " "to " "hear! "

  \set stanza = "4."
  "\nThine " in fi "nite " good "ness " "our " "tongues " "shall " em "ploy; "
  "\nThou " giv "est " "us " rich "ly " "all " "things " "to " en "joy; "
  "\nWe'll " fol "low " "Thy " foot "steps, " "we'll " "rest " "in " "Thy " "love, "
  "\nAnd " "soon " "we " "shall " "praise " "Thee " "in " man "sions " a "bove! "
  "\nAnd " "soon " "we " "shall " "praise " "Thee " "in " man "sions " a "bove! "
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
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
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
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
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
    \midi {}
  }
}
