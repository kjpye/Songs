\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Harbour Bell."
  subtitle    = "Sankey No. 395"
  subsubtitle = "N. H. No. 49"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "John H. Yates."
  meter       = \markup\smallCaps "D.L.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 3/4
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4. s2.*2
  \mark \markup { \box "B" } s2.*3
  \mark \markup { \box "C" } s2.*3
  \mark \markup { \box "D" } s2.*3
  \mark \markup { \box "E" } s2.*3
  \mark \markup { \box "F" } s2.*3
  \mark \markup { \box "G" } s2.*3
  \mark \markup { \box "H" } s2.*3 s4.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4.
  s2.*22
  \tempo 4=100 s2. s4.
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c'8 f8. g16
  a4. bes8 a8. g16
  f4. 8 8. a16
  c4. d8 c8. a16 % B
  g4. c,8 f8. g16
  a4. f8 a8. b16
  c4. f,8 b8. a16 % C
  a4. g8 f8. e16
  f4. c'8 8. a16
  d4. c8 8. a16 % D
  b4. 8 8. g16
  e'4. d8 c8. g16
  a4. c,8 f8. g16 % E
  a4. f8 a8. bes16
  c4. f,8 bes8. a16
  a4. g8 f8. e16 % F
  f4. \bar "||" c'8^\markup\smallCaps Chorus. c8. a16
  c4. a8 8. c16
  bes4. f8 8. g16 % G
  a4. 8 g8. f16
  c'4. 8 8. a16
  c4. a8 8. c16 % H
  bes4. d8 8. 16
  c4.^\markup\italic rit. a8 8. g16
  f4.
}

alto = \relative {
  \autoBeamOff
  c'8 8. 16
  f4. 8 8. e16
  f4. c8 8. f16
  f4. 8 8. 16 % B
  e4. c8 8. 16
  f4. 8 8. 16
  f4. 8 8. 16 % C
  f4. e8 f8. c16
  c4. f8 8. 16
  f4. fis8 8. 16 % D
  g4. f8 e8. 16
  g4. e8 f8. e16
  f4. c8 8. 16 % E
  f4. 8 8. 16
  f4. 8 8. 16
  f4. e8 f8. c16 % F
  c4. f8 8. 16
  f4. 8 8. ees16
  d4. 8 8. des16 % G
  c4. 8 8. f16
  e4. c8 f8. 16
  f4. 8 8. ees16 % H
  d4. f8 8. 16
  f4. 8 e8. 16
  f4.
}

tenor = \relative {
  \autoBeamOff
  a8 8. bes16
  c4. d8 c8. bes16
  a4. 8 8. c16
  a4. bes8 c8. 16 % B
  c4. bes8 a8. bes16
  c4. a8 c8. g16
  a4. 8 d8. c16 % C
  c4. bes8 a8. g16
  a4. 8 8. c16
  bes4. a8 8. d16 % D
  d4. 8 c8. bes16
  bes4. g8 a8. c16
  c4. a8 8. bes16 % E
  c4. a8 c8. g16
  a4. 8 d8. c16
  c4. bes8 a8. g16 % F
  a4. 8 8. c16
  a4. c8 8. f,16
  f4. 8 8. 16 % G
  f4. c'8 8. b16
  c4. bes8 a8. c16
  a4. c8 8. f,16 % H
  f4. bes8 8. 16
  a4. c8 8. bes16
  a4.
}

