\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "What a Gathering!"
  subtitle    = "Sankey No. 159"
  subsubtitle = "Sankey 880 No. 604"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1 s2.
  \mark \markup { \box "B" } s4 s1 s1
  \mark \markup { \box "C" } s1 s2.
  \mark \markup { \box "D" } s4 s1 s2.
  \mark \markup { \box "E" } s4 s1
  \mark \markup { \box "F" } s1 s2
  \mark \markup { \box "G" } s2 s1
  \mark \markup { \box "H" } s1 s2.
  \mark \markup { \box "I" } s4 s1 s2.
}

TempoTrack = {
%  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4 s1*13
  s2 \tempo 4=40 s4 \tempo 4=120 s4
  s1
  s2.
}

nl = { \bar "||" \break }

%br = { \bar "|" \break }
br = {}

soprano = \relative {
  \autoBeamOff
  e'8 f
  g8 8 8 8 8 e' d c
  a8 8 8 b c4 \br b8 a
  g8 8 8 8 c c b c % B
  d2. \br c8 d
  e8 f e d c c b c % C
  d8 c b a g4  \br e8 f
  g8 c c c c b a8. b16 % D
  c2. \br e,8.^\markup\smallCaps Chorus f16
  g2 c4 e8. 16 \br % E
  d2 a4 c8. 16 % F
  b8 8 8 8 \br b8 g a b
  c16 8. 8. a16 g4 e8. f16 \br % G
  g2 c4 e8. 16 % H
  d4(e) f4\fermata \br e8 d
  c8 8 8 8 16 b8. a b16 % I
  c2.
}

alto = \relative {
  \autoBeamOff
  c'8 d
  e8 8 8 8 8 g g g
  f8 8 8 g a4 g8 f
  e8 8 8 8 8 g f e % B
  g2. 8 8
  g8 a g g g g f e % C
  f8 8 g f e4 c8 d
  e8 8 8 g f f f8. 16 % D
  e2. c8. 16
  e2 4 g8. 16 % E
  f2 4 fis8. 16 % F
  g8 8 8 8 8 8 f f
  e16 8. 8. 16 e4 c8. d16 % G
  e2 4 g8. 16 % H
  a2 4\fermata g8 f
  e8 8 8 8 f16 8. 8. 16
  e2.
}

tenor = \relative {
  \autoBeamOff
  g8 8
  c8 8 8 8 8 g b c
  c8 8 8 8 4 8 8
  c8 8 8 8 g c g g % B
  b2. c8 b
  c8 8 8 b c c g g % C
  a8 8 b c c4 g8 8
  c8 g g c d d d8. g,16 % D
  g2. 8. 16
  c8 8 8 8 g g c8. 16 % E
  a8 8 8 8 c c d8. 16 % F
  d8 8 8 8 8 b c d
  c16 g8. a c16 4 g8. 16 % G
  c8 8 8 8 g g c8. 16 % H
  c4(cis) d\fermata a8 8
  g8 8 8 8 d16 8. 8. g16 % I
  g2.
}

bass = \relative {
  \autoBeamOff
  c8 8
  c8 8 8 8 8 8 d e
  f8 8 8 8 f4 8 8
  c8 8 8 8 8 e d c % B
  g'2. e8 d
  c8 8 8 f e e d c % C
  f8 8 8 8 c4 8 8
  c8 8 8 e g g g8. 16 % D
  c,2. 8. 16
  c8 8 8 8 8 8 8. 16 % E
  f8 8 8 8 8 8 d8. 16 % F
  g8 8 8 8 8 8 8 8
  c,16 8. f f16 c4 8. 16 % G
  c8 8 8 8 8 8 8. 16 % H
  f4(e) d\fermata e8 f
  g8 8 8 8 g,16 8. 8. 16 % I
  c2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  What a gath -- 'ring!
  what a gath -- 'ring!
  What a gath -- 'ring of the ran -- somed
  in the sum -- mer land of love!
  What a gath -- 'ring!
  what a gath -- 'ring!
  Of the ran -- somed in that hap -- py home a -- bove!
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  What a gath -- 'ring!
  what a gath -- 'ring!
  what a gath -- 'ring!
  what a gath -- 'ring!
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _  
  What a gath -- 'ring!
  what a gath -- 'ring!
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
}

