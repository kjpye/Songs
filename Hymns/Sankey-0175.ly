\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Behold, the Bridegroom cometh."
  subtitle    = "Sankey No. 175"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Josiah Booth."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup { \smallCaps "Gerard Moultrie" \italic "(tr.)." }
  meter       = \markup\smallCaps "14.14.14.14."
  piece       = \markup\smallCaps "Ingleside."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key a \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
  \mark \markup { \box "C" } s4 s1*3 s2.
  \mark \markup { \box "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  e'4
  e4. 8 4 fis
  fis4 e e e
  a4. 8 gis4 fis
  e2. \bar "|" \break 4
  e4. 8 a4 cis % B
  cis4. b8 4 a
  gis4. 8 a4 fis
  e2. \bar "|" \break 4
  e4. 8 4 fis % C
  fis4 e e e
  a4. 8 b4 cis
  d2. \bar "|" \break 4
  cis4. 8 4 4 % D
  cis4 b fis a
  gis4. fis8 e4 b'
  a2.
}

alto = \relative {
  \autoBeamOff
  cis'4
  cis4. 8 4 4
  d4 4 cis b
  a4. 8 d4 d
  d2. 4
  cis4. 8 e4 e % B
  e4 dis e fis
  e4. 8 fis4 eis
  e2. 4
  cis4. 8 e4 4 % C
  d4 d cis b
  e4. 8 a4 g
  fis2. 4
  eis4. 8 fis4 e % D
  e4 dis dis dis
  d4. 8 4 4
  cis2.
}

tenor = \relative {
  \autoBeamOff
  a4
  a4. 8 e4 a
  a4 gis gis gis
  a4. e8 gis4 a
  b2. 4
  a4. 8 4 4 % B
  a4. 8 gis4 fis
  a4. 8 cis4 a
  gis2. e4
  r4. 8 a4 4 % C
  a4 gis gis gis
  a4 cis d e
  a,2. b4
  gis4. 8 a4 ais % D
  ais4 b b b
  b4. a8 gis4 4
  a2.
}

bass = \relative {
  \autoBeamOff
  a,4
  a4. 8 4 4
  b4 4 e d
  cis4. 8 b4 a
  gis2. 4
  a4. 8 cis4 fis % B
  fis4 b, cis dis
  e4. 8 a,4 b
  e2. 4
  a,4. 8 cis4 4 % C
  b4 4 e d
  cis4 g' fis e
  d2. b4
  cis4. 8 fis4 4 % D
  fis4 b, b b
  e4. 8 4 4
  a,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Be -- hold the Bride -- groom com -- eth in the mid -- dle of the night.
  And blest is he whose loins are girt, whose lamp is burn -- ing bright;
  Nut woe to that dull ser -- vant whom the Mas -- ter shall sur -- prise
  With lamp un -- trimm'd, un -- burn -- ing, and with slum -- ber in his eyes.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Do thou, my soul, keep watch, be -- ware lest thou in sleep sink down,
  lest thou be giv -- en o'er to death, and lose the gold -- en crown;
  But see that thou art so -- ber, with a watch -- ful eye, and thus
  Cry, "\"Ho" -- ly, Ho -- ly, Ho -- ly God, have mer -- cy up -- on "us.\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  That day, the hour of fear, shall come; my soul, slack not thy toil,
  But light thy lamp and feed it well, and make it bright with oil;
  Thou know -- est not how soon may sound the cry at ev -- en -- tide:
  "\"Be" -- hold, the Bride -- groom comes! A -- rise, go forth to meet the "Bride!\""
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Be -- ware, my soul! take thout good heed lest thou in slum -- ber lie,
  And, like the five, re -- main with -- out, and knock, and vain -- ly cry;
  But watch, and bear thy lamp un -- dimmed, and Christ shall gird thee on
  His own bright wed -- ding- -- robe of light— the glo -- ry of the Son.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Be" "hold " "the " Bride "groom " com "eth " "in " "the " mid "dle " "of " "the " "night. "
  "\nAnd " "blest " "is " "he " "whose " "loins " "are " "girt, " "whose " "lamp " "is " burn "ing " "bright; "
  "\nNut " "woe " "to " "that " "dull " ser "vant " "whom " "the " Mas "ter " "shall " sur "prise "
  "\nWith " "lamp " un "trimm'd, " un burn "ing, " "and " "with " slum "ber " "in " "his " "eyes. "

  \set stanza = "2."
  "\nDo " "thou, " "my " "soul, " "keep " "watch, " be "ware " "lest " "thou " "in " "sleep " "sink " "down, "
  "\nlest " "thou " "be " giv "en " "o'er " "to " "death, " "and " "lose " "the " gold "en " "crown; "
  "\nBut " "see " "that " "thou " "art " so "ber, " "with " "a " watch "ful " "eye, " "and " "thus "
  "\nCry, " "\"Ho" "ly, " Ho "ly, " Ho "ly " "God, " "have " mer "cy " up "on " "us.\" "

  \set stanza = "3."
  "\nThat " "day, " "the " "hour " "of " "fear, " "shall " "come; " "my " "soul, " "slack " "not " "thy " "toil, "
  "\nBut " "light " "thy " "lamp " "and " "feed " "it " "well, " "and " "make " "it " "bright " "with " "oil; "
  "\nThou " know "est " "not " "how " "soon " "may " "sound " "the " "cry " "at " ev en "tide: "
  "\n\"Be" "hold, " "the " Bride "groom " "comes! " A "rise, " "go " "forth " "to " "meet " "the " "Bride!\" "

  \set stanza = "4."
  "\nBe" "ware, " "my " "soul! " "take " "thout " "good " "heed " "lest " "thou " "in " slum "ber " "lie, "
  "\nAnd, " "like " "the " "five, " re "main " with "out, " "and " "knock, " "and " vain "ly " "cry; "
  "\nBut " "watch, " "and " "bear " "thy " "lamp " un "dimmed, " "and " "Christ " "shall " "gird " "thee " "on "
  "\nHis " "own " "bright " wed ding- "robe " "of " "light— " "the " glo "ry " "of " "the " "Son. "
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
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
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
