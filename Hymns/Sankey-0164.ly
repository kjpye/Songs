\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The King is Coming!"
  subtitle    = "Sankey No. 164"
  subsubtitle = "Sankey 880 No. 524"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

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
  \mark \markup { \box "D" } s4 s1*4
  \mark \markup { \box "A" } s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'4
  ees4 c' bes aes % A
  g4 f4 8 aes g f
  ees4 4 aes g8[aes]
  bes2. \bar "|" \break aes8[bes]
  c4 des c g % B
  bes4 aes f8 aes g f
  ees4 aes aes g
  aes2.\bar "|" \break g8^\markup\smallCaps Chorus. [aes]
  bes4 4 4 4 % C
  bes4 ees4 8 bes g bes
  bes4 aes f c'
  c2(bes4) \bar "|" \break g8[aes]
  bes4 4 4 4 % D
  bes4 ees4 8 bes g bes
  bes4 aes g f
  ees2. \bar "|" \break 4
  ees4 c' bes aes % A
  g4 f4 8 aes g f
  ees4 4 aes g8[aes]
  bes2. \bar "|" \break aes8[bes]
  c4 des c g % B
  bes4 aes f8 aes g f
  ees4 aes aes g
  aes2.
}

alto = \relative {
  \autoBeamOff
  c'4
  c4 ees4 4 4 % A
  ees4 des des8 f ees des
  c4 c c des
  ees2. 4
  ees4 f ees e % B
  f4 f des8 f ees des
  c4 ees des des
  c2. ees8[f]
  g4 f ees aes % C
  g4 4 8 8 ees ees
  d4 d d d
  ees2~4 ees8[f]
  g4 f ees aes % D
  g4 4 8 8 ees ees
  d4 d d d
  ees2. des4
  c4 ees4 4 4 % A
  ees4 des des8 f ees des
  c4 c c des
  ees2. 4
  ees4 f ees e % B
  f4 f des8 f ees des
  c4 ees des des
  c2.
}

tenor = \relative {
  \autoBeamOff
  aes4
  aes4 4 g aes % A
  aes4 4 8 8 8 8
  aes4 4 4 bes8[aes]
  g2. aes8[g]
  aes4 4 4 bes % B
  aes4 4 8 8 8 8
  aes4 c bes bes
  aes2. bes4
  ees4 bes4 4 4 % C
  bes4 4 8 ees bes g
  f4 bes aes aes
  aes2(g4) bes
  ees4 bes bes bes % D
  bes4 4 8 ees bes g
  f4 c' bes aes
  g4(bes aes) g
  aes4 4 g aes % A
  aes4 4 8 8 8 8
  aes4 4 4 bes8[aes]
  g2. aes8[g]
  aes4 4 4 bes % B
  aes4 4 8 8 8 8
  aes4 c bes bes
  aes2.
}

bass = \relative {
  \autoBeamOff
  aes,4
  aes4 4 bes c % A
  d4 4 8 8 8 f
  aes4 4 f bes,
  ees2. c8[ees]
  aes4 4 as,c % B
  des4 4 8 8 8 8
  ees4 4 4 4
  aes,2. ees'4
  ees4 aes g f % C
  ees4 4 8 8 8 8
  bes4 4 4 4
  ees2~4 4
  ees4 as g f % D
  ees4 4 8 8 8 8
  bes4 4 4 4
  ees4(d c) bes
  aes4 4 bes c % A
  d4 4 8 8 8 f
  aes4 4 f bes,
  ees2. c8[ees]
  aes4 4 as,c % B
  des4 4 8 8 8 8
  ees4 4 4 4
  aes,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Oh, won -- drous day! oh, glo -- rious morn -- ing,
  When the Son of Man shall come!
  May we with lamps all trimm'd and burn -- ing
  Glad -- ly wel -- come His re -- turn!
  Re -- joice! Re -- joice! our King is com -- ing!
  And the time will not be long,
  Un -- til we hail the ra -- diant dawn -- ing,
  And lift up the glad -- ness song.
}

wordsOne = \lyricmode {
  Re -- joice! Re -- joice! our King is com -- ing!
  And the time will not be long,
  Un -- til we hail the ra -- diant dawn -- ing,
  And lift up the glad -- ness song.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  With joy we wait our King's re -- turn -- ing
  From His heav'n -- ly ma -- sions fair;
  And with ten thou -- sand saints ap -- pear -- ing
  We shall meet Him in the air.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, may we nev -- er wae -- ry, watch -- ing,
  Nev -- er lay our ar -- mour down
  Un -- til He come, and with re -- joic -- ing
  Give to each the pro -- mis'd crown.
}
  
wordsMidi = \lyricmode {
  "Re" "joice! " Re "joice! " "our " "King " "is " com "ing! "
  "\nAnd " "the " "time " "will " "not " "be " "long, "
  "\nUn" "til " "we " "hail " "the " ra "diant " dawn "ing, "
  "\nAnd " "lift " "up " "the " glad "ness " "song. "
  "\nOh, " won "drous " "day! " "oh, " glo "rious " morn "ing, "
  "\nWhen " "the " "Son " "of " "Man " "shall " "come! "
  "\nMay " "we " "with " "lamps " "all " "trimm'd " "and " burn "ing "
  "\nGlad" "ly " wel "come " "His " re "turn! "
  "\nRe" "joice! " Re "joice! " "our " "King " "is " com "ing! "
  "\nAnd " "the " "time " "will " "not " "be " "long, "
  "\nUn" "til " "we " "hail " "the " ra "diant " dawn "ing, "
  "\nAnd " "lift " "up " "the " glad "ness " "song. "

  \set stanza = "2."
  "\nWith " "joy " "we " "wait " "our " "King's " re turn "ing "
  "\nFrom " "His " heav'n "ly " ma "sions " "fair; "
  "\nAnd " "with " "ten " thou "sand " "saints " ap pear "ing "
  "\nWe " "shall " "meet " "Him " "in " "the " "air. "
  "\nOh, " won "drous " "day! " "oh, " glo "rious " morn "ing, "
  "\nWhen " "the " "Son " "of " "Man " "shall " "come! "
  "\nMay " "we " "with " "lamps " "all " "trimm'd " "and " burn "ing "
  "\nGlad" "ly " wel "come " "His " re "turn! "
  "\nRe" "joice! " Re "joice! " "our " "King " "is " com "ing! "
  "\nAnd " "the " "time " "will " "not " "be " "long, "
  "\nUn" "til " "we " "hail " "the " ra "diant " dawn "ing, "
  "\nAnd " "lift " "up " "the " glad "ness " "song. "

  \set stanza = "3."
  "\nOh, " "may " "we " nev "er " wae "ry, " watch "ing, "
  "\nNev" "er " "lay " "our " ar "mour " "down "
  "\nUn" "til " "He " "come, " "and " "with " re joic "ing "
  "\nGive " "to " "each " "the " pro "mis'd " "crown. "
  "\nOh, " won "drous " "day! " "oh, " glo "rious " morn "ing, "
  "\nWhen " "the " "Son " "of " "Man " "shall " "come! "
  "\nMay " "we " "with " "lamps " "all " "trimm'd " "and " burn "ing "
  "\nGlad" "ly " wel "come " "His " re "turn! "
  "\nRe" "joice! " Re "joice! " "our " "King " "is " com "ing! "
  "\nAnd " "the " "time " "will " "not " "be " "long, "
  "\nUn" "til " "we " "hail " "the " ra "diant " dawn "ing, "
  "\nAnd " "lift " "up " "the " glad "ness " "song. "
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
%    system-separator-markup = \slashSeparator
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
