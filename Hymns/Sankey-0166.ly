\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "He will Gather the Wheat."
  subtitle    = "Sankey No. 166"
  subsubtitle = "C.C. No. 278"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Jno. R. Sweney."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "H. B. M'Keever."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key f \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*2 s2
  \mark \markup { \box "B" } s2 s1*3
  \mark \markup { \box "C" } s1*3
  \mark \markup { \box "D" } s1*3
  \mark \markup { \box "E" } s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  \slurDashed a'8.(bes16) \slurSolid
  c4 d8. c16 a4 f8. a16
  g4.(f8) d4 4
  c4 f8. 16 \bar "|" \break f4 a8. 16
  g2. \slurDashed a8.(bes16) \slurSolid % B
  c4 d8. c16 a4 f8. a16
  g4.(f8) d4 4
  c4 f8. g16 a4 8. g16 % C
  f2. \bar "||" a8.^\markup\smallCaps Chorus. 16
  bes4 8. 16 4 d8. 16
  c4.(bes8) c4 a8. 16 % D
  g4 c8. 16 e8[d] c b
  c2. a8.[bes16] % FIX?
  c4 d8. c16 a4 f8. a16 % E
  g4.(f8) d4 4
  c4 f8. g16 a4 8. g16
  f2.
}

sopranoSingle = \relative {
  \autoBeamOff
  a'8.(bes16)
  c4 d8. c16 a4 f8. a16
  g4.(f8) d4 4
  c4 f8. 16 \bar "|" \break f4 a8. 16
  g2. a8.(bes16) % B
  c4 d8. c16 a4 f8. a16
  g4.(f8) d4 4
  c4 f8. g16 a4 8. g16 % C
  f2. \bar "||" a8.^\markup\smallCaps Chorus. 16
  bes4 8. 16 4 d8. 16
  c4.(bes8) c4 a8. 16 % D
  g4 c8. 16 e8[d] c b
  c2. a8.[bes16] % FIX?
  c4 d8. c16 a4 f8. a16 % E
  g4.(f8) d4 4
  c4 f8. g16 a4 8. g16
  f2.
% verse 2
  a8. bes16
  c4 d8. c16 a4 f8. a16
  g4.(f8) d4 4
  c4 f8. 16 \bar "|" \break f4 a8. 16
  g2. a8.(bes16) % B
  c4 d8. c16 a4 f8. a16
  g4.(f8) d4 4
  c4 f8. g16 a4 8. g16 % C
  f2. \bar "||" a8.^\markup\smallCaps Chorus. 16
  bes4 8. 16 4 d8. 16
  c4.(bes8) c4 a8. 16 % D
  g4 c8. 16 e8[d] c b
  c2. a8.[bes16] % FIX?
  c4 d8. c16 a4 f8. a16 % E
  g4.(f8) d4 4
  c4 f8. g16 a4 8. g16
  f2.
% verse 3
  a8.(bes16)
  c4 d8. c16 a4 f8. a16
  g4.(f8) d4 4
  c4 f8. 16 \bar "|" \break f4 a8. 16
  g2. a8.(bes16) % B
  c4 d8. c16 a4 f8. a16
  g4.(f8) d4 4
  c4 f8. g16 a4 8. g16 % C
  f2. \bar "||" a8.^\markup\smallCaps Chorus. 16
  bes4 8. 16 4 d8. 16
  c4.(bes8) c4 a8. 16 % D
  g4 c8. 16 e8[d] c b
  c2. a8.[bes16] % FIX?
  c4 d8. c16 a4 f8. a16 % E
  g4.(f8) d4 4
  c4 f8. g16 a4 8. g16
  f2.
% verse 4
  a8.(bes16)
  c4 d8. c16 a4 f8. a16
  g4.(f8) d4 4
  c4 f8. 16 \bar "|" \break f4 a8. 16
  g2. a8. bes16 % B
  c4 d8. c16 a4 f8. a16
  g4.(f8) d4 4
  c4 f8. g16 a4 8. g16 % C
  f2. \bar "||" a8.^\markup\smallCaps Chorus. 16
  bes4 8. 16 4 d8. 16
  c4.(bes8) c4 a8. 16 % D
  g4 c8. 16 e8[d] c b
  c2. a8.[bes16] % FIX?
  c4 d8. c16 a4 f8. a16 % E
  g4.(f8) d4 4
  c4 f8. g16 a4 8. g16
  f2.
}

