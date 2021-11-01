\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come, for the Feast is Spread."
  subtitle    = "Sankey No. 281"
  subsubtitle = "Sankey 880 No. 227"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "P. P. Bliss."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "H. Burton, M.A."
  meter       = \markup\smallCaps "6.4."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*5
  \mark \markup { \box "B" } s1*5
  \mark \markup { \box "C" } s1*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d''2 c4 bes
  f4 d f2
  g2 a4 c
  bes2(f)
  d'2 c4 bes
  f4 d f2 % B
  g2 a4 c
  bes1
  c2 4 4
  d4 4 c2
  c2 4 bes % C
  a4 g f2
  d'2 c4 bes
  f4 d f2
  g2 a4 c
  bes1
}

alto = \relative {
  \autoBeamOff
  f'2 ees4 d
  d4 bes d2
  ees2 4 4
  d1
  f2 ees4 d
  d4 bes d2 % B
  ees2 4 4
  d1
  f2 4 4
  r4 4 2
  f2 4 g % C
  f4 e f2
  f2 ees4 d
  d4 bes d2
  ees2 4 4
  d1
}

tenor = \relative {
  \autoBeamOff
  bes2 4 4
  bes4 f bes2
  bes4(g) f f
  f2(bes)
  bes2 4 4
  bes4 f bes2 % B
  bes4(g) f f
  f1
  a2 4 4
  bes4 4 a2
  a2 4 d % C
  c4 bes a2
  bes2 4 4
  bes4 g bes2
  bes4(g) f f
  f1
}

bass = \relative {
  \autoBeamOff
  bes,2 4 4
  bes4 4 2
  ees2 f4 4
  bes,1
  bes2 4 4
  bes4 4 2 % B
  ees2 f4 4
  bes,1
  f'2 4 4
  bes4 bes, f'2
  f2 4 bes, % C
  c4 4 f2
  bes,2 4 4
  bes4 4 2
  ees2 f4 4
  bes,1
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Come, for the feast is spread;
  Hark to the call!
  Come to the Liv -- ing Bread,
  Bro -- ken for all;
  Come to His "\"house" of "wine.\""
  Low n His breast re -- cline;
  All that He hath is thine;
  Come, sin -- ner, come.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Come where the foun -- tain flows—
  Riv -- er of life—
  Heal -- ing for all thy woes,
  Doubt -- ing, and strife;
  Mil -- lions have been sup -- plied,
  No -- one was e'er de -- nied;
  Come to the crim -- son tide,
  Come, sin -- ner come.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Come to the throne of grace,
  Bold -- ly draw near;
  He who would win the race
  Must tar -- ry here;
  What -- e;er thy want may be,
  Here is the grace for thee,
  Je -- sus thu on -- ly plea;
  Come, Christ -- ian, come.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Come to the Bet -- ter Land,
  Pil -- grim, make haste!
  Earth is a fo -- reign strand—
  Wil -- der -- ness waste!
  Here are the harps of gold,
  Here are the joys un -- told—
  Crowns for the young and old:
  Come, pil -- grim, come.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Je -- sus we come to Thee;
  Oh, take us in!
  Set Thou our spi -- rits free;
  Cleanse us from sin!
  Then, in your land of light,
  Clothed in our robes of white,
  Rest -- ing not day nor night,
  Then will we sing.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Come, " "for " "the " "feast " "is " "spread; "
  "\nHark " "to " "the " "call! "
  "\nCome " "to " "the " Liv "ing " "Bread, "
  "\nBro" "ken " "for " "all; "
  "\nCome " "to " "His " "\"house " "of " "wine.\" "
  "\nLow " "n " "His " "breast " re "cline; "
  "\nAll " "that " "He " "hath " "is " "thine; "
  "\nCome, " sin "ner, " "come. "

  \set stanza = "2."
  "\nCome " "where " "the " foun "tain " "flows— "
  "\nRiv" "er " "of " "life— "
  "\nHeal" "ing " "for " "all " "thy " "woes, "
  "\nDoubt" "ing, " "and " "strife; "
  "\nMil" "lions " "have " "been " sup "plied, "
  "\nNo" "one " "was " "e'er " de "nied; "
  "\nCome " "to " "the " crim "son " "tide, "
  "\nCome, " sin "ner " "come. "

  \set stanza = "3."
  "\nCome " "to " "the " "throne " "of " "grace, "
  "\nBold" "ly " "draw " "near; "
  "\nHe " "who " "would " "win " "the " "race "
  "\nMust " tar "ry " "here; "
  "\nWhat" "e;er " "thy " "want " "may " "be, "
  "\nHere " "is " "the " "grace " "for " "thee, "
  "\nJe" "sus " "thu " on "ly " "plea; "
  "\nCome, " Christ "ian, " "come. "

  \set stanza = "4."
  "\nCome " "to " "the " Bet "ter " "Land, "
  "\nPil" "grim, " "make " "haste! "
  "\nEarth " "is " "a " fo "reign " "strand— "
  "\nWil" der "ness " "waste! "
  "\nHere " "are " "the " "harps " "of " "gold, "
  "\nHere " "are " "the " "joys " un "told— "
  "\nCrowns " "for " "the " "young " "and " "old: "
  "\nCome, " pil "grim, " "come. "

  \set stanza = "5."
  "\nJe" "sus " "we " "come " "to " "Thee; "
  "\nOh, " "take " "us " "in! "
  "\nSet " "Thou " "our " spi "rits " "free; "
  "\nCleanse " "us " "from " "sin! "
  "\nThen, " "in " "your " "land " "of " "light, "
  "\nClothed " "in " "our " "robes " "of " "white, "
  "\nRest" "ing " "not " "day " "nor " "night, "
  "\nThen " "will " "we " "sing. "
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
