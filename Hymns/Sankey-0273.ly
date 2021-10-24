\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Dawn of God's Dear Sabbath."
  subtitle    = "Sankey No. 273"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Josiah Booth."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Ada Cambridge."
  meter       = \markup\smallCaps "7.6."
  piece       = \markup\smallCaps "Dawn"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key e \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*5
  \mark \markup { \box "B" }    s1*5
  \mark \markup { \box "C" }    s1*5 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  b'4\omit\mf
  b4 gis e' cis
  b2 gis4 4
  gis4 cis b gis
  fis2. b4
  b4 gis e' cis
  b2 gis4 4 % B
  fis4 b cis ais
  b2. 4
  dis4 cis fis, cis'
  b2 gis4 4
  gis4.^\dim 8 b4 ais % C
  gis2.^\cresc b4
  b4 gis e' cis
  b2 gis4 4
  gis4^\dim b8[a] gis4 fis
  e2.\omit\mf
}

alto = \relative {
  \autoBeamOff
  gis'4
  fis4 e e e
  e2 4 bis
  cis4 e e e
  dis2. 4
  e4 e gis e
  dis4(fis) e e % B
  fis4 dis gis fis
  fis2. dis4
  fis4 e dis dis
  e2 4 fis
  e4.^\dim 8 dis4 cis % C
  b2.^\cresc dis4
  e4 4 4 4
  e2 4 fis
  e4^\dim gis8[fis] e4 dis
  e2.\omit\mf
}

tenor = \relative {
  \autoBeamOff
  b4
  b4 e, gis a
  gis2 b4 fis
  e4 a b b
  b2. a4
  gis4 b b ais
  b2 4 ais % B
  b4 4 e cis
  dis2. b4
  b4 4 4 4
  b2 4 bis
  cis4.\omit\dim 8 gis4 fisis % C
  gis2.\omit\cresc a4
  gis4 e gis a
  b2 4 bis
  cis4\omit\dim 4 b a
  gis2.\omit\mf
}