alto = \relative {
  \autoBeamOff
  \slurDashed f'8.(g16) \slurSolid
  f4 8. 16 4 c8. f16
  d2 bes4 4
  a4 c8. 16 4 f8. 16
  e2. \slurDashed f8.(g16) \slurSolid % B
  a4 bes8. a16 f4 c8. f16
  d2 bes4 4
  a4 c8. 16 f4 e8. 16 % C
  f2. 8. 16
  f4 8. 16 4 8. 16
  f2 4 8. 16 % D
  e4 8. 16 g8[f] e f
  e2. f8. g16 % FIX?
  a4 bes8. a16 f4 c8. f16 % E
  d2 bes4 4
  a4 c8. 16 f4 e8. 16
  f2.
}

altoSingle = \relative {
  \autoBeamOff
  f'8.(g16)
  f4 8. 16 4 c8. f16
  d2 bes4 4
  a4 c8. 16 4 f8. 16
  e2. f8.(g16) % B
  a4 bes8. a16 f4 c8. f16
  d2 bes4 4
  a4 c8. 16 f4 e8. 16 % C
  f2. 8. 16
  f4 8. 16 4 8. 16
  f2 4 8. 16 % D
  e4 8. 16 g8[f] e f
  e2. f8. g16 % FIX?
  a4 bes8. a16 f4 c8. f16 % E
  d2 bes4 4
  a4 c8. 16 f4 e8. 16
  f2. \nl
% verse 2
  f8. g16
  f4 8. 16 4 c8. f16
  d2 bes4 4
  a4 c8. 16 4 f8. 16
  e2. f8.(g16) % B
  a4 bes8. a16 f4 c8. f16
  d2 bes4 4
  a4 c8. 16 f4 e8. 16 % C
  f2. 8. 16
  f4 8. 16 4 8. 16
  f2 4 8. 16 % D
  e4 8. 16 g8[f] e f
  e2. f8. g16 % FIX?
  a4 bes8. a16 f4 c8. f16 % E
  d2 bes4 4
  a4 c8. 16 f4 e8. 16
  f2. \nl
% verse 3
  f8.(g16)
  f4 8. 16 4 c8. f16
  d2 bes4 4
  a4 c8. 16 4 f8. 16
  e2. f8.(g16) % B
  a4 bes8. a16 f4 c8. f16
  d2 bes4 4
  a4 c8. 16 f4 e8. 16 % C
  f2. 8. 16
  f4 8. 16 4 8. 16
  f2 4 8. 16 % D
  e4 8. 16 g8[f] e f
  e2. f8. g16 % FIX?
  a4 bes8. a16 f4 c8. f16 % E
  d2 bes4 4
  a4 c8. 16 f4 e8. 16
  f2. \nl
% verse 4
  f8.(g16)
  f4 8. 16 4 c8. f16
  d2 bes4 4
  a4 c8. 16 4 f8. 16
  e2. f8. g16 % B
  a4 bes8. a16 f4 c8. f16
  d2 bes4 4
  a4 c8. 16 f4 e8. 16 % C
  f2. 8. 16
  f4 8. 16 4 8. 16
  f2 4 8. 16 % D
  e4 8. 16 g8[f] e f
  e2. f8. g16 % FIX?
  a4 bes8. a16 f4 c8. f16 % E
  d2 bes4 4
  a4 c8. 16 f4 e8. 16
  f2.
}

tenor = \relative {
  \autoBeamOff
  \slurDashed c'8.(bes16) \slurSolid
  a4 bes8. a16 c4 a8. c16
  bes2 f4 4
  f4 a8. 16 4 c8. 16
  c2. \slurDashed 8.(16) \slurSolid % B
  f4 8. 16 c4 a8. c16
  bes2 f4 4
  f4 a8. bes16 c4 8. bes16 % C
  a2. c8. 16
  d4 8. 16 4 bes8. 16
  a4.(c8) a4 c8. 16 % D
  c4 8. 16 b4 c8 d
  c2. 4
  f4 8. 16 c4 a8. c16 % E
  bes2 f4 4
  f4 a8. bes16 c4 8. bes16
  a2.
}

