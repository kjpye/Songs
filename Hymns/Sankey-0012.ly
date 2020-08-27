\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "O, Praise ye the Lord"
  subtitle    = "Sankey No. 12"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Dr. Gauntlett"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "H. F. Lyte"
  meter       = "5.5.6.5"
  piece       = "Houghton"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 3/4
  \tempo 4=120
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4 s2.*5
  \mark \markup { \box "B" } s2.*5
  \mark \markup { \box "C" } s2.*5 s2
}

TempoTrack = {
}

soprano = \relative c' {
  \global
  \repeat volta 3 {
    d4
    b'4 g e
    d2 d4
    b'4 g e
    d2 g4
    c4 c a \break
    d2 b4
    a4 fis e
    d2 a'4
    fis4 g b
    b4 a b \break
    c4 d e
    d2 d4
    d4 c c
    c4 b b
    a4 g fis
    g2
  }
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative c' {
  \global
  \repeat volta 3 {
    d4
    d4 d c
    b2 d4
    d4 d c
    b2 g'4
    g4 g fis
    g2 g4
    fis4 d cis
    d2 d4
    d4 d g
    g4 fis g
    g4 g g g2 f4
    e4 e e
    d4 d d
    e4 d d
    d2
  }
}

tenor = \relative c' {
  \global
  \repeat volta 3 {
    b4
    b4 d g,
    a2 b4
    b4 d g,
    g2 b4
    e4 e d \break
    d2 d4 % B
    d4 a g
    fis2 fis4
    a4 g d'
    d4 d d \break
    c4 b c
    b2 b4
    b4 a a
    a4 g d'
    c4 b a
    b2
  }
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
}

bass= \relative c {
  \global
  \repeat volta 3 {
    g4
    g4 b c
    g2 g4
    g4 b c
    g2 e'4
    a,4 a d
    b2 g4
    a4 a a
    d2 d4
    d4 b g
    d'4 d g
    e4 d c
    g'2 gis4
    gis4 a g
    fis4 g g,
    c4 d d
    g,2
  }
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, praise ye the Lord
  With heart and with voice;
  His merc- ies re- cord,
  And round Him re- joice.
  Ye child- ren of Zi- on,
  Your Sav- iour a- dore!
  And learn to rel- y on
  His grace ev- er- more.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Re- pose on His arm
  Ye sheep of His fold,
  What ter- ror can harm,
  With Him to up- hold?
  His saints are His treas- ure,
  Their peace will He seek,
  And pour with- out meas- ure
  His gifts on the meek.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Go on in His might,
  Ye men of the Lord;
  His Word be your Light,
  His prom- ise your sword;
  The King of Sal- va- tion
  Your foes will sub- due,
  Bring forth your ob- la- tion,
  Your prais- es re- new.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\nOh, " "praise " "ye " "the " "Lord "
  "\nWith " "heart " "and " "with " "voice; "
  "\nHis " merc "ies " re "cord, "
  "\nAnd " "round " "Him " re "joice. "
  "\nYe " child "ren " "of " Zi "on, "
  "\nYour " Sav "iour " a "dore! "
  "\nAnd " "learn " "to " rel "y " "on "
  "\nHis " "grace " ev er "more. "

  \set stanza = "2."
  "\nRe" "pose " "on " "His " "arm "
  "\nYe " "sheep " "of " "His " "fold, "
  "\nWhat " ter "ror " "can " "harm, "
  "\nWith " "Him " "to " up "hold? "
  "\nHis " "saints " "are " "His " treas "ure, "
  "\nTheir " "peace " "will " "He " "seek, "
  "\nAnd " "pour " with "out " meas "ure "
  "\nHis " "gifts " "on " "the " "meek. "

  \set stanza = "3."
  "\nGo " "on " "in " "His " "might, "
  "\nYe " "men " "of " "the " "Lord; "
  "\nHis " "Word " "be " "your " "Light, "
  "\nHis " prom "ise " "your " "sword; "
  "\nThe " "King " "of " Sal va "tion "
  "\nYour " "foes " "will " sub "due, "
  "\nBring " "forth " "your " ob la "tion, "
  "\nYour " prais "es " re "new. "
}
  
\book {
  \bookOutputSuffix "repeat"
  \score {
%    \unfoldRepeats
%    \articulate
%    <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \new Voice \RehearsalTrack
%            \new Voice \TempoTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" \wordsOne
            \new Lyrics \lyricsto "soprano" \wordsTwo
            \new Lyrics \lyricsto "soprano" \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
          >>
        >>
%        >>
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
%    \articulate
    <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \new Voice \RehearsalTrack
%            \new Voice \TempoTrack
            \new Voice = "soprano" { \voiceOne \soprano  \bar "|." }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne
                                              \wordsTwo
                                              \wordsThree
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
          >>
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
    <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \new Voice \RehearsalTrack
%            \new Voice \TempoTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
          >>
        >>
        >>
      >>
    >>
    \midi {}
  }
}
