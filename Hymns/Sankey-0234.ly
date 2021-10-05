\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Let us Sing Again."
  subtitle    = "Sankey No. 234"
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

  poet        = \markup\smallCaps "Lyman G. Cuyler."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% Uncomment for single page version
#(set-global-staff-size 18)

global = {
  \key a \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4  s1*2 s2
  \mark \markup { \box "B" } s2  s1*2
  \mark \markup { \box "C" }     s1*2 s2.
  \mark \markup { \box "D" } s4  s1*2 s2 s8
  \mark \markup { \box "E" } s4. s1*2 s2.
  \mark \markup { \box "F" } s4  s1   s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4
  s1*15
  \tempo 4=100
  s2.
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  e'8. d16
  cis8. e16 a8. b16 cis4 d8. cis16
  b2 fis4 b8. a16
  gis8. 16 8 8 \bar "|" \break gis8 d' cis8. b16
  cis2. e,8. d16 % B
  cis8. e16 a8. b16 cis4 d8. cis16 \break
  b2 fis4 b8. a16 % C
  gis8. 16 8 8 8 d'8 cis8. b16
  a2. \bar "||" \break cis8.^\markup\smallCaps Refrain. d16
  e2~8 cis d8. e16 % D
  d2 b4 8. cis16
  d2~8 \bar "|" \break b8 e8. d16
  cis2. e,8. d16 % E
  cis8. e16 a8 b cis4 d8. cis16
  b2 fis4 \bar "|" \break b8. a16
  gis8. 16 8 8 8 d' cis8. b16 % F
  a2^\markup\italic ritard. ~4
}

alto = \relative {
  \autoBeamOff
  cis'8. b16
  a8. cis16 e8. 16 4 fis8. e16
  d2 4 fis8. 16
  e8. 16 8 8 e8 8 8. 16
  e2. cis8. b16 % B
  a8. cis16 e8. 16 4 fis8. e16
  d2 4 f8. 16 % C
  e8. 16 8 8 8 8 8. d16
  cis2. \once\partCombineApart r4
  \once\partCombineApart r4 a'8. 16 8 e8 8. 16 % D
  e2 4 \once\partCombineApart r
  \once\partCombineApart r4 gis8. 16 8 8 a8. e16
  e2. cis8. b16 % E
  a8. cis16 e8 8 4 fis8. e16
  d2 4 fis8. 16
  e8. 16 8 8 8 8 8. d16 % F
  cis8 e dis d cis4
}

tenor = \relative {
  \autoBeamOff
  a8. e16
  e8. a16 8. gis16 a4 8. 16
  fis2 b4 8. 16
  b8. 16 8 8 8 8 a8. gis16
  a2. 8. e16 % B
  e8. a16 8. gis16 a4 8. 16
  fis2 b4 8. 16 % C
  b8. 16 8 8 8 8 a8. gis16
  a2. r4
  r4 cis8. 16 8 a b8. cis16 % E
  b2 gis4 r
  r4 b8. 16 8 d cis8. b16
  a2. 8. e16 % E
  e8. a16 8 gis a4 8. 16
  fis2 b4 8. 16
  b8. 16 8 8 8 8 a8. gis16
  a8 g fis f e4
}

