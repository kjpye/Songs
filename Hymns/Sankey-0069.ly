\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Wonderful Story Again."
  subtitle    = "Sankey No. 69"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Wm. J. Kirkpatrick."
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
  \key ees \major
  \time 6/8
  \partial 8 
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s8 s2.*2
  \mark \markup { \box "B" } s2.*3
  \mark \markup { \box "C" } s2.*2 s4. s4
  \mark \markup { \box "D" } s8 s2.*2 s4.
  \mark \markup { \box "E" } s4. s2.*2
  \mark \markup { \box "F" } s2.*2 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s8
  s2.*11
  s4. \tempo 4=40 s4 \tempo 4=120 s8
  s2.
  s4. \tempo 4=40 s4 \tempo 4=120 s8
  s2.
  s4. s4
}

soprano = \relative {
  ees'16 f
  g8. fis16 g8 aes8. g16 aes8
  bes8. c16 bes8 g4 bes8 \break
  aes8. g16 aes8 f bes aes % B
  g4.~4 ees16(f)
  g8. fis16 g8 aes8. g16 aes8 \break
  bes8. c16 bes8 g4 bes8 % C
  aes8. g16 aes8 f8 g f
  ees4.~4 \bar "||" \break \partial 8 bes'8^\markup\smallCaps Chorus.
  c8. 16 8 aes4 c16 c % D
  bes8. c16 bes8 g4 g8
  f8 e f \bar "|" \break \partial 4. d'8 d c
  bes4.~4\fermata aes8 % E
  g8. 16 8 8 aes bes \break
  c8. b16 c8 ees4\fermata c8 % F
  bes8. c16 bes8 aes g f
  ees4.~4
}

alto = \relative {
  ees'16 ees
  ees8. ees16 ees8 d8. d16 d8
  ees8. 16 8 4 8
  d8. 16 8 8 8 8  % B
  ees4.~4 ees16(f)
  ees8. 16 8 d8. 16 8
  ees8. 16 8 4 8 % C
  d8. 16 8 8 8 bes
  bes4.~4 g'8
  aes8. 16 8 ees4 aes16 aes % D
  g8. aes16 g8 ees4 ees8
  d8 cis d f f ees
  d4 ees8 f4\fermata f8 % E
  ees8. 16 8 8 f g
  aes8. 16 8 fis4\fermata fis8 % F
  g8. aes16 g8 f ees d
  bes4.~4
}

tenor = \relative {
  g16 aes
  bes8. a16 bes8 bes8. bes16 bes8
  ees8. 16 8 bes4 g8
  f8. 16 8 bes f bes % B
  bes4.~4 g16(aes)
  bes8. a16 bes8 8. 16 8
  ees8. 16 8 bes4 g8 % C
  f8. 16 8 bes8 bes aes
  g4.~4 ees'8
  ees8. 16 8 c4 ees16 ees % D
  ees8. 16 8 bes4 8
  bes8 8 8 8 8 a
  bes8(f) g aes4\fermata bes8 % E
  bes8. 16 8 8 8 ees
  ees8. d16 ees8 c4\fermata ees8 % F
  ees8. 16 8 bes bes aes
  g4.~4
}

bass= \relative {
  ees16 ees
  ees8. 16 8 f8. 16 8
  g8. 16 8 ees4 ees8
  bes8. 16 8 8 8 8  % B
  ees4.~4 8
  ees8. 16 8 f8. 16 8
  g8. 16 8 ees4 8 % C
  bes8. 16 8 8 8 8
  ees4.~4 8
  aes8. 16 8 4 16 16 % D
  ees8. 16 8 4 8
  f8 8 8 8 8 8
  bes,4.~4\fermata 8 % E
  ees8. 16 8 8 8 8
  aes8. 16 8 a4\fermata 8 % F
  bes8. 16 8 bes, bes bes
  ees4.~4
}

chorus = \lyricmode {
  Oh, hear it a -- gain, bless -- ed sto -- ry of love,
  Re -- demp -- tion thro' Je -- sus from sin; __
  He o -- pen'd the por -- tals of life to my soul
  And ten -- der -- ly wel -- comed me in. __
}