bass = \relative {
  \autoBeamOff
  f8 8. 16
  f4. bes,8 c8. 16
  f4. 8 8. 16
  f4. bes,8 a8. f16 % B
  c'4. e8 f8. 16
  f4. 8 8. 16
  f4. 8 8. 16 % C
  c4. 8 8. 16
  f4. 8 8. 16
  d4. 8 8. 16 % D
  g4. 8 c,8. 16
  c4. 8 8. 16
  f4. 8 8. 16 % E
  f4. 8 8. 16
  f4. 8 8. 16
  c4. 8 8. 16 % F
  f4. 8 8. 16
  f4. 8 8. 16
  bes,4. 8 8. 16 % G
  f'4. 8 e8. d16
  c4. e8 f8. 16
  f4. 8 8. 16
  bes,4. 8 8. 16
  c4. 8 8. 16
  f4.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  "\"This" way, this way, O heart op -- prest,
  So long by storm and tem -- pest friv'n;
  This way, this way— lo! here is "rest,\""
  Rings out the har -- bour bell of heav'n.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Our life is like a storm -- y sea
  Swept by the gales of sin and grief;
  While on the wind -- ward and the lee
  Hang hea -- vy clouds of un -- be -- lief.
  But o'er the deep a call we hear,
  Like har -- bour bells in -- vi -- ting voice;
  It tells the lost that hope is near,
  And bids the trem -- bling soul re -- joice.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Oh, let us now the call o -- bey,
  And steer our bark for yon -- der shore;
  Where still that voice di -- rects the way,
  In plead -- ing tones for ev -- er -- more.
  A thou -- sand life -- wrecks strew the sea;
  They're ho -- ing down at ev -- 'ry swell:
  "\"Come" un -- to me! Come un -- to "me!\""
  Rings out th'as -- sur -- ing har -- bour bell.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  O temp -- ted one, look up, be strong!
  The pro -- mise of the Lord is sure,
  That they shall sing the vic -- tor's song,
  Who faith -- ful to the end en -- dure;
  God's Ho -- ly  Spi -- rit comes to thee,
  Of His a -- bi -- ding love to tell,
  To bliss -- ful port, o'er storm -- y sea,
  Calls heaven's in -- vi -- ting har -- bour bell.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Come, gra -- cious Lord, and in Thy love
  Con -- duct us o'er life's storm -- y wave;
  Oh, guide us to the home a -- bove
  The bliss -- ful home be -- yond the grave;
  There, safe from rock, and storm, and flood.
  Our song of praise shall nev -- er cease,
  To Him who bought us with His blood,
  And brought us to the port of peace.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Our " "life " "is " "like " "a " storm "y " "sea "
  "\nSwept " "by " "the " "gales " "of " "sin " "and " "grief; "
  "\nWhile " "on " "the " wind "ward " "and " "the " "lee "
  "\nHang " hea "vy " "clouds " "of " un be "lief. "
  "\nBut " "o'er " "the " "deep " "a " "call " "we " "hear, "
  "\nLike " har "bour " "bells " in vi "ting " "voice; "
  "\nIt " "tells " "the " "lost " "that " "hope " "is " "near, "
  "\nAnd " "bids " "the " trem "bling " "soul " re "joice. "
  "\n\"This " "way, " "this " "way, " "O " "heart " op "prest, "
  "\nSo " "long " "by " "storm " "and " tem "pest " "friv'n; "
  "\nThis " "way, " "this " "way— " "lo! " "here " "is " "rest,\" "
  "\nRings " "out " "the " har "bour " "bell " "of " "heav'n. "

  \set stanza = "2."
  "\nOh, " "let " "us " "now " "the " "call " o "bey, "
  "\nAnd " "steer " "our " "bark " "for " yon "der " "shore; "
  "\nWhere " "still " "that " "voice " di "rects " "the " "way, "
  "\nIn " plead "ing " "tones " "for " ev er "more. "
  "\nA " thou "sand " life "wrecks " "strew " "the " "sea; "
  "\nThey're " ho "ing " "down " "at " ev "'ry " "swell: "
  "\n\"Come " un "to " "me! " "Come " un "to " "me!\" "
  "\nRings " "out " th'as sur "ing " har "bour " "bell. "
  "\n\"This " "way, " "this " "way, " "O " "heart " op "prest, "
  "\nSo " "long " "by " "storm " "and " tem "pest " "friv'n; "
  "\nThis " "way, " "this " "way— " "lo! " "here " "is " "rest,\" "
  "\nRings " "out " "the " har "bour " "bell " "of " "heav'n. "

  \set stanza = "3."
  "\nO " temp "ted " "one, " "look " "up, " "be " "strong! "
  "\nThe " pro "mise " "of " "the " "Lord " "is " "sure, "
  "\nThat " "they " "shall " "sing " "the " vic "tor's " "song, "
  "\nWho " faith "ful " "to " "the " "end " en "dure; "
  "\nGod's " Ho "ly "  Spi "rit " "comes " "to " "thee, "
  "\nOf " "His " a bi "ding " "love " "to " "tell, "
  "\nTo " bliss "ful " "port, " "o'er " storm "y " "sea, "
  "\nCalls " "heaven's " in vi "ting " har "bour " "bell. "
  "\n\"This " "way, " "this " "way, " "O " "heart " op "prest, "
  "\nSo " "long " "by " "storm " "and " tem "pest " "friv'n; "
  "\nThis " "way, " "this " "way— " "lo! " "here " "is " "rest,\" "
  "\nRings " "out " "the " har "bour " "bell " "of " "heav'n. "

  \set stanza = "4."
  "\nCome, " gra "cious " "Lord, " "and " "in " "Thy " "love "
  "\nCon" "duct " "us " "o'er " "life's " storm "y " "wave; "
  "\nOh, " "guide " "us " "to " "the " "home " a "bove "
  "\nThe " bliss "ful " "home " be "yond " "the " "grave; "
  "\nThere, " "safe " "from " "rock, " "and " "storm, " "and " "flood. "
  "\nOur " "song " "of " "praise " "shall " nev "er " "cease, "
  "\nTo " "Him " "who " "bought " "us " "with " "His " "blood, "
  "\nAnd " "brought " "us " "to " "the " "port " "of " "peace. "
  "\n\"This " "way, " "this " "way, " "O " "heart " op "prest, "
  "\nSo " "long " "by " "storm " "and " tem "pest " "friv'n; "
  "\nThis " "way, " "this " "way— " "lo! " "here " "is " "rest,\" "
  "\nRings " "out " "the " har "bour " "bell " "of " "heav'n. "
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
            \new Voice \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor } { \global \bass }
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

\book {
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
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
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
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
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
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
