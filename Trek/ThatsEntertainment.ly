\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "That's Entertainment"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

%  composer    = "composer"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key des \major
  \time 2/2
  \partial 4
}

TempoTrack = {
  \tempo Andante 4=180
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" } s4 s1*6
  \textMark \markup { \box "1b" }    s1*6
  \textMark \markup { \box "2a" }    s1*7
  \textMark \markup { \box "2b" }    s1*7
  \textMark \markup { \box "2c" }    s1*6
  \textMark \markup { \box "3a" }    s1*6
  \textMark \markup { \box "3b" }    s1*6
  \textMark \markup { \box "3c" }    s1*7
  \textMark \markup { \box "4a" }    s1*7
  \textMark \markup { \box "4b" }    s1*6
  \textMark \markup { \box "4c" }    s1*7
}

soprano = \relative {
  \global
  ees'4 | f1~ | 4 ges2 f4 | ges4 f ges aes~ |4 bes2 aes4 | bes1~ | 4 2 aes4 |
  bes4 aes bes c~ | 4 des2 c4 | des1~ | 4 ees2 des4 | ees des ees f~ | 1 |
  r2 ees | des bes | ges ees | r r4 ees | f1~ | 4 ges2 f4 | ges f ges aes~ | % 2a
  aes4 r r2 | R1 | R | R | r4 des2 c4  des1~ | 4 ees2 des4 |
  ees4 des ees f~ | 1  r2 ees  des bes  aes ees' | r r4 des |
  bes2 4 aes | bes2 4 aes | bes aes ges des'~ | 2. aes4 | bes2 4 aes | bes2 4 aes | % 3a
  bes4 aes ges ees'~ | 1 | r2 c | c c | c4 bes aes f'~ | 2 ees4 des |
  c2 ees4 c | bes des2 bes4 | aes aes c aes | ges bes2.~ | 2 aes \section | f1~ | 4 ges2 f4 |
  ges4 f ges aes~ | 4 bes2 aes4 | bes1~ | 4 2 aes4 | bes aes bes c~ | 4 des2 c4 | des1~ | % 4a
  des4 ees2 des4 | ees des ees f~ | 2. e4 | f2 des4 aes  bes2. aes4 | <des f>2 des4 aes |
  bes4 aes bes des  ees1~( | 1  <c f>~ | 1) | <des aes'>~ | q |
  \bar "|."
}

wordsWomen = \lyricmode {
  A film __ that is real -- ly a show __
  sends you out __ with a kind of a glow __
  and you say __ as you go on your way, __
  That's en -- ter -- tain -- ment!
  A song __ that goes swing -- ing a -- long __
  Is the art __ that ap -- peals to the heart! __
  That's en -- ter -- tain -- ment!
  Ad -- mit it's a hit and it goes on from there. __
  We've seen a cha -- rade that is light -- er than air. __
  A good old fash -- ioned af -- fair __
  as you see this fin -- al -- e, they hope it's up your al -- ley! __
  A death __ like you get in Mac -- beth. __
  An or -- deal __ like the end of Ca -- mille. __
  That good -- bye __ brings a tear to the eye. __
  The world is on film,
  and film is a world of en -- ter -- tain -- ment! __
}

wordsMen = \lyricmode {
  A film __ that is real -- ly a show __
  sends you out __ with a kind of a glow __
  and you say __ as you go on your way, __
  That's en -- ter -- tain -- ment!
  Or a dance __ with a touch of ro -- mance __
  Is the art __ that ap -- peals to the heart! __
  That's en -- ter -- tain -- ment!
  Ad -- mit it's a hit and it goes on from there. __
  We've seen a cha -- rade that is light -- er than air. __
  A good old fash -- ioned af -- fair __
  as you see this fin -- al -- e, they hope it's up your al -- ley! __
  A death __ like you get in Mac -- beth. __
  An or -- deal __ like the end of Ca -- mille. __
  That good -- bye __ brings a tear to the eye. __
  The world is on film,
  and film is a world of en -- ter -- tain -- ment! __
}

wordsMidi = \lyricmode {
  "A " "film "  "that " "is " real "ly " "a " "show " 
  "\nsends " "you " "out "  "with " "a " "kind " "of " "a " "glow " 
  "\nand " "you " "say "  "as " "you " "go " "on " "your " "way, " 
  "\nThat's " en ter tain \set associatedVoice = soprano "ment! "
  "\n[W]A " "song "  "that " "goes " swing "ing " a \set associatedVoice = tenor "long " 
  "\n[M]Or " "a " "dance "  "with " "a " "touch " "of " ro "mance " 
  "\n[A]Is " "the " "art "  "that " ap "peals " "to " "the " "heart! " 
  "\nThat's " en ter tain "ment! "
  "\nAd" "mit " "it's " "a " "hit " "and " "it " "goes " "on " "from " "there. " 
  "\nWe've " "seen " "a " cha "rade " "that " "is " light "er " "than " "air. " 
  "\nA " "good " "old " fash "ioned " af "fair " 
  "\nas " "you " "see " "this " fin al "e, " "they " "hope " "it's " "up " "your " al "ley! " 
  "\nA " "death "  "like " "you " "get " "in " Mac "beth. " 
  "\nAn " or "deal "  "like " "the " "end " "of " Ca "mille. " 
  "\nThat " good "bye "  "brings " "a " "tear " "to " "the " "eye. " 
  "\nThe " "world " "is " "on " "film, "
  "\nand " "film " "is " "a " "world " "of " en ter tain "ment! " 
}

