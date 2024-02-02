\version "2.25.12"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Church's Rallying Song."
  subtitle    = "Sankey No. 810"
  subsubtitle = "C. C. No. 240"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Jno. R. Sweney."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 4/4
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s8 s1*2
  \textMark \markup { \box \bold "B" }    s1*3
  \textMark \markup { \box \bold "C" }    s1*2
  \textMark \markup { \box \bold "D" }    s1*3
  \textMark \markup { \box \bold "E" }    s1*3
  \textMark \markup { \box \bold "F" }    s1*3
  \textMark \markup { \box \bold "G" }    s1*3
  \textMark \markup { \box \bold "H" }    s1*2 s2
  \textMark \markup { \box \bold "I" } s2 s1*2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff \partial 8
  g'8 | c4. g8 c4. g8 | c8. e,16 f8. g16 a8. g16 e8. c16 |
  g'4. a8 b4. c8 | d8. cis16 d8. e16 d4. g,8 | c4. g8 c4. g8 |
  c8. e,16 f8. g16 a8. g16 e8. c16 | a'8. gis16 a8. b16 c8. b16 c8. d16 |
  e4 d c r |
  \section \sectionLabel \markup\smallCaps Chorus.
  g2 e4 e'8. c16 | g2 e4 r |
  f2 d8. f16 b8. a16 | g4. a8 g8. f16 e8. f16 | g2 e4 e'8. c16 |
  g2 e4 c' | b8. a16 b8. c16 d8. c16 b8. a16 | g2. r4 |
  f'4. d8 b8. g16 a8. b16 | c8. b16 c8. d16 e2 | f4. d8 b8. g16 a8. b16 |
  c8. b16 c8. d16 e2 | a,8. gis16 a8. b16 c8. b16 a4 | b8. a16 b8. c16 \bar "|" \break
  d8. c16 b4 | a8. gis16 a8. b16 c8. b16 c8. d16 | e4 d c\fermata r |
}

alto = \relative {
  \autoBeamOff
  e'8 | 4. 8 4. 8 | e8. 16 f8. g16 a8. g16 e8. c16 |
  d4. 8 g4. 8 | 8. 16 8. 16 4. 8 | e4. 8 4. 8 |
  e8. 16 f8. g16 a8. g16 e8. c16 | f8. 16 8. g16 a8. 16 8. 16 |
  g4 f e r \section | 2 c4 g'8. e16 | e2 c4 r |
  d2 b8. d16 g8. f16 | e4. f8 e8. d16 c8. d16 | e2 c4 g'8. e16 |
  e2 c4 e | d8. 16 8. 16 8. 16 8. 16 | 2. r4 |
  g4. 8 8. e16 f8. 16 | e8. d16 e8. f16 g2 | 4. 8 8. e16 f8. 16 |
  e8. d16 e8. f16 g2 |a8. gis16 a8. b16 c8. b16 a4 | e8. 16 8. 16
  e8. a16 gis4 | f8. f16 8. 16 a8. 16 8. 16 | g4 f e\fermata r4 |
}

tenor = \relative {
  \autoBeamOff
  c'8 | g4. c8 g4. c8 | g8. e16 f8. g16 a8. g16 e8. c'16 |
  b4. c8 d4. e8 | b8. ais16 b8. c16 b4. g8 | 4. c8 g4. c8 |
  g8. e16 f8. g16 a8. g16 e8. c16 | c'8. b16 c8. d16 8. 16 8. c16 |
  c4 b c r \section | c4 c g r | c c g e |
  b'4 4 g8. 16 8. b16 | c4. 8 8. g16 8. 16 | 4 4 4 r |
  c4 c g g | 8. fis16 g8. a16 b8. a16 g8. c16 | b4 8. 16 4 r |
  b4. 8 d8. b16 c8. d16 | c8. g16 8. 16 c2 | b4. 8 d8. b16 c8. d16 |
  c8. g16 8. 16 c2 | a8. gis16 a8. b16 c8. b16 a4 | gis8. fis16 g8. a16
  b8. e16 4 | c8. b16 c8. d16 8. 16 8. c16 | 4 b c\fermata r |
}

