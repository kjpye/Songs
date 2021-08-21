\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Hear us, Thou that Broodedst."
  subtitle    = "Sankey No. 197"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "E. J. Hopkins, Mus.Doc."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Godfrey Thring."
  meter       = "6.5., 12 lines."
  piece       = \markup\smallCaps "Deva."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key d \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*5
  \mark \markup { \box "B" } s1*5
  \mark \markup { \box "C" } s1*4
  \mark \markup { \box "D" } s1*5
  \mark \markup { \box "E" } s1*5
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  fis'4 e fis g
  a2 2
  b4 d cis b
  a1
  a4 b a g
  fis4(g) a2 % B
  b4 a g fis
  fis2(e)
  e4 fis gis a
  a2 gis4(fis)
  e4 gis b d % C
  d2(cis)
  e4 cis a gis
  fis4 d' cis b
  e2 gis,
  a2(g) \bar "||"
  fis4^\markup\smallCaps Chorus. e fis g
  a2 2
  b4 d cis b
  a1
  g4 a b cis
  d2 a
  g4 fis fis e
  d1
}

alto = \relative {
  \autoBeamOff
  d'4 cis d e
  fis2 2
  g4 b a g
  fis1
  e4 g fis e
  d4(e) d2 % B
  d4 fis e d
  d2(cis)
  e4 4 4 4
  s2 2
  e4 4 gis gis % C
  a1
  e4 4 4 eis
  fis4 4 4 4
  gis4(fis) e2 % D
  e4(cis d e) \bar "||"
  d4 cis d e
  d2 fis
  g4 4 4 fis
  e2(fis) % E
  g4 d g e
  d2 2
  b4 d cis cis
  d1
}

tenor = \relative {
  \autoBeamOff
  a4 4 4 4
  a2 d
  d4 g, g a
  d1
  a4 4 cis cis
  d2 2 % B
  d4 4 b b
  a1
  cis4 4 a a
  e4(fis) gis(a)
  b4 4 d b % C
  a1
  a4 4 4 b
  a4 d e d
  b4(a) b(d) % D
  cis4( a b cis)
  d4 e d d
  a2 d
  d4 b cis d
  cis2(c) % E
  b4 a g g
  fis2 a
  b4 4 g g
  fis1
}

