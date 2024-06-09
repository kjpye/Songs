\version "2.25.16"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "O Happy Day!"
  subtitle    = "Sankey No. 866"
  subsubtitle = "Sankey 880 No. 65"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

%  composer    = \markup\smallCaps "composer"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "P. Doddridge."
  meter       = \markup\smallCaps "L.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 3/2
  \partial 2.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2. s1.*3 s2.
  \textMark \markup { \box \bold "B" } s2. s1.*3 s2.
  \textMark \markup { \box \bold "C" } s2. s1.*3 s2.
  \textMark \markup { \box \bold "D" } s2. s1.*3 s2.
  \textMark \markup { \box \bold "E" } s2. s1.*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  d'4 g a | b2. d,4 g a | b2. 4 c b | a2. g4 b a | g2. \bar "|" \break
  d4 g a | b2. d,4 g a | b2. 4 c b | a2. g4 b a | g2.
  \section \sectionLabel \markup\smallCaps Chorus. \break
  r4 b4. c8 | d1 g,4. a8 | b2. 4 c b | a2. g4 b a | g2. \bar "|" \break
  d'4 4 4 | 2. 4 e d | b2. d4 4 4 | 2. 4 e d | b2. \bar "|" \break
  r4 b4. c8 | d1 g,4. a8 | b2. 4 c b | a2. g4 b a | g2.
}

alto = \relative {
  d'4 4 4 | 2. 4 4 4 | 2. g4 4 4 | fis2. g4 g fis | d2.
  d4 4 4 | 2. 4 4 4 | 2. g4 4 4 | fis2. g4 g fis | g2. \section
  r4 g4. 8 | 1 4. fis8 | g2. 4 4 4 | fis2. g4 g fis | g2.
  g4 4 4 | 2. 4 4 4 | 2. 4 4 4 | 2. 4 4 4 | 2.
  r4 g4. 8 | 1 4. fis8 | g2. 4 4 4 | fis2. g4 4 fis | d2.
}

tenor = \relative {
  d4 g fis | g2. fis4 g fis | g2. d'4 e d | 2. b4 d c | b2.
  d,4 g fis | g2. fis4 g fis | g2. d'4 e d | 2. b4 d c | b2. \section
  r4 g4. a8 | b1 4. c8 | d2. 4 e d | 2. b4 d c | b2.
  b4 4 4 | 2. 4 c b | d2. b4 4 4 | 2. 4 c b | g2.
  r4 d'4. c8 | b1 d4. 8 | 2. 4 e d | c2. b4 d c | b2.
}

bass = \relative {
  d4 b d | g2. d4 b d | g2. 4 4 4 | d2. e4 d d | g,2.
  d'4 b d | g2. d4 b d | g2. 4 4 4 | d2. e4 d d | g,2.
  r4 g'4. 8 | 1 4. d8 | g2. 4 4 4 | d2. e4 d d | g,2. \section
  g'4 4 4 | 2. 4 4 4 | 2. 4 4 4 | 2. 4 4 4 | 2.
  r4 g4. a8 | b1 4. a8 | g2. 4 4 4 | d2. e4 d d | g,2.
}