bass = \relative {
  \autoBeamOff
  c8 | 4. 8 4. 8 | 8. e16 f8. g16 a8. g16 e8. c16 |
  g'4. 8 4. 8 | 8. 16 8. 16 4. 8 | c,4. 8 4. 8 |
  c8. e16 f8. g16 a8. g16 e8. c16 | f8. 16 8. 16 fis8. 16 8. 16 |
  g4 g c, r \section | c c c r | c c c c |
  g4 4 8. 16 8. 16 | c4. 8 8. 16 8. 16 | 4 4 4 r |
  c4 c c c | d8. 16 8. 16 8. 16 8. 16 | g4 8. 16 4 r |
  g4. 8 8. 16 8. 16 | c,8. 16 8. 16 2 | g'4. 8 8. 16 8. 16 |
  c,8. 16 8. 16 2 | a'8. fis16 a8. b16 c8. b16 a4 | e8. 16 8. 16
  e8. 16 4 | f8. 16 8. 16 fis8. 16 8. 16 | g4 \chord <g, g'> <c g'>\fermata \auto r |
}

chorus = \lyricmode {
  On, __ on, swell the cho -- rus!
  On, __ on, the Morn -- ing Star is shi -- ning o'er us!
  On, __ on, while be -- fore __ us
  Our migh -- ty, migh -- ty Sa -- viour leads the way! __
  Glo -- ry, glo -- ry! hear the ev -- er -- last -- ing throng
  Shout “Ho -- san -- na” while we bold -- ly march a -- long!
  Faith -- ful sol -- diers here be -- low,
  On -- ly Je -- sus will we know,
  Shout -- ing hal -- le -- lu -- jahs as we on -- ward go!
}

