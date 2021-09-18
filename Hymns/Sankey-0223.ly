\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Holy is the Lord!"
  subtitle    = "Sankey No. 223"
  subsubtitle = "N. H. No. 46"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. B. Bradbury."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% uncomment to fix "repeat" version on one page
% #(set-global-staff-size 19)

global = {
  \key f \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*3
  \mark \markup { \box "B" } s1*3
  \mark \markup { \box "C" } s1*3
  \mark \markup { \box "D" } s1*3
  \mark \markup { \box "E" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'4 4 4 4
  g8. f16 e8. d16 c2
  f4 8. g16 f4 e
  g4 8. e16 g4 f % B
  a4 4 4 4
  g8. f16 e8. d16 c2
  d8. e16 f8. g16 a4 bes8. a16 % C
  g2 f4 r
  c'4 8. f16 4 e
  e4 d8. e16 d4 c % D
  c4 8. f16 4 e
  e4 d8. e16 c2
  a4^\markup\smallCaps Chorus. 4 4 4 % E
  g8. f16 e8. d16 c2
  d8. e16 f8. g16 a4 bes8. a16
  g2 f4 r
}

alto = \relative {
  \autoBeamOff
  f'4 4 4 4
  d8. 16 c8. bes16 a2
  c4 8. 16 4 4
  e4 8. f16 e4 f % B
  f4 4 4 4
  d8. 16 c8. bes16 a2
  bes8. c16 8. f16 4 g8. f16 % C
  e2 f4 r
  a4 8. f16 a4 g
  c4 bes8. c16 bes4 a % D
  a4 8. f16 a4 g
  g4 f8. g16 e2
  f4 4 4 4 % E
  d8. 16 c8. bes16 a2
  bes8. c16 8. f16 4 g8. f16
  e2 f4 r
}

tenor = \relative {
  \autoBeamOff
  c'4 4 4 4
  bes8. 16 f8. 16 2
  a4 8. bes16 a4 g
  c4 8. 16 bes4 a % B
  c4 4 4 4
  bes8. 16 f8. 16 2
  f8. g16 f8. d'16 c4 8. 16 % C
  bes2 a4 r
  c4 8. 16 4 4
  c4 8. 16 4 4 % D
  c4 8. 16 4 4
  c4 b8. 16 c2
  c4 4 4 4 % E
  bes8. 16 f8. 16 2
  f8. g16 f8. d'16 c4 8. 16
  bes2 a4 r
}

bass = \relative {
  \autoBeamOff
  f4 4 4 4
  bes,8. 16 8. 16 f2
  f'4 8. 16 c4 4
  c4 8. 16 4 f % B
  f4 c a f
  bes8. 16 8. 16 f2
  bes8. g16 a8. bes16 c4 8. 16 % C
  c2 f4 r
  f4 8. a16 c4 4
  c,4 8. 16 f4 4 % D
  f4 8. a16 c4 4
  g4 8. 16 c,2
  f4 c a f % E
  bes8. 16 8. 16 f2
  bes8. g16 a8. bes16 c4 8. 16
  c2 f4 r
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Ho -- ly, ho -- ly, ho -- ly is the Lord;
  Let the hills be joy -- ful be -- fore Him!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Ho -- ly, ho -- ly, ho -- ly is the Lord!
  Sing, O ye peo -- ple, glad -- ly a -- dore Him;
  Let the moun -- tain trem -- ble at His word,
  Let the hills be joy -- ful be -- fore Him;
  Migh -- ty in wis -- dom, bound -- less in mer -- cy,
  Great is Je -- ho -- vah, King o -- ver all!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Praise Him, praise Him, shout a -- loud for joy!
  Watch -- man of Zi -- on, her -- ald the sto -- ry;
  Sin and death His king -- dom shall de -- stroy,
  All the earth shall sing of His glo -- ry;
  Praise Him, ye an -- gels, ye who be -- hold Him
  Robed in His splen -- dour, match -- less, di -- vine!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  King e -- ter -- nal, bles -- sed be His name!
  So may His child -- ren glad -- ly a -- dore Him;
  When in heav'n we join the hap -- py strain,
  When we cast our bright crowns be -- foer Him;
  There in His like -- ness joy -- ful a -- wa -- king.
  There we shall see Him, there we shall sing!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Ho" "ly, " ho "ly, " ho "ly " "is " "the " "Lord! "
  "\nSing, " "O " "ye " peo "ple, " glad "ly " a "dore " "Him; "
  "\nLet " "the " moun "tain " trem "ble " "at " "His " "word, "
  "\nLet " "the " "hills " "be " joy "ful " be "fore " "Him; "
  "\nMigh" "ty " "in " wis "dom, " bound "less " "in " mer "cy, "
  "\nGreat " "is " Je ho "vah, " "King " o "ver " "all! "
  "\nHo" "ly, " ho "ly, " ho "ly " "is " "the " "Lord; "
  "\nLet " "the " "hills " "be " joy "ful " be "fore " "Him! "

  \set stanza = "2."
  "\nPraise " "Him, " "praise " "Him, " "shout " a "loud " "for " "joy! "
  "\nWatch" "man " "of " Zi "on, " her "ald " "the " sto "ry; "
  "\nSin " "and " "death " "His " king "dom " "shall " de "stroy, "
  "\nAll " "the " "earth " "shall " "sing " "of " "His " glo "ry; "
  "\nPraise " "Him, " "ye " an "gels, " "ye " "who " be "hold " "Him "
  "\nRobed " "in " "His " splen "dour, " match "less, " di "vine! "
  "\nHo" "ly, " ho "ly, " ho "ly " "is " "the " "Lord; "
  "\nLet " "the " "hills " "be " joy "ful " be "fore " "Him! "

  \set stanza = "3."
  "\nKing " e ter "nal, " bles "sed " "be " "His " "name! "
  "\nSo " "may " "His " child "ren " glad "ly " a "dore " "Him; "
  "\nWhen " "in " "heav'n " "we " "join " "the " hap "py " "strain, "
  "\nWhen " "we " "cast " "our " "bright " "crowns " be "foer " "Him; "
  "\nThere " "in " "His " like "ness " joy "ful " a wa "king. "
  "\nThere " "we " "shall " "see " "Him, " "there " "we " "shall " "sing! "
  "\nHo" "ly, " ho "ly, " ho "ly " "is " "the " "Lord; "
  "\nLet " "the " "hills " "be " joy "ful " be "fore " "Him! "
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