tenorSingle = \relative {
  \autoBeamOff
  c'8.(bes16)
  a4 bes8. a16 c4 a8. c16
  bes2 f4 4
  f4 a8. 16 4 c8. 16
  c2. 8.(16) % B
  f4 8. 16 c4 a8. c16
  bes2 f4 4
  f4 a8. bes16 c4 8. bes16 % C
  a2. c8. 16
  d4 8. 16 4 bes8. 16
  a4.(c8) a4 c8. 16 % D
  c4 8. 16 b4 c8 d
  c2. 4
  f4 8. 16 c4 a8. c16 % E
  bes2 f4 4
  f4 a8. bes16 c4 8. bes16
  a2.
% verse 2
  c8. bes16
  a4 bes8. a16 c4 a8. c16
  bes2 f4 4
  f4 a8. 16 4 c8. 16
  c2. 8.(16) % B
  f4 8. 16 c4 a8. c16
  bes2 f4 4
  f4 a8. bes16 c4 8. bes16 % C
  a2. c8. 16
  d4 8. 16 4 bes8. 16
  a4.(c8) a4 c8. 16 % D
  c4 8. 16 b4 c8 d
  c2. 4
  f4 8. 16 c4 a8. c16 % E
  bes2 f4 4
  f4 a8. bes16 c4 8. bes16
  a2.
% verse 3
  c8.(bes16)
  a4 bes8. a16 c4 a8. c16
  bes2 f4 4
  f4 a8. 16 4 c8. 16
  c2. 8.(16) % B
  f4 8. 16 c4 a8. c16
  bes2 f4 4
  f4 a8. bes16 c4 8. bes16 % C
  a2. c8. 16
  d4 8. 16 4 bes8. 16
  a4.(c8) a4 c8. 16 % D
  c4 8. 16 b4 c8 d
  c2. 4
  f4 8. 16 c4 a8. c16 % E
  bes2 f4 4
  f4 a8. bes16 c4 8. bes16
  a2.
% verse 4
  c8.(bes16)
  a4 bes8. a16 c4 a8. c16
  bes2 f4 4
  f4 a8. 16 4 c8. 16
  c2. 8. 16 % B
  f4 8. 16 c4 a8. c16
  bes2 f4 4
  f4 a8. bes16 c4 8. bes16 % C
  a2. c8. 16
  d4 8. 16 4 bes8. 16
  a4.(c8) a4 c8. 16 % D
  c4 8. 16 b4 c8 d
  c2. 4
  f4 8. 16 c4 a8. c16 % E
  bes2 f4 4
  f4 a8. bes16 c4 8. bes16
  a2.
}

bass = \relative {
  \autoBeamOff
  \slurDashed f8.(16) \slurSolid
  f4 8. 16 4 8. 16
  bes,2 4 4
  f'4 8. 16 4 8. 16
  c2. \slurDashed f8.(16) \slurSolid % B
  f4 8. 16 4 8. 16
  bes,2 4 4
  c4 8. 16 4 8. 16 % C
  f2. 8. 16
  bes4 8. 16 4 8. 16
  f2 4 8. 16 % D
  g4 8. 16 4 8 8
  c,2. f4
  f4 8. 16 4 8. 16 % E
  bes,2 4 4
  c4 8. 16 4 8. 16
  f2.
}

bassSingle = \relative {
  \autoBeamOff
  f8.(16)
  f4 8. 16 4 8. 16
  bes,2 4 4
  f'4 8. 16 4 8. 16
  c2. f8.(16) % B
  f4 8. 16 4 8. 16
  bes,2 4 4
  c4 8. 16 4 8. 16 % C
  f2. 8. 16
  bes4 8. 16 4 8. 16
  f2 4 8. 16 % D
  g4 8. 16 4 8 8
  c,2. f4
  f4 8. 16 4 8. 16 % E
  bes,2 4 4
  c4 8. 16 4 8. 16
  f2.
% verse 2
  f8. 16
  f4 8. 16 4 8. 16
  bes,2 4 4
  f'4 8. 16 4 8. 16
  c2. f8.(16) % B
  f4 8. 16 4 8. 16
  bes,2 4 4
  c4 8. 16 4 8. 16 % C
  f2. 8. 16
  bes4 8. 16 4 8. 16
  f2 4 8. 16 % D
  g4 8. 16 4 8 8
  c,2. f4
  f4 8. 16 4 8. 16 % E
  bes,2 4 4
  c4 8. 16 4 8. 16
  f2.
% verse 3
  f8.(16)
  f4 8. 16 4 8. 16
  bes,2 4 4
  f'4 8. 16 4 8. 16
  c2. f8.(16) % B
  f4 8. 16 4 8. 16
  bes,2 4 4
  c4 8. 16 4 8. 16 % C
  f2. 8. 16
  bes4 8. 16 4 8. 16
  f2 4 8. 16 % D
  g4 8. 16 4 8 8
  c,2. f4
  f4 8. 16 4 8. 16 % E
  bes,2 4 4
  c4 8. 16 4 8. 16
  f2.
% verse 4
  f8.(16)
  f4 8. 16 4 8. 16
  bes,2 4 4
  f'4 8. 16 4 8. 16
  c2. f8. 16 % B
  f4 8. 16 4 8. 16
  bes,2 4 4
  c4 8. 16 4 8. 16 % C
  f2. 8. 16
  bes4 8. 16 4 8. 16
  f2 4 8. 16 % D
  g4 8. 16 4 8 8
  c,2. f4
  f4 8. 16 4 8. 16 % E
  bes,2 4 4
  c4 8. 16 4 8. 16
  f2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  He will gath -- er the wheat in His gar -- ner,
  But the chaff will He scat -- ter a -- way;
  Then how shall we stand in the Judg -- ment—
  Oh, how shall we stand in that day?
}