chorusMen = \lyricmode {
  \tiny
  \repeat unfold 46 \skip 1
  On, on, on, swell the cho -- rus!
  On, on, on,
  \repeat unfold 9 \skip 1
  On, on, on, while be -- fore
  \repeat unfold 10 \skip 1
  leads the way!
  \repeat unfold 47 \skip 1
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  A -- wake! a -- wake! the Mas -- ter now is call -- ing us;
  A -- rise! a -- rise! and, trust -- ing in His word,
  Go forth, go forth! pro -- claim the year of ju -- bi -- lee,
  And take the Word, the bless -- ed Word of Christ our Lord.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  A cry for light from dy -- ing ones in hea -- then lands:
  It comes, it comes a -- cross the o -- cean's foam;
  Then haste, oh haste to spread the words of truth a -- broad,
  For -- get -- ting not the starv -- ing poor at home, dear home.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  O Church of God, ex -- tend thy kind, ma -- ter -- nal arms
  To save the lost on moun -- tains dark and cold!
  Reach out thy hand with lov -- ing smile to res -- cue them,
  And bring them to the shel -- ter of the Sa -- viour's fold.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Look up! look up! the pro -- mised day is draw -- ing near
  When all shall hail, shall hail the Sa -- viour King,
  When peace and joy shall fold their wings in ev -- 'ry clime,
  And glo -- rious hal -- le -- lu -- jahs o'er the earth shall ring!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "A" "wake! " a "wake! " "the " Mas "ter " "now " "is " call "ing " "us; "
  "\nA" "rise! " a "rise! " "and, " trust "ing " "in " "His " "word, "
  "\nGo " "forth, " "go " "forth! " pro "claim " "the " "year " "of " ju bi "lee, "
  "\nAnd " "take " "the " "Word, " "the " bless "ed " "Word " "of " "Christ " "our " "Lord. "
  "\nOn, "  "on, " "swell " "the " cho "rus! "
  "\nOn, "  "on, " "the " Morn "ing " "Star " "is " shi "ning " "o'er " "us! "
  "\nOn, "  "on, " "while " be "fore "  "us "
  "\nOur " migh "ty, " migh "ty " Sa "viour " "leads " "the " "way! " 
  "\nGlo" "ry, " glo "ry! " "hear " "the " ev er last "ing " "throng "
  "\nShout " “Ho san "na” " "while " "we " bold "ly " "march " a "long! "
  "\nFaith" "ful " sol "diers " "here " be "low, "
  "\nOn" "ly " Je "sus " "will " "we " "know, "
  "\nShout" "ing " hal le lu "jahs " "as " "we " on "ward " "go!\n"

  \set stanza = "2."
  "\nA " "cry " "for " "light " "from " dy "ing " "ones " "in " hea "then " "lands: "
  "\nIt " "comes, " "it " "comes " a "cross " "the " o "cean's " "foam; "
  "\nThen " "haste, " "oh " "haste " "to " "spread " "the " "words " "of " "truth " a "broad, "
  "\nFor" get "ting " "not " "the " starv "ing " "poor " "at " "home, " "dear " "home. "
  "\nOn, "  "on, " "swell " "the " cho "rus! "
  "\nOn, "  "on, " "the " Morn "ing " "Star " "is " shi "ning " "o'er " "us! "
  "\nOn, "  "on, " "while " be "fore "  "us "
  "\nOur " migh "ty, " migh "ty " Sa "viour " "leads " "the " "way! " 
  "\nGlo" "ry, " glo "ry! " "hear " "the " ev er last "ing " "throng "
  "\nShout " “Ho san "na” " "while " "we " bold "ly " "march " a "long! "
  "\nFaith" "ful " sol "diers " "here " be "low, "
  "\nOn" "ly " Je "sus " "will " "we " "know, "
  "\nShout" "ing " hal le lu "jahs " "as " "we " on "ward " "go!\n"

  \set stanza = "3."
  "\nO " "Church " "of " "God, " ex "tend " "thy " "kind, " ma ter "nal " "arms "
  "\nTo " "save " "the " "lost " "on " moun "tains " "dark " "and " "cold! "
  "\nReach " "out " "thy " "hand " "with " lov "ing " "smile " "to " res "cue " "them, "
  "\nAnd " "bring " "them " "to " "the " shel "ter " "of " "the " Sa "viour's " "fold. "
  "\nOn, "  "on, " "swell " "the " cho "rus! "
  "\nOn, "  "on, " "the " Morn "ing " "Star " "is " shi "ning " "o'er " "us! "
  "\nOn, "  "on, " "while " be "fore "  "us "
  "\nOur " migh "ty, " migh "ty " Sa "viour " "leads " "the " "way! " 
  "\nGlo" "ry, " glo "ry! " "hear " "the " ev er last "ing " "throng "
  "\nShout " “Ho san "na” " "while " "we " bold "ly " "march " a "long! "
  "\nFaith" "ful " sol "diers " "here " be "low, "
  "\nOn" "ly " Je "sus " "will " "we " "know, "
  "\nShout" "ing " hal le lu "jahs " "as " "we " on "ward " "go!\n"

  \set stanza = "4."
  "\nLook " "up! " "look " "up! " "the " pro "mised " "day " "is " draw "ing " "near "
  "\nWhen " "all " "shall " "hail, " "shall " "hail " "the " Sa "viour " "King, "
  "\nWhen " "peace " "and " "joy " "shall " "fold " "their " "wings " "in " ev "'ry " "clime, "
  "\nAnd " glo "rious " hal le lu "jahs " "o'er " "the " "earth " "shall " "ring! "
  "\nOn, "  "on, " "swell " "the " cho "rus! "
  "\nOn, "  "on, " "the " Morn "ing " "Star " "is " shi "ning " "o'er " "us! "
  "\nOn, "  "on, " "while " be "fore "  "us "
  "\nOur " migh "ty, " migh "ty " Sa "viour " "leads " "the " "way! " 
  "\nGlo" "ry, " glo "ry! " "hear " "the " ev er last "ing " "throng "
  "\nShout " “Ho san "na” " "while " "we " bold "ly " "march " a "long! "
  "\nFaith" "ful " sol "diers " "here " be "low, "
  "\nOn" "ly " Je "sus " "will " "we " "know, "
  "\nShout" "ing " hal le lu "jahs " "as " "we " on "ward " "go! "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "A" "wake! " a "wake! " "the " Mas "ter " "now " "is " call "ing " "us; "
  "\nA" "rise! " a "rise! " "and, " trust "ing " "in " "His " "word, "
  "\nGo " "forth, " "go " "forth! " pro "claim " "the " "year " "of " ju bi "lee, "
  "\nAnd " "take " "the " "Word, " "the " bless "ed " "Word " "of " "Christ " "our " "Lord. "
  "\nOn, " "on, " "on, " "swell " "the " cho "rus! "
  "\nOn, " "on, " "on, " "the " Morn "ing " "Star " "is " shi "ning " "o'er " "us! "
  "\nOn, " "on, " "on, " "while " be "fore "
  "\nOur " migh "ty, " migh "ty " Sa "viour " "leads " "the " "way, " "leads " "the " "way! "
  "\nGlo" "ry, " glo "ry! " "hear " "the " ev er last "ing " "throng "
  "\nShout " “Ho san "na” " "while " "we " bold "ly " "march " a "long! "
  "\nFaith" "ful " sol "diers " "here " be "low, "
  "\nOn" "ly " Je "sus " "will " "we " "know, "
  "\nShout" "ing " hal le lu "jahs " "as " "we " on "ward " "go!\n"

  \set stanza = "2."
  "\nA " "cry " "for " "light " "from " dy "ing " "ones " "in " hea "then " "lands: "
  "\nIt " "comes, " "it " "comes " a "cross " "the " o "cean's " "foam; "
  "\nThen " "haste, " "oh " "haste " "to " "spread " "the " "words " "of " "truth " a "broad, "
  "\nFor" get "ting " "not " "the " starv "ing " "poor " "at " "home, " "dear " "home. "
  "\nOn, " "on, " "on, " "swell " "the " cho "rus! "
  "\nOn, " "on, " "on, " "the " Morn "ing " "Star " "is " shi "ning " "o'er " "us! "
  "\nOn, " "on, " "on, " "while " be "fore "
  "\nOur " migh "ty, " migh "ty " Sa "viour " "leads " "the " "way, " "leads " "the " "way! "
  "\nGlo" "ry, " glo "ry! " "hear " "the " ev er last "ing " "throng "
  "\nShout " “Ho san "na” " "while " "we " bold "ly " "march " a "long! "
  "\nFaith" "ful " sol "diers " "here " be "low, "
  "\nOn" "ly " Je "sus " "will " "we " "know, "
  "\nShout" "ing " hal le lu "jahs " "as " "we " on "ward " "go!\n"

  \set stanza = "3."
  "\nO " "Church " "of " "God, " ex "tend " "thy " "kind, " ma ter "nal " "arms "
  "\nTo " "save " "the " "lost " "on " moun "tains " "dark " "and " "cold! "
  "\nReach " "out " "thy " "hand " "with " lov "ing " "smile " "to " res "cue " "them, "
  "\nAnd " "bring " "them " "to " "the " shel "ter " "of " "the " Sa "viour's " "fold. "
  "\nOn, " "on, " "on, " "swell " "the " cho "rus! "
  "\nOn, " "on, " "on, " "the " Morn "ing " "Star " "is " shi "ning " "o'er " "us! "
  "\nOn, " "on, " "on, " "while " be "fore "
  "\nOur " migh "ty, " migh "ty " Sa "viour " "leads " "the " "way, " "leads " "the " "way! "
  "\nGlo" "ry, " glo "ry! " "hear " "the " ev er last "ing " "throng "
  "\nShout " “Ho san "na” " "while " "we " bold "ly " "march " a "long! "
  "\nFaith" "ful " sol "diers " "here " be "low, "
  "\nOn" "ly " Je "sus " "will " "we " "know, "
  "\nShout" "ing " hal le lu "jahs " "as " "we " on "ward " "go!\n"

  \set stanza = "4."
  "\nLook " "up! " "look " "up! " "the " pro "mised " "day " "is " draw "ing " "near "
  "\nWhen " "all " "shall " "hail, " "shall " "hail " "the " Sa "viour " "King, "
  "\nWhen " "peace " "and " "joy " "shall " "fold " "their " "wings " "in " ev "'ry " "clime, "
  "\nAnd " glo "rious " hal le lu "jahs " "o'er " "the " "earth " "shall " "ring! "
  "\nOn, " "on, " "on, " "swell " "the " cho "rus! "
  "\nOn, " "on, " "on, " "the " Morn "ing " "Star " "is " shi "ning " "o'er " "us! "
  "\nOn, " "on, " "on, " "while " be "fore "
  "\nOur " migh "ty, " migh "ty " Sa "viour " "leads " "the " "way, " "leads " "the " "way! "
  "\nGlo" "ry, " glo "ry! " "hear " "the " ev er last "ing " "throng "
  "\nShout " “Ho san "na” " "while " "we " bold "ly " "march " a "long! "
  "\nFaith" "ful " sol "diers " "here " be "low, "
  "\nOn" "ly " Je "sus " "will " "we " "know, "
  "\nShout" "ing " hal le lu "jahs " "as " "we " on "ward " "go! "
}

\book {
  \bookOutputSuffix "midi=women"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
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
  \bookOutputSuffix "midi-men"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
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
            \addlyrics \wordsMidiMen
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

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
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
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \bookOutputSuffix "single"
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
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
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