wordsOne = \lyricmode {
  \set stanza = "1."
  On that bright and gol -- den morn -- ing
  when the Son of Man shall come,
  And the ra -- diance of His glo -- ry we shall see;
  When from ev -- 'ry clime and na -- tion
  He shall call His peo -- ple home—
  What a gath -- 'ring of the ran -- somed that will be!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  When the blest who sleep in Je -- sus
  at His bid -- ding shall a -- rise
  From the si -- lence of the grave,
  and from the sea;
  And with bod -- ies all ce -- les -- tial
  they shall meet Him in the skies—
  What a gath -- 'ring and re -- joic -- ing there will be!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  When our eyes be -- hold the Ci -- ty,
  with its "\"ma" -- ny man -- "sions\"" bright,
  And its riv -- er, calm and rest -- ful,
  flow -- ing free—
  When the friends that death has part -- ed
  shall in bliss a -- gain u -- nite—
  What a gath -- 'ring and a greet -- ing there will be!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Oh, the King is sure -- ly com -- ing,
  and the time is draw -- ing nigh,
  When the bles -- sed day of prom -- ise we shall see;
  Then the chang -- ing "\"in" a mo -- "ment,\""
  "\"in" the twink -- ling of and "eye.\""
  And for -- ev -- er in His pre -- sence we shall be.
}