chorusMid = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ -
  _ _ _ _ _ _ _ - from sin;
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
}

wordsOne = \lyricmode {
  \set stanza = "1."
  I will tell you the won -- der -- ful sto -- ry a -- gain,
  Of Je -- sus, the migh -- ty to save;
  Who pur -- chased sal -- va -- tion for all on the cross,
  And tri -- umph'd o'er death and the grave.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I will tell you the won -- der -- ful sto -- ry a -- gain,
  Of par -- don to all that be -- lieve;
  And, oh that the Spi -- rit will help you just now,
  The mes -- sage of grace to re -- ceive!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  I will tell you the won -- der -- ful sto -- ry a -- gain,
  So pre -- cious and dear to my heart;
  'Twill give you a com -- fort the world can -- not give,
  A joy it can nev -- er im -- part.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  I will tell you the won -- der -- ful sto -- ry a -- gain,
  The won -- der -- ful sto -- ry so true:
  Oh, haste to the foun -- tain of mer -- cy Di -- vine,
  Whose wa -- ters are flow -- ing for you.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\nI " "will " "tell " "you " "the " won der "ful " sto "ry " a "gain, "
  "\nOf " Je "sus, " "the " migh "ty " "to " "save; "
  "\nWho " pur "chased " sal va "tion " "for " "all " "on " "the " "cross, "
  "\nAnd " tri "umph'd " "o'er " "death " "and " "the " "grave. "
  "\nOh, " "hear " "it " a "gain, " bless "ed " sto "ry " "of " "love, "
  "\nRe" demp "tion " "thro' " Je "sus " "from " "sin; " 
  "\nHe " o "pen'd " "the " por "tals " "of " "life " "to " "my " "soul "
  "\nAnd " ten der "ly " wel "comed " "me " "in. " 

  \set stanza = "2."
  "\nI " "will " "tell " "you " "the " won der "ful " sto "ry " a "gain, "
  "\nOf " par "don " "to " "all " "that " be "lieve; "
  "\nAnd, " "oh " "that " "the " Spi "rit " "will " "help " "you " "just " "now, "
  "\nThe " mes "sage " "of " "grace " "to " re "ceive! "
  "\nOh, " "hear " "it " a "gain, " bless "ed " sto "ry " "of " "love, "
  "\nRe" demp "tion " "thro' " Je "sus " "from " "sin; " 
  "\nHe " o "pen'd " "the " por "tals " "of " "life " "to " "my " "soul "
  "\nAnd " ten der "ly " wel "comed " "me " "in. " 

  \set stanza = "3."
  "\nI " "will " "tell " "you " "the " won der "ful " sto "ry " a "gain, "
  "\nSo " pre "cious " "and " "dear " "to " "my " "heart; "
  "\n'Twill " "give " "you " "a " com "fort " "the " "world " can "not " "give, "
  "\nA " "joy " "it " "can " nev "er " im "part. "
  "\nOh, " "hear " "it " a "gain, " bless "ed " sto "ry " "of " "love, "
  "\nRe" demp "tion " "thro' " Je "sus " "from " "sin; " 
  "\nHe " o "pen'd " "the " por "tals " "of " "life " "to " "my " "soul "
  "\nAnd " ten der "ly " wel "comed " "me " "in. " 

  \set stanza = "4."
  "\nI " "will " "tell " "you " "the " won der "ful " sto "ry " a "gain, "
  "\nThe " won der "ful " sto "ry " "so " "true: "
  "\nOh, " "haste " "to " "the " foun "tain " "of " mer "cy " Di "vine, "
  "\nWhose " wa "ters " "are " flow "ing " "for " "you. "
  "\nOh, " "hear " "it " a "gain, " bless "ed " sto "ry " "of " "love, "
  "\nRe" demp "tion " "thro' " Je "sus " "from " "sin; " 
  "\nHe " o "pen'd " "the " por "tals " "of " "life " "to " "my " "soul "
  "\nAnd " ten der "ly " wel "comed " "me " "in. " 
}
  
