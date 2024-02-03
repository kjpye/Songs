\version "2.25.12"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Young Men in Christ, Arise!"
  subtitle    = "Sankey No. 812"
  subsubtitle = "N. H. No. 110"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Robert Weidensall."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*3 s2.
  \textMark \markup { \box \bold "B" } s4 s1*3 s2.
  \textMark \markup { \box \bold "C" } s4 s1*2 s2
  \textMark \markup { \box \bold "D" } s2 s1*2 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  bes'4 | 4 a bes ees | bes2. g4 | c4. bes8 8[aes] g4 | f2. \bar "|" \break
  bes4 | d2 c | bes2. 4 | 4 g ees' c | bes4. aes8 g4 \bar "|" \break
  bes4 | 4 g ees' c | bes4. aes8 g4 bes | c4 c \bar "|" \break
  d4 bes | ees4 4 4\fermata c | bes aes8[g] f4 bes | ees,2.
}

alto = \relative {
  \autoBeamOff
  g'4 | g fis g g | g2. ees4 | 4. 8 d4 ees | d2.
  d4 | f2 ees | d2. 4 | ees4 4 g fis | g4. f8 ees4
  g4 | g ees g fis | g4. f8 ees4 g | aes4 4
  f4 f | bes g aes\fermata ees | 4 4 c d | ees2.
}

tenor = \relative {
  \autoBeamOff
  ees'4 | 4 c bes4 4 | ees2. bes4  | ees4. bes8 4 4 | 2.
  bes4 | 2 4(a) | bes2. aes4 | g bes bes a | bes4. 8 4
  ees4 | 4 bes bes a | bes4. 8 4 ees | 4 f
  bes,4 d | ees des c\fermata aes | g c8[bes] aes4 4 | g2.
}

bass = \relative {
  \autoBeamOff
  ees4 | 4 4 4 4 | 2. 4 | aes4. g8 f4 ees | bes2.
  bes4 | 4(d) f(f,) | bes2. 4 | ees4 4 4 4 | 4. 8 4
  ees4 | 4 4 4 4 | 4. 8 4 4 | aes4 f
  bes4 aes | g ees aes\fermata aes, | bes4 4 4 4 | ees2.
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 6

wordsOne = \lyricmode {
  \set stanza = "1."
  Young men in Christ, a -- rise!
  Own Him your Sa -- viour God,
  His name a -- dore;
  For by His won -- drous sac -- ri -- fice.
  He paid the great re -- demp -- tion price,
  That all might have e -- ter -- nal life,
  That come to God through Him.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Young men in Christ the Lord,
  Be migh -- ty in His word,
  Its truths de -- clare!
  And seek the Ho -- ly Spi -- rit's power,
  By faith and per -- se -- ver -- ing prayer,
  That ye may wit -- ness a -- ny -- where
  That sin -- ful men are found.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Young men in Christ the King,
  Your grate -- ful trib -- ute bring
  Of love and praise;
  U -- ni -- ted in His roy -- al name,
  With loy -- al hearts His words pro -- claim
  Through -- out the world to all youn men,
  “Ye must be born a -- gain.”
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Young men in Christ the Friend,
  On Him all hopes de -- pend
  Of true re -- lief;
  To ev -- 'ry bur -- dened soul you meet,
  His gra -- cious, lov -- ing words so sweet,
  “Come un -- to Me.” with love re -- peat,
  “And I will give you rest.”
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Young men in Christ, be -- hold
  The world be -- fore you lies
  En -- slaved in sin!
  Make haste to swell the mis -- sion band,
  Pre -- pared to go at His com -- mand
  To save lost men in ev -- 'ry land
  At a -- ny sac -- ri -- fice.
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Young men in Christ the Son,
  In Him we all are one;
  For this he prayed,
  Then let us join the heaven -- ly throng,
  To sound His praise in end -- less song,
  For all we have and are be -- long
  To Christ, our Lord Di -- vine.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Young " "men " "in " "Christ, " a "rise! "
  "\nOwn " "Him " "your " Sa "viour " "God, "
  "\nHis " "name " a "dore; "
  "\nFor " "by " "His " won "drous " sac ri "fice. "
  "\nHe " "paid " "the " "great " re demp "tion " "price, "
  "\nThat " "all " "might " "have " e ter "nal " "life, "
  "\nThat " "come " "to " "God " "through " "Him.\n"

  \set stanza = "2."
  "\nYoung " "men " "in " "Christ " "the " "Lord, "
  "\nBe " migh "ty " "in " "His " "word, "
  "\nIts " "truths " de "clare! "
  "\nAnd " "seek " "the " Ho "ly " Spi "rit's " "power, "
  "\nBy " "faith " "and " per se ver "ing " "prayer, "
  "\nThat " "ye " "may " wit "ness " a ny "where "
  "\nThat " sin "ful " "men " "are " "found.\n"

  \set stanza = "3."
  "\nYoung " "men " "in " "Christ " "the " "King, "
  "\nYour " grate "ful " trib "ute " "bring "
  "\nOf " "love " "and " "praise; "
  "\nU" ni "ted " "in " "His " roy "al " "name, "
  "\nWith " loy "al " "hearts " "His " "words " pro "claim "
  "\nThrough" "out " "the " "world " "to " "all " "youn " "men, "
  "\n“Ye " "must " "be " "born " a "gain.”\n"

  \set stanza = "4."
  "\nYoung " "men " "in " "Christ " "the " "Friend, "
  "\nOn " "Him " "all " "hopes " de "pend "
  "\nOf " "true " re "lief; "
  "\nTo " ev "'ry " bur "dened " "soul " "you " "meet, "
  "\nHis " gra "cious, " lov "ing " "words " "so " "sweet, "
  "\n“Come " un "to " "Me.” " "with " "love " re "peat, "
  "\n“And " "I " "will " "give " "you " "rest.”\n"

  \set stanza = "5."
  "\nYoung " "men " "in " "Christ, " be "hold "
  "\nThe " "world " be "fore " "you " "lies "
  "\nEn" "slaved " "in " "sin! "
  "\nMake " "haste " "to " "swell " "the " mis "sion " "band, "
  "\nPre" "pared " "to " "go " "at " "His " com "mand "
  "\nTo " "save " "lost " "men " "in " ev "'ry " "land "
  "\nAt " a "ny " sac ri "fice.\n"

  \set stanza = "6."
  "\nYoung " "men " "in " "Christ " "the " "Son, "
  "\nIn " "Him " "we " "all " "are " "one; "
  "\nFor " "this " "he " "prayed, "
  "\nThen " "let " "us " "join " "the " heaven "ly " "throng, "
  "\nTo " "sound " "His " "praise " "in " end "less " "song, "
  "\nFor " "all " "we " "have " "and " "are " be "long "
  "\nTo " "Christ, " "our " "Lord " Di "vine. "
}

wordsMidiMen = \lyricmode {
}

\book {
  \bookOutputSuffix "midi"
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
            \new Lyrics \lyricsto "aligner"   \wordsFive
            \new Lyrics \lyricsto "aligner"   \wordsSix
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
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
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