chorus = \lyricmode {
  Hap -- py day! hap -- py day!
  When Je -- sus washed my sins a -- way!
  He taught me how to watch and pray,
  And live re -- joic -- ing ev -- ry day:
  Hap -- py day! hap -- py day!
  When Je -- sus washed my sins a -- way!
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  O hap -- py day, that fixed my choice
  On Thee, my Sa -- viour and my God!
  Well may this glow -- ing heart re -- joice,
  And tell its rap -- tures all a -- broad,
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  ’Tis done, the great tran -- sac -- tion’s done—
  I am my Lord’s, and He is mine;
  He drew me, and I fol -- lowed on,
  Charmed to con -- fess the voice Di -- vine.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Now rest, my long- div -- i -- ded heart,
  Fixed on this bliss -- ful cen -- tre, rest;
  Nor ev -- er from thy Lord de -- part,
  With Him ov ev -- ’ry good poss -- essed.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  High heaven, that heard the sol -- emn vow,
  That vow re -- newed shall dai -- ly hear,
  Till in lief’s la -- test hour I bow,
  And bless in death a bond so clear.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " hap "py " "day, " "that " "fixed " "my " "choice "
  "\nOn " "Thee, " "my " Sa "viour " "and " "my " "God! "
  "\nWell " "may " "this " glow "ing " "heart " re "joice, "
  "\nAnd " "tell " "its " rap "tures " "all " a "broad, "
  "\nHap" "py " "day! " hap "py " "day! "
  "\nWhen " Je "sus " "washed " "my " "sins " a "way! "
  "\nHe " "taught " "me " "how " "to " "watch " "and " "pray, "
  "\nAnd " "live " re joic "ing " ev "ry " "day: "
  "\nHap" "py " "day! " hap "py " "day! "
  "\nWhen " Je "sus " "washed " "my " "sins " a "way!\n"

  \set stanza = "2."
  "\n’Tis " "done, " "the " "great " tran sac "tion’s " "done— "
  "\nI " "am " "my " "Lord’s, " "and " "He " "is " "mine; "
  "\nHe " "drew " "me, " "and " "I " fol "lowed " "on, "
  "\nCharmed " "to " con "fess " "the " "voice " Di "vine. "
  "\nHap" "py " "day! " hap "py " "day! "
  "\nWhen " Je "sus " "washed " "my " "sins " a "way! "
  "\nHe " "taught " "me " "how " "to " "watch " "and " "pray, "
  "\nAnd " "live " re joic "ing " ev "ry " "day: "
  "\nHap" "py " "day! " hap "py " "day! "
  "\nWhen " Je "sus " "washed " "my " "sins " a "way!\n"

  \set stanza = "3."
  "\nNow " "rest, " "my " long div i "ded " "heart, "
  "\nFixed " "on " "this " bliss "ful " cen "tre, " "rest; "
  "\nNor " ev "er " "from " "thy " "Lord " de "part, "
  "\nWith " "Him " "ov " ev "’ry " "good " poss "essed. "
  "\nHap" "py " "day! " hap "py " "day! "
  "\nWhen " Je "sus " "washed " "my " "sins " a "way! "
  "\nHe " "taught " "me " "how " "to " "watch " "and " "pray, "
  "\nAnd " "live " re joic "ing " ev "ry " "day: "
  "\nHap" "py " "day! " hap "py " "day! "
  "\nWhen " Je "sus " "washed " "my " "sins " a "way!\n"

  \set stanza = "4."
  "\nHigh " "heaven, " "that " "heard " "the " sol "emn " "vow, "
  "\nThat " "vow " re "newed " "shall " dai "ly " "hear, "
  "\nTill " "in " "lief’s " la "test " "hour " "I " "bow, "
  "\nAnd " "bless " "in " "death " "a " "bond " "so " "clear. "
  "\nHap" "py " "day! " hap "py " "day! "
  "\nWhen " Je "sus " "washed " "my " "sins " a "way! "
  "\nHe " "taught " "me " "how " "to " "watch " "and " "pray, "
  "\nAnd " "live " re joic "ing " ev "ry " "day: "
  "\nHap" "py " "day! " hap "py " "day! "
  "\nWhen " Je "sus " "washed " "my " "sins " a "way! "
}

wordsMidiMen = \lyricmode {
}

\book {
  \paper {
    output-suffix = midi
  }
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack     }
            \new Voice { \global \repeat-verses \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat-verses \verses \alto \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat-verses \verses \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat-verses \verses \bass }
          >>
        >>
    \midi { \context { \Staff autoBeaming = ##f } }
  }
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
            \new NullVoice = alignerT { \keepWithTag #'dash \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat-verses \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses \soprano \bar "|." }
                                    { \global \repeat-verses \verses { \alto \nl } \bar "|." }
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
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses { \tenor \nl } }
                                    { \global \repeat-verses \verses \bass }
            \new NullVoice = alignerT { \repeat-verses \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \paper {
    output-suffix = single
  }
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}

\book {
  \paper {
    output-suffix = singlepage
  }
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
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}