bass = \relative {
  \autoBeamOff
  a,8. 16
  as8. 16 cis8. e16 a4 a,8. 16
  d2 4 dis8. 16
  e8. 16 8 8 8 8 8. 16
  a,2. 8. 16 % B
  a8. 16 cis8. e16 a4 a,8. 16
  d2 4 8. 16 % C
  e8. 16 8 8 8 8 8. 16
  a,2. r4
  r4 a'8. 16 8 8 8. 16 % D
  e2 4 r
  r4 8. 16 8 8 8. 16
  a,2. 8. 16 % E
  a8. 16 cis8 e a4 a,8. 16
  d2 4 dis8. 16
  e8. 16 8 8 8 8 8. 16 % F
  a,2~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Let us tell __ the won -- drous sto -- ry,
  How He died __ up on the tree;
  Un -- to Him be all the praise and the glo -- ry;
  He hath suf -- fer'd that from sin we might be free. __
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _
  Let us tell _ _ _ _ _
  How He died
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  we might be free.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Let us sing a -- gain the praise of the Sa -- viour,
  How He died that we might know the fa -- ther's love;
  Let us tell to all the world His com -- pas -- sion,
  How He ev -- er lives to plead for us a -- bove.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Let us praise Him for the words full of com -- fort,
  That He left for us re -- cord -- ed long a -- go;
  He is near to ev -- 'ry one that be -- liev -- eth,
  And His mer -- cy to the faith -- ful He will show.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Let us praise Him for the soul- -- cheer -- ing prom -- ise
  Of the man -- sions that our eyes shall yet be -- hold;
  When we ga -- ther with the blest in His king -- dom,
  Where the rich -- es of His grace can ne'er be told.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Let " "us " "sing " a "gain " "the " "praise " "of " "the " Sa "viour, "
  "\nHow " "He " "died " "that " "we " "might " "know " "the " fa "ther's " "love; "
  "\nLet " "us " "tell " "to " "all " "the " "world " "His " com pas "sion, "
  "\nHow " "He " ev "er " "lives " "to " "plead " "for " "us " a "bove. "
  "\nLet " "us " "tell "  "the " won "drous " sto "ry, "
  "\nHow " "He " "died "  "up " "on " "the " "tree; "
  "\nUn" "to " "Him " "be " "all " "the " "praise " "and " "the " glo "ry; "
  "\nHe " "hath " suf "fer'd " "that " "from " "sin " "we " "might " "be " "free. " 

  \set stanza = "2."
  "\nLet " "us " "praise " "Him " "for " "the " "words " "full " "of " com "fort, "
  "\nThat " "He " "left " "for " "us " re cord "ed " "long " a "go; "
  "\nHe " "is " "near " "to " ev "'ry " "one " "that " be liev "eth, "
  "\nAnd " "His " mer "cy " "to " "the " faith "ful " "He " "will " "show. "
  "\nLet " "us " "tell "  "the " won "drous " sto "ry, "
  "\nHow " "He " "died "  "up " "on " "the " "tree; "
  "\nUn" "to " "Him " "be " "all " "the " "praise " "and " "the " glo "ry; "
  "\nHe " "hath " suf "fer'd " "that " "from " "sin " "we " "might " "be " "free. " 

  \set stanza = "3."
  "\nLet " "us " "praise " "Him " "for " "the " soul- cheer "ing " prom "ise "
  "\nOf " "the " man "sions " "that " "our " "eyes " "shall " "yet " be "hold; "
  "\nWhen " "we " ga "ther " "with " "the " "blest " "in " "His " king "dom, "
  "\nWhere " "the " rich "es " "of " "His " "grace " "can " "ne'er " "be " "told. "
  "\nLet " "us " "tell "  "the " won "drous " sto "ry, "
  "\nHow " "He " "died "  "up " "on " "the " "tree; "
  "\nUn" "to " "Him " "be " "all " "the " "praise " "and " "the " glo "ry; "
  "\nHe " "hath " suf "fer'd " "that " "from " "sin " "we " "might " "be " "free. " 
}
  
wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "Let " "us " "sing " a "gain " "the " "praise " "of " "the " Sa "viour, "
  "\nHow " "He " "died " "that " "we " "might " "know " "the " fa "ther's " "love; "
  "\nLet " "us " "tell " "to " "all " "the " "world " "His " com pas "sion, "
  "\nHow " "He " ev "er " "lives " "to " "plead " "for " "us " a "bove. "
  "\nLet " "us " "tell " "the " won "drous " sto "ry, "
  "\nHow " "He " "died " "up " "on " "the " "tree; "
  "\nUn" "to " "Him " "be " "all " "the " "praise " "and " "the " glo "ry; "
  "\nHe " "hath " suf "fer'd " "that " "from " "sin " "we " "might " "be " "free, "
  "\nwe " "might " "be " "free. "

  \set stanza = "2."
  "\nLet " "us " "praise " "Him " "for " "the " "words " "full " "of " com "fort, "
  "\nThat " "He " "left " "for " "us " re cord "ed " "long " a "go; "
  "\nHe " "is " "near " "to " ev "'ry " "one " "that " be liev "eth, "
  "\nAnd " "His " mer "cy " "to " "the " faith "ful " "He " "will " "show. "
  "\nLet " "us " "tell " "the " won "drous " sto "ry, "
  "\nHow " "He " "died " "up " "on " "the " "tree; "
  "\nUn" "to " "Him " "be " "all " "the " "praise " "and " "the " glo "ry; "
  "\nHe " "hath " suf "fer'd " "that " "from " "sin " "we " "might " "be " "free, "
  "\nwe " "might " "be " "free. "

  \set stanza = "3."
  "\nLet " "us " "praise " "Him " "for " "the " soul- cheer "ing " prom "ise "
  "\nOf " "the " man "sions " "that " "our " "eyes " "shall " "yet " be "hold; "
  "\nWhen " "we " ga "ther " "with " "the " "blest " "in " "His " king "dom, "
  "\nWhere " "the " rich "es " "of " "His " "grace " "can " "ne'er " "be " "told. "
  "\nLet " "us " "tell " "the " won "drous " sto "ry, "
  "\nHow " "He " "died " "up " "on " "the " "tree; "
  "\nUn" "to " "Him " "be " "all " "the " "praise " "and " "the " glo "ry; "
  "\nHe " "hath " suf "fer'd " "that " "from " "sin " "we " "might " "be " "free, "
  "\nwe " "might " "be " "free. "
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
            \new NullVoice \alto
            \addlyrics \chorusMen
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
            \new NullVoice { \alto \alto \alto }
            \addlyrics { \chorusMen \chorusMen \chorusMen }
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
            \new NullVoice { \alto \alto \alto }
            \addlyrics { \chorusMen \chorusMen \chorusMen }
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

\book {
  \bookOutputSuffix "midi-alto-tenor"
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
            \addlyrics \wordsMidiAlto
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
  \bookOutputSuffix "midi-bass"
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
            \addlyrics \wordsMidi
          >>
        >>
    \midi {}
  }
}
