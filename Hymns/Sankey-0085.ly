\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Friend of Sinners! Lord of Glory!"
  subtitle    = "Sankey No. 85"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Italian Melody."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Newman Hall, D.D."
  meter       = "8.7.8.7. D."
  piece       = \markup\smallCaps "Florence."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 4/4
  \tempo 4=120
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*4
  \mark \markup { \box "C" } s1*4
  \mark \markup { \box "D" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
}

soprano = \relative {
  \autoBeamOff
  g'4 g fis g8[fis]
  e4. 8 fis4 4
  g4 fis8[g] e[g] g[a]
  g4 fis g2 \break
  b4. 8 a4 b % B
  g4. 8 a4 4
  b4 a8[b] c4(b8) c
  b4 a g2 \break
  b4. 8 a4 d % C
  d4 cis d d
  d4. 8 c4 b
  a4 a b2 \break
  b4. 8 a4 d % D
  d4. cis8 d4 d
  d4. 8 c4 b
  a4 a g2
}

alto = \relative {
  \autoBeamOff
  d'4 d d d
  c4. cis8 d4 d
  d4 d c e
  d4 d d2
  g4. 8 fis4 4 % B
  e4. 8 fis4 fis
  g4 fis8[g] e[fis g] a
  g4 fis g2
  g4. 8 fis4 4 % C
  g4 g fis fis
  g4. fis8 e[fis] g4
  g4 fis g2
  fis4. g8 g4 fis % D
  g4. 8 fis4 fis
  g4. fis8 e[fis] g4
  g4(fis8) fis g2
}

tenor = \relative {
  \autoBeamOff
  b4 b a g
  g4. a8 4 4
  g4 g g c
  b4 a b2d4. 8 4 dis % B
  e8(b4) cis8 d4 d
  d4. 8 c4(d8) e
  d4. c8 b2
  d4. 8 4 4 % C
  b4 a a a
  g4. 8 4 g8[b]
  d4 4 2
  b4. 8 e4 d % D
  e4. a,8 4 4
  g4. 8 4 8[b]
  d4. c8 b2
}

bass= \relative {
  \autoBeamOff
  g4 g d b
  c4. a8 d4 d
  b4 b c a
  d4 d g,2
  g4. b8 d4 b % B
  e4. 8 d4 d
  g4. 8 4. c,8
  d4 d g2
  g4. 8 d4 b % C
  e4 a, d d
  b4. 8 c4 g'8[b]
  d,4 d g2
  dis4. e8 cis4 d % D
  a4. 8 d4 d
  b4. 8 c4 g'8[b]
  d,4. 8 g,2
}

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Friend of sin -- ners! Lord of Glo -- ry!
  Low -- ly, migh -- ty, Bro -- ther, King!
  Mu -- sing o'er Thy won -- drous sto -- ry,
  Grate -- ful we Thy prais -- es sing.
  Friend to help us, cheer us, save us,
  I whom power and pi -- ty blend—
  Praise we must the grace which gave us
  Je -- sus Christ, the sin -- ner's Friend.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Friend who nev -- er fails nor grieves us—
  Faith -- ful, ten -- der, con -- stant, kind!
  Friend who at all times re -- cieves us;
  Friend who came the lost to find.
  Sor -- row sooth -- ing, joys en -- han -- cing,
  Lov -- ing un -- til life shall end—
  Then con -- fer -- ring bliss en -- tran -- cing,
  Still in heaven the sin -- ner's Friend.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh to love and serve Thee bet -- ter!
  From all e -- vil set us free;
  Break, Lord, ec -- 'ry sin -- ful fet -- ter,
  Be each though con -- form'e to Thee.
  Look -- ing for Thy bright ap -- pear -- ing,
  May our spi -- rits up -- ward tend;
  Till, no long -- er doubt -- ing, fear -- ing,
  We be -- hold the sin -- ner's Friend.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Friend " "of " sin "ners! " "Lord " "of " Glo "ry! "
  "\nLow" "ly, " migh "ty, " Bro "ther, " "King! "
  "\nMu" "sing " "o'er " "Thy " won "drous " sto "ry, "
  "\nGrate" "ful " "we " "Thy " prais "es " "sing. "
  "\nFriend " "to " "help " "us, " "cheer " "us, " "save " "us, "
  "\nI " "whom " "power " "and " "pi " "ty " "blend— "
  "\nPraise " "we " "must " "the " "grace " "which " "gave " "us "
  "\nJe" "sus " "Christ, " "the " sin "ner's " "Friend. "

  \set stanza = "2."
  "\nFriend " "who " nev "er " "fails " "nor " "grieves " "us— "
  "\nFaith" "ful, " ten "der, " con "stant, " "kind! "
  "\nFriend " "who " "at " "all " "times " re "cieves " "us; "
  "\nFriend " "who " "came " "the " "lost " "to " "find. "
  "\nSor" "row " sooth "ing, " "joys " en han "cing, "
  "\nLov" "ing " un "til " "life " "shall " "end— "
  "\nThen " con fer "ring " "bliss " en tran "cing, "
  "\nStill " "in " "heaven " "the " sin "ner's " "Friend. "

  \set stanza = "3."
  "\nOh " "to " "love " "and " "serve " "Thee " bet "ter! "
  "\nFrom " "all " e "vil " "set " "us " "free; "
  "\nBreak, " "Lord, " ec "'ry " sin "ful " fet "ter, "
  "\nBe " "each " "though " con "form'e " "to " "Thee. "
  "\nLook" "ing " "for " "Thy " "bright " ap pear "ing, "
  "\nMay " "our " spi "rits " up "ward " "tend; "
  "\nTill, " "no " long "er " doubt "ing, " fear "ing, "
  "\nWe " be "hold " "the " sin "ner's " "Friend. "
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
    \unfoldRepeats
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
    \unfoldRepeats
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
    \unfoldRepeats
%    \articulate
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
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