wordsMidiWomen = \lyricmode {
  \set stanza = "1."
  "On " "that " "bright " "and " gol "den " morn "ing "
  "\nwhen " "the " "Son " "of " "Man " "shall " "come, "
  "\nAnd " "the " ra "diance " "of " "His " glo "ry " "we " "shall " "see; "
  "\nWhen " "from " ev "'ry " "clime " "and " na "tion "
  "\nHe " "shall " "call " "His " peo "ple " "home— "
  "\nWhat " "a " gath "'ring " "of " "the " ran "somed " "that " "will " "be! "
  "\nWhat " "a " gath "'ring! "
  "\nwhat " "a " gath "'ring! "
  "\nWhat " "a " gath "'ring " "of " "the " ran "somed "
  "\nin " "the " sum "mer " "land " "of " "love! "
  "\nWhat " "a " gath "'ring! "
  "\nwhat " "a " gath "'ring! "
  "\nOf " "the " ran "somed " "in " "that " hap "py " "home " a "bove! "

  \set stanza = "2."
  "\nWhen " "the " "blest " "who " "sleep " "in " Je "sus "
  "\nat " "His " bid "ding " "shall " a "rise "
  "\nFrom " "the " si "lence " "of " "the " "grave, "
  "\nand " "from " "the " "sea; "
  "\nAnd " "with " bod "ies " "all " ce les "tial "
  "\nthey " "shall " "meet " "Him " "in " "the " "skies— "
  "\nWhat " "a " gath "'ring " "and " re joic "ing " "there " "will " "be! "
  "\nWhat " "a " gath "'ring! "
  "\nwhat " "a " gath "'ring! "
  "\nWhat " "a " gath "'ring " "of " "the " ran "somed "
  "\nin " "the " sum "mer " "land " "of " "love! "
  "\nWhat " "a " gath "'ring! "
  "\nwhat " "a " gath "'ring! "
  "\nOf " "the " ran "somed " "in " "that " hap "py " "home " a "bove! "

  \set stanza = "3."
  "\nWhen " "our " "eyes " be "hold " "the " Ci "ty, "
  "\nwith " "its " "\"ma" "ny " man "sions\" " "bright, "
  "\nAnd " "its " riv "er, " "calm " "and " rest "ful, "
  "\nflow" "ing " "free— "
  "\nWhen " "the " "friends " "that " "death " "has " part "ed "
  "\nshall " "in " "bliss " a "gain " u "nite— "
  "\nWhat " "a " gath "'ring " "and " "a " greet "ing " "there " "will " "be! "
  "\nWhat " "a " gath "'ring! "
  "\nwhat " "a " gath "'ring! "
  "\nWhat " "a " gath "'ring " "of " "the " ran "somed "
  "\nin " "the " sum "mer " "land " "of " "love! "
  "\nWhat " "a " gath "'ring! "
  "\nwhat " "a " gath "'ring! "
  "\nOf " "the " ran "somed " "in " "that " hap "py " "home " a "bove! "

  \set stanza = "4."
  "\nOh, " "the " "King " "is " sure "ly " com "ing, "
  "\nand " "the " "time " "is " draw "ing " "nigh, "
  "\nWhen " "the " bles "sed " "day " "of " prom "ise " "we " "shall " "see; "
  "\nThen " "the " chang "ing " "\"in " "a " mo "ment,\" "
  "\n\"in " "the " twink "ling " "of " "and " "eye.\" "
  "\nAnd " for ev "er " "in " "His " pre "sence " "we " "shall " "be. "
  "\nWhat " "a " gath "'ring! "
  "\nwhat " "a " gath "'ring! "
  "\nWhat " "a " gath "'ring " "of " "the " ran "somed "
  "\nin " "the " sum "mer " "land " "of " "love! "
  "\nWhat " "a " gath "'ring! "
  "\nwhat " "a " gath "'ring! "
  "\nOf " "the " ran "somed " "in " "that " hap "py " "home " a "bove! "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "On " "that " "bright " "and " gol "den " morn "ing "
  "\nwhen " "the " "Son " "of " "Man " "shall " "come, "
  "\nAnd " "the " ra "diance " "of " "His " glo "ry " "we " "shall " "see; "
  "\nWhen " "from " ev "'ry " "clime " "and " na "tion "
  "\nHe " "shall " "call " "His " peo "ple " "home— "
  "\nWhat " "a " gath "'ring " "of " "the " ran "somed " "that " "will " "be! "
  "\nWhat " "a " gath "'ring! "
  "\nwhat " "a " gath "'ring! "
  "\nwhat " "a " gath "'ring! "
  "\nwhat " "a " gath "'ring! "
  "\nWhat " "a " gath "'ring " "of " "the " ran "somed "
  "\nin " "the " sum "mer " "land " "of " "love! "
  "\nWhat " "a " gath "'ring! "
  "\nwhat " "a " gath "'ring! "
  "\nwhat " "a " gath "'ring! "
  "\nOf " "the " ran "somed " "in " "that " hap "py " "home " a "bove! "

  \set stanza = "2."
  "\nWhen " "the " "blest " "who " "sleep " "in " Je "sus "
  "\nat " "His " bid "ding " "shall " a "rise "
  "\nFrom " "the " si "lence " "of " "the " "grave, "
  "\nand " "from " "the " "sea; "
  "\nAnd " "with " bod "ies " "all " ce les "tial "
  "\nthey " "shall " "meet " "Him " "in " "the " "skies— "
  "\nWhat " "a " gath "'ring " "and " re joic "ing " "there " "will " "be! "
  "\nWhat " "a " gath "'ring! "
  "\nwhat " "a " gath "'ring! "
  "\nwhat " "a " gath "'ring! "
  "\nwhat " "a " gath "'ring! "
  "\nWhat " "a " gath "'ring " "of " "the " ran "somed "
  "\nin " "the " sum "mer " "land " "of " "love! "
  "\nWhat " "a " gath "'ring! "
  "\nwhat " "a " gath "'ring! "
  "\nwhat " "a " gath "'ring! "
  "\nOf " "the " ran "somed " "in " "that " hap "py " "home " a "bove! "

  \set stanza = "3."
  "\nWhen " "our " "eyes " be "hold " "the " Ci "ty, "
  "\nwith " "its " "\"ma" "ny " man "sions\" " "bright, "
  "\nAnd " "its " riv "er, " "calm " "and " rest "ful, "
  "\nflow" "ing " "free— "
  "\nWhen " "the " "friends " "that " "death " "has " part "ed "
  "\nshall " "in " "bliss " a "gain " u "nite— "
  "\nWhat " "a " gath "'ring " "and " "a " greet "ing " "there " "will " "be! "
  "\nWhat " "a " gath "'ring! "
  "\nwhat " "a " gath "'ring! "
  "\nwhat " "a " gath "'ring! "
  "\nwhat " "a " gath "'ring! "
  "\nWhat " "a " gath "'ring " "of " "the " ran "somed "
  "\nin " "the " sum "mer " "land " "of " "love! "
  "\nWhat " "a " gath "'ring! "
  "\nwhat " "a " gath "'ring! "
  "\nwhat " "a " gath "'ring! "
  "\nOf " "the " ran "somed " "in " "that " hap "py " "home " a "bove! "

  \set stanza = "4."
  "\nOh, " "the " "King " "is " sure "ly " com "ing, "
  "\nand " "the " "time " "is " draw "ing " "nigh, "
  "\nWhen " "the " bles "sed " "day " "of " prom "ise " "we " "shall " "see; "
  "\nThen " "the " chang "ing " "\"in " "a " mo "ment,\" "
  "\n\"in " "the " twink "ling " "of " "and " "eye.\" "
  "\nAnd " for ev "er " "in " "His " pre "sence " "we " "shall " "be. "
  "\nWhat " "a " gath "'ring! "
  "\nwhat " "a " gath "'ring! "
  "\nwhat " "a " gath "'ring! "
  "\nwhat " "a " gath "'ring! "
  "\nWhat " "a " gath "'ring " "of " "the " ran "somed "
  "\nin " "the " sum "mer " "land " "of " "love! "
  "\nWhat " "a " gath "'ring! "
  "\nwhat " "a " gath "'ring! "
  "\nwhat " "a " gath "'ring! "
  "\nOf " "the " ran "somed " "in " "that " hap "py " "home " a "bove! "
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
            \new NullVoice \tenor
            \addlyrics \chorusMen
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
            \new NullVoice { \tenor \tenor \tenor \tenor }
            \addlyrics { \chorusMen \chorusMen \chorusMen \chorusMen }
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
            \new NullVoice { \tenor \tenor \tenor \tenor }
            \addlyrics { \chorusMen \chorusMen \chorusMen \chorusMen }
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
  \bookOutputSuffix "midi-women"
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
            \addlyrics \wordsMidiWomen
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

\book {
  \bookOutputSuffix "midi-men"
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
            \addlyrics \wordsMidiMen
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