bass = \relative {
  \autoBeamOff
  e4
  dis4 e cis a
  e'2 4 dis
  cis4 a gis e
  b'2. fis'4
  gis4 e cis fis
  b,4(dis) e cis % B
  dis4 gis e fis
  b,2. 4
  b4 4 b' a
  gis2 e4 dis
  cis4.\omit\dim  8 dis4 4
  gis,2.\omit\cresc fis4
  e4 e'8[dis] cis4 a
  gis2 e4 dis'
  cis4 fis, b b
  e2.\omit\mf
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 6

wordsOne = \lyricmode {
  \set stanza = "1."
  The dawn of God's dear Sab -- bath
  Breaks o'er the earth a -- gain,
  As some sweet sum -- mer morn -- ing
  Af -- ter a night of pain:
  It comes as cool -- ing show -- ers
  To some ex -- haus -- ted land,
  As shade of clus -- tered palm- -- trees
  'Mid wea -- ry wastes of sand.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  O day, when earth -- ly sor -- row
  Is merged in heaven -- ly joy,
  And tri -- al changed to bless -- ing
  That foes may not des -- troyl
  When wanrt is turned to ful -- ness,
  And wea -- ri -- ness to rest;
  And pain to won -- drous rap -- ture,
  Up -- on the sa -- viour's breast.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Lord, we would bring for off -- 'ring,
  Tho' marred with earth -- ly soil,
  A week of earn -- est la -- bour,
  Of ste -- dy faith -- ful toil;
  Fair fruits of self- -- de -- ni -- al,
  Of strong deep loev to Thee,
  Fos -- tered by Thine own Spi -- rit
  In our hu -- mi -- li -- ty.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  And we would bring our bur -- den
  Of sin -- ful thought and deed,
  In Thy pure pre -- sence kneel -- ing,
  From bond -- age to be freed;
  Our hearts' most bit -- ter sor -- row
  For all Thy work un -- done—
  So ma -- ny tal -- ents wast -- ed,
  So few bright lau -- rels won.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  So be it Lord, for ev -- er:
  Oh, may we ev -- er -- more,
  In Je -- sus' ho -- ly pre -- sence,
  His bless -- ed name a -- dore:
  Up -- on His peace -- ful Sab -- bath,
  With -- in His tem -- ple walls,
  Type of the stain -- less wor -- ship
  In Zi -- on's gol -- den halls;
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  So that in joy and glad -- ness
  We reach that home at last,
  When life's short week of sor -- row,
  And sin, and strife is past;
  When an -- gel- -- hands have gath -- ered
  The fair ripe fruit for Thee,
  O Fa -- ther, Lord, Re -- deem -- er,
  Most Ho -- ly Tri -- ni -- ty.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "The " "dawn " "of " "God's " "dear " Sab "bath "
  "\nBreaks " "o'er " "the " "earth " a "gain, "
  "\nAs " "some " "sweet " sum "mer " morn "ing "
  "\nAf" "ter " "a " "night " "of " "pain: "
  "\nIt " "comes " "as " cool "ing " show "ers "
  "\nTo " "some " ex haus "ted " "land, "
  "\nAs " "shade " "of " clus "tered " palm- "trees "
  "\n'Mid " wea "ry " "wastes " "of " "sand. "

  \set stanza = "2."
  "\nO " "day, " "when " earth "ly " sor "row "
  "\nIs " "merged " "in " heaven "ly " "joy, "
  "\nAnd " tri "al " "changed " "to " bless "ing "
  "\nThat " "foes " "may " "not " des "troyl "
  "\nWhen " "wanrt " "is " "turned " "to " ful "ness, "
  "\nAnd " wea ri "ness " "to " "rest; "
  "\nAnd " "pain " "to " won "drous " rap "ture, "
  "\nUp" "on " "the " sa "viour's " "breast. "

  \set stanza = "3."
  "\nLord, " "we " "would " "bring " "for " off "'ring, "
  "\nTho' " "marred " "with " earth "ly " "soil, "
  "\nA " "week " "of " earn "est " la "bour, "
  "\nOf " ste "dy " faith "ful " "toil; "
  "\nFair " "fruits " "of " self- de ni "al, "
  "\nOf " "strong " "deep " "loev " "to " "Thee, "
  "\nFos" "tered " "by " "Thine " "own " Spi "rit "
  "\nIn " "our " hu mi li "ty. "

  \set stanza = "4."
  "\nAnd " "we " "would " "bring " "our " bur "den "
  "\nOf " sin "ful " "thought " "and " "deed, "
  "\nIn " "Thy " "pure " pre "sence " kneel "ing, "
  "\nFrom " bond "age " "to " "be " "freed; "
  "\nOur " "hearts' " "most " bit "ter " sor "row "
  "\nFor " "all " "Thy " "work " un "done— "
  "\nSo " ma "ny " tal "ents " wast "ed, "
  "\nSo " "few " "bright " lau "rels " "won. "

  \set stanza = "5."
  "\nSo " "be " "it " "Lord, " "for " ev "er: "
  "\nOh, " "may " "we " ev er "more, "
  "\nIn " Je "sus' " ho "ly " pre "sence, "
  "\nHis " bless "ed " "name " a "dore: "
  "\nUp" "on " "His " peace "ful " Sab "bath, "
  "\nWith" "in " "His " tem "ple " "walls, "
  "\nType " "of " "the " stain "less " wor "ship "
  "\nIn " Zi "on's " gol "den " "halls; "

  \set stanza = "6."
  "\nSo " "that " "in " "joy " "and " glad "ness "
  "\nWe " "reach " "that " "home " "at " "last, "
  "\nWhen " "life's " "short " "week " "of " sor "row, "
  "\nAnd " "sin, " "and " "strife " "is " "past; "
  "\nWhen " an gel- "hands " "have " gath "ered "
  "\nThe " "fair " "ripe " "fruit " "for " "Thee, "
  "\nO " Fa "ther, " "Lord, " Re deem "er, "
  "\nMost " Ho "ly " Tri ni "ty. "
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
            \new Lyrics \lyricsto "aligner"   \wordsSix
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
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