wordsOne = \lyricmode {
  \set stanza = "1."
  When Je -- sus shall ga -- ther the na -- tions
  Be -- fore Him at last to ap -- pear,
  Oh, how shall we stand in the Judg -- ment,
  When sum -- moned our sen -- tence to hear?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  \nom Shall we \yesm hear from the lips of the Sa -- viour
  The words, "\"Faith" -- ful ser -- vant, well "done!\""
  Or, trem -- bling with fear and with an -- guish,
  Be ban -- ished a -- way from His throne?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Then let us be watch -- ing and wait -- ing—
  Our lamps burn -- ing stea -- dy and bright—
  That when we are called by the Bride -- groom,
  We'll an -- swer the call with de -- light.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Thus liv -- ing with hearts fixed on Je -- sus,
  In pa -- tience we wait for the time
  \nom When, the \yesm days of our pil -- grim -- age end -- ed,
  We'll rest in His pre -- sence Di -- vine.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "When " Je "sus " "shall " ga "ther " "the " na "tions "
  "\nBe" "fore " "Him " "at " "last " "to " ap "pear, "
  "\nOh, " "how " "shall " "we " "stand " "in " "the " Judg "ment, "
  "\nWhen " sum "moned " "our " sen "tence " "to " "hear? "
  "\nHe " "will " gath "er " "the " "wheat " "in " "His " gar "ner, "
  "\nBut " "the " "chaff " "will " "He " scat "ter " a "way; "
  "\nThen " "how " "shall " "we " "stand " "in " "the " Judg "ment— "
  "\nOh, " "how " "shall " "we " "stand " "in " "that " "day? "

  \set stanza = "2."
  "\nShall " "we " "hear " "from " "the " "lips " "of " "the " Sa "viour "
  "\nThe " "words, " "\"Faith" "ful " ser "vant, " "well " "done!\" "
  "\nOr, " trem "bling " "with " "fear " "and " "with " an "guish, "
  "\nBe " ban "ished " a "way " "from " "His " "throne? "
  "\nHe " "will " gath "er " "the " "wheat " "in " "His " gar "ner, "
  "\nBut " "the " "chaff " "will " "He " scat "ter " a "way; "
  "\nThen " "how " "shall " "we " "stand " "in " "the " Judg "ment— "
  "\nOh, " "how " "shall " "we " "stand " "in " "that " "day? "

  \set stanza = "3."
  "\nThen " "let " "us " "be " watch "ing " "and " wait "ing— "
  "\nOur " "lamps " burn "ing " stea "dy " "and " "bright— "
  "\nThat " "when " "we " "are " "called " "by " "the " Bride "groom, "
  "\nWe'll " an "swer " "the " "call " "with " de "light. "
  "\nHe " "will " gath "er " "the " "wheat " "in " "His " gar "ner, "
  "\nBut " "the " "chaff " "will " "He " scat "ter " a "way; "
  "\nThen " "how " "shall " "we " "stand " "in " "the " Judg "ment— "
  "\nOh, " "how " "shall " "we " "stand " "in " "that " "day? "

  \set stanza = "4."
  "\nThus " liv "ing " "with " "hearts " "fixed " "on " Je "sus, "
  "\nIn " pa "tience " "we " "wait " "for " "the " "time "
  "\nWhen, " "the " "days " "of " "our " pil grim "age " end "ed, "
  "\nWe'll " "rest " "in " "His " pre "sence " Di "vine. "
  "\nHe " "will " gath "er " "the " "wheat " "in " "His " gar "ner, "
  "\nBut " "the " "chaff " "will " "He " scat "ter " a "way; "
  "\nThen " "how " "shall " "we " "stand " "in " "the " Judg "ment— "
  "\nOh, " "how " "shall " "we " "stand " "in " "that " "day? "
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
            \new NullVoice = "aligner" \sopranoSingle
            \new Voice = "women" \partCombine { \global \sopranoSingle \bar "|." } { \global \altoSingle }
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
            \new Voice = "men" \partCombine { \global \tenorSingle } { \global \bassSingle }
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
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" \sopranoSingle
            \new Voice = "women" \partCombine { \global \sopranoSingle \bar "|." } { \global \altoSingle }
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
            \new Voice = "men" \partCombine { \global \tenorSingle } { \global \bassSingle }
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
            \new Voice { \global \sopranoSingle \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \altoSingle }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenorSingle }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bassSingle }
          >>
        >>
    \midi {}
  }
}