bass = \relative {
  \autoBeamOff
  d4 4 4 4
  d2 2
  g4 4 4 4
  d1
  cis4 4 a a
  b2 fis' % B
  g4 4 g, g
  a1
  a'4 4 cis, cis
  b2 4(a)
  gis4 4 e'4 4 % C
  fis1
  cis4 4 4 4
  d4 b cis d
  e2 2 % D
  a,1
  d4 4 b' b
  fis2 d
  g4 4 e e
  a2(d,) % E
  g4 fis e a,
  b2 fis
  g4 4 a a
  d1
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Light and life im -- mor -- tal!
  Hear us as we raise
  Hearts as well as voi -- ces,
  Ming -- ling prayer and praise.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Hear us, Thou that brood -- edst
  O'er the wa -- t'ry deep,
  Wa -- king all cre -- a -- tion
  From its pri -- mal sleep:
  Ho -- ly Spi -- rit, breath -- ing
  Breath of life Di -- vine,
  Breathe in -- to our spr -- rits,
  Blend -- ing them with Thine. __
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  When the sun a -- ris -- eth
  In a cloud -- less sky,
  May we feel Thy pres -- ence,
  Ho -- ly Spi -- rit, nigh;
  Shed Thy ra -- diance o'er us,
  Keep it cloud -- less still,
  Through the day be -- fore us,
  Per -- fect -- ing Thy will. __
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  When the fight is fierc -- est
  In the noon -- tide heat,
  Bear us, Ho -- ly Spi -- rit,
  To our Sa -- viour's feet;
  There to find a re -- fuge
  Till our work is done,
  There to fight a bat -- tle
  Till the bat -- tle's won.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  If the day be fall -- ing
  Sad -- ly as it goes,
  Slow -- ly in its sad -- ness
  Sink -- ing to its close,
  May Thy love in mer -- cy,
  Kind -- ling ere it die,
  Cast a ray of glo -- ry
  O'er our eve -- ning sky.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Morn -- ing, noon, and even -- ing,
  When -- so -- e'er it be,
  Grant us, gra -- cious Spi -- rit,
  Quick -- 'ning life in Thee—
  Life, that gievs us, liv -- ing,
  Life of heav'n -- ly love;
  Life, that brings us, dy -- ing,
  Life from heaven a -- bove.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Hear " "us, " "Thou " "that " brood "edst "
  "\nO'er " "the " wa "t'ry " "deep, "
  "\nWa" "king " "all " cre a "tion "
  "\nFrom " "its " pri "mal " "sleep: "
  "\nHo" "ly " Spi "rit, " breath "ing "
  "\nBreath " "of " "life " Di "vine, "
  "\nBreathe " in "to " "our " spr "rits, "
  "\nBlend" "ing " "them " "with " "Thine. " 
  "\nLight " "and " "life " im mor "tal! "
  "\nHear " "us " "as " "we " "raise "
  "\nHearts " "as " "well " "as " voi "ces, "
  "\nMing" "ling " "prayer " "and " "praise. "

  \set stanza = "2."
  "\nWhen " "the " "sun " a ris "eth "
  "\nIn " "a " cloud "less " "sky, "
  "\nMay " "we " "feel " "Thy " pres "ence, "
  "\nHo" "ly " Spi "rit, " "nigh; "
  "\nShed " "Thy " ra "diance " "o'er " "us, "
  "\nKeep " "it " cloud "less " "still, "
  "\nThrough " "the " "day " be "fore " "us, "
  "\nPer" fect "ing " "Thy " "will. " 
  "\nLight " "and " "life " im mor "tal! "
  "\nHear " "us " "as " "we " "raise "
  "\nHearts " "as " "well " "as " voi "ces, "
  "\nMing" "ling " "prayer " "and " "praise. "

  \set stanza = "3."
  "\nWhen " "the " "fight " "is " fierc "est "
  "\nIn " "the " noon "tide " "heat, "
  "\nBear " "us, " Ho "ly " Spi "rit, "
  "\nTo " "our " Sa "viour's " "feet; "
  "\nThere " "to " "find " "a " re "fuge "
  "\nTill " "our " "work " "is " "done, "
  "\nThere " "to " "fight " "a " bat "tle "
  "\nTill " "the " bat "tle's " "won. "
  "\nLight " "and " "life " im mor "tal! "
  "\nHear " "us " "as " "we " "raise "
  "\nHearts " "as " "well " "as " voi "ces, "
  "\nMing" "ling " "prayer " "and " "praise. "

  \set stanza = "4."
  "\nIf " "the " "day " "be " fall "ing "
  "\nSad" "ly " "as " "it " "goes, "
  "\nSlow" "ly " "in " "its " sad "ness "
  "\nSink" "ing " "to " "its " "close, "
  "\nMay " "Thy " "love " "in " mer "cy, "
  "\nKind" "ling " "ere " "it " "die, "
  "\nCast " "a " "ray " "of " glo "ry "
  "\nO'er " "our " eve "ning " "sky. "
  "\nLight " "and " "life " im mor "tal! "
  "\nHear " "us " "as " "we " "raise "
  "\nHearts " "as " "well " "as " voi "ces, "
  "\nMing" "ling " "prayer " "and " "praise. "

  \set stanza = "5."
  "\nMorn" "ing, " "noon, " "and " even "ing, "
  "\nWhen" so "e'er " "it " "be, "
  "\nGrant " "us, " gra "cious " Spi "rit, "
  "\nQuick" "'ning " "life " "in " "Thee— "
  "\nLife, " "that " "gievs " "us, " liv "ing, "
  "\nLife " "of " heav'n "ly " "love; "
  "\nLife, " "that " "brings " "us, " dy "ing, "
  "\nLife " "from " "heaven " a "bove. "
  "\nLight " "and " "life " im mor "tal! "
  "\nHear " "us " "as " "we " "raise "
  "\nHearts " "as " "well " "as " voi "ces, "
  "\nMing" "ling " "prayer " "and " "praise. "
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
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass }
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
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass }
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
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor \tenor }
          >>
                                % Bass
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