wordsMidMidi = \lyricmode {
  \set stanza = "1."
  "\nI " "will " "tell " "you " "the " won der "ful " sto "ry " a "gain, "
  "\nOf " Je "sus, " "the " migh "ty " "to " "save; "
  "\nWho " pur "chased " sal va "tion " "for " "all " "on " "the " "cross, "
  "\nAnd " tri "umph'd " "o'er " "death " "and " "the " "grave. "
  "\nOh, " "hear " "it " a "gain, " bless "ed " sto "ry " "of " "love, "
  "\nRe" demp "tion " "thro' " Je "sus " "from " "sin " "from " "sin; " 
  "\nHe " o "pen'd " "the " por "tals " "of " "life " "to " "my " "soul "
  "\nAnd " ten der "ly " wel "comed " "me " "in. " 

  \set stanza = "2."
  "\nI " "will " "tell " "you " "the " won der "ful " sto "ry " a "gain, "
  "\nOf " par "don " "to " "all " "that " be "lieve; "
  "\nAnd, " "oh " "that " "the " Spi "rit " "will " "help " "you " "just " "now, "
  "\nThe " mes "sage " "of " "grace " "to " re "ceive! "
  "\nOh, " "hear " "it " a "gain, " bless "ed " sto "ry " "of " "love, "
  "\nRe" demp "tion " "thro' " Je "sus " "from " "sin " "from " "sin; " 
  "\nHe " o "pen'd " "the " por "tals " "of " "life " "to " "my " "soul "
  "\nAnd " ten der "ly " wel "comed " "me " "in. " 

  \set stanza = "3."
  "\nI " "will " "tell " "you " "the " won der "ful " sto "ry " a "gain, "
  "\nSo " pre "cious " "and " "dear " "to " "my " "heart; "
  "\n'Twill " "give " "you " "a " com "fort " "the " "world " can "not " "give, "
  "\nA " "joy " "it " "can " nev "er " im "part. "
  "\nOh, " "hear " "it " a "gain, " bless "ed " sto "ry " "of " "love, "
  "\nRe" demp "tion " "thro' " Je "sus " "from " "sin " "from " "sin; " 
  "\nHe " o "pen'd " "the " por "tals " "of " "life " "to " "my " "soul "
  "\nAnd " ten der "ly " wel "comed " "me " "in. " 

  \set stanza = "4."
  "\nI " "will " "tell " "you " "the " won der "ful " sto "ry " a "gain, "
  "\nThe " won der "ful " sto "ry " "so " "true: "
  "\nOh, " "haste " "to " "the " foun "tain " "of " mer "cy " Di "vine, "
  "\nWhose " wa "ters " "are " flow "ing " "for " "you. "
  "\nOh, " "hear " "it " a "gain, " bless "ed " sto "ry " "of " "love, "
  "\nRe" demp "tion " "thro' " Je "sus " "from " "sin " "from " "sin; " 
  "\nHe " o "pen'd " "the " por "tals " "of " "life " "to " "my " "soul "
  "\nAnd " ten der "ly " wel "comed " "me " "in. " 
}
  
nl = { \bar "||" \break }

\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new NullVoice = "aligner" \soprano
            \new NullVoice = "alignerA" \alto
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "alignerA" { \chorusMid }
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
    \context GrandStaff <<
      <<
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
            \new NullVoice = "alignerA" { \alto \alto \alto \alto }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
            \new Lyrics \lyricsto "alignerA" { \chorusMid \chorusMid \chorusMid \chorusMid }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass  }
          >>
        >>
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
  \bookOutputSuffix "midi-hilo"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new NullVoice = "alignerA" { \alto \alto \alto \alto }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidi
%            \new Lyrics \lyricsto "alignerA" { \chorusMid \chorusMid \chorusMid \chorusMid }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass  }
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-mid"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new NullVoice = "alignerA" { \alto \alto \alto \alto }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "alignerA" \wordsMidMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass  }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