alto = \relative {
  \global
  ees'4 | f1~ | 4 ges2 f4 | ges4 f ges f~ | 4 e2 4 | f1~ | 4 bes2 aes4 |
  bes4 aes bes c~ | 4 f,2 4 | 1~ | 4 ees2 des4 | ees des ees g~ | 1 |
  r2 ges | ges f | ges ees | r r4 ees | f1~ | 4 ges2 f4 | ges f ges aes~ | % 2a
  aes4 r r2 | R1 | R | R | r4 f2 4 | 1~ | 4 ees2 des4 |
  ees4 des es ges~ | 1 | r2 ges | ges f | ges aes | r r4 aes |
  ges2 4 4 | 2 4 4 | 4 4 4 4~ | 2. f4 | ges2 4 4 | 2 4 4 | % 3a
  ges4 4 4 bes~ | 1 | r2 ees, | e e | f4 f f aes~ | 2 ees'4 des |
  c2 ees4 c | bes des2 bes4 | aes4 4 c aes | ges bes2.~ | 2 aes \section | f1~ | 4 ges2 f4 |
  ges4 f ges f~ | 4 e2 4 | f1~ | 4 bes2 aes4 | bes aes bes c~ | c f,2 4 | f1~ | % 4a
  f4 ees2 des4 | ees des ees ges~ | 2. 4 | aes2 des4 aes | bes2. aes4 | 2 des4 aes |
  bes4 aes bes des | g,1(~ | 1 | ges~ | 1) | f1~ | 1 |
  \bar "|."
}

tenor = \relative {
  \global
  ees4 | f1~ | 4 ges2 f4 | ges4 aes bes c~ | 4 2 4 | des1~ | 4 bes2 aes4 |
  bes4 aes bes c~ | 4 ees2 4 | des1~ | 4 ees2 des4 | ees des ees des~ | 1 |
  r2 ees | ees d | des des | R1 | R | R | R | % 2a
  r4 bes2 aes4 | bes1~ | 4 2 aes4 | bes aes bes c~ | 4 ees2 4 | des1~ | 4 ees2 des4 |
  ees4 des ees des~ | 1 | r2 ees | ees d | ees f | r r4 f |
  des 2 4 4 | d2 4 4 | ees4 4 4 ces~ | 2. c4 | des2 4 4 | d2 4 4 | % 3a
  ees4 4 4 des~ | 1 | r2 c | c c | 4 4 4 d~ | 2 ees4 des |
  c2 ees4 c | bes des2 bes4 | aes4 4 c aes | ges bes2.~ | 2 aes \section | f1~  4 ges2 f4 |
  ges4 aes bes c~ | 4 2 4 | d1~ | 4 bes2 aes4 | bes aes bes c~ | 4 ees2 4 | des1~ | % 4a
  des4 ees2 des4 | ees des ees des~ | 2. 4 | 2 4 aes | bes2. aes4 | <des f>2 des4 aes |
  bes4 aes bes des | des1(~ | 1 | c~ | c) | des~ | des |
  \bar "|."
}

bass = \relative {
  \global
  ees4 | f1~ | 4 ges2 f4 | ges aes bes aes~ | 4 ges2 4 | aes1~ | 4 bes2 aes4 |
  bes4 aes bes c~ | 4 a2 4 | bes1~ | 4 ees2 des4 | ees4 des ees bes~ | 1 |
  r2 bes | bes b | bes b | R1 | R | R | R | % 2a
  r4 bes2 aes4 | bes1~ | 4 2 aes4 | bes4 aes bes c~ | 4 a2 4 | bes1~ | 4 ees2 des4 |
  ees4 des ees bes~ | 1 | r2 bes | bes b | c ces | r r4 ces |
  bes2 4 4 | b2 4 4 | bes4 4 4 aes~ | 2. 4 | ges2 4 4 | 2 4 4 | % 3a
  ges4 4 4 g~ | 1 | r2 aes | 2 2 | 4 4 4 bes~ | 2 ees4 des |
  c2 ees4 c | bes des2 bes4 | aes aes c aes | ges bes2.~ | 2 aes \section | f1~ | 4 ges2 f4 |
  ges4 aes bes aes~ | 4 ges2 4 | aes1~ | 4 bes2 aes4 | bes aes bes c~ | 4 a2 4 | bes1~ | % 4a
  bes4 ees2 des4 | ees des ees bes~ | 2. a4 | aes2 des4 aes | bes2. aes4 | <aes bes>2 des4 aes |
  bes4 aes bes des | bes1~( | 1 | aes~ | 1) | des1~ | 1 |
  \bar "|."
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsWomen
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \alto
            \addlyrics \wordsWomen
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsMen
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsMen
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsWomen
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \alto
            \addlyrics \wordsWomen
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsMen
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsMen
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = soprano \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Voice = tenor \tenor
            \addlyrics \wordsMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}
