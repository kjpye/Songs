\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Hark! what Means those Holy Voices?"
  subtitle    = "Sankey No. 24"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "attr. H. L. Hassler"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "John Cawood"
  meter       = "8.7.8.7"
  piece       = \markup \smallCaps Stuttgart

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

verses = 6

global = {
  \key g \major
  \time 4/4
  \tempo 4=120
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \repeat volta \verses {
    \mark \markup { \box "A" } s1*4
    \mark \markup { \box "B" } s1*4
  }
}

soprano = \relative {
  \global
  \repeat volta \verses {
    d'4 d g g
    a4 a b g
    d'4 d e c
    a4 d b2
    b4 b a b % B
    g4 a fis d
    g4 e d g
    g4 fis g2
  }
}

alto = \relative {
  \global
  \repeat volta \verses {
    d'4 d b b
    e4 d d d
    g4 g g g
    g4 fis g2
    d4 d d d % B
    d4 cis d d
    d4 c b d
    d4 d d2
  }
}

tenor = \relative {
  \global
  \repeat volta \verses {
    b4 a g g
    g4 fis g b
    g4  b c e
    d4 d d2
    g,4 g fis fis % B
    b4 a a fis
    g4 g d' b
    a8 b c4 b2
  }
}

bass= \relative {
  \global
  \repeat volta \verses {
    g4 fis e d
    c4 d g g,
    b4 g c a
    d4 d g2
    g,4 b d d % B
    e4 a, d d
    b4 c g b8 c
    d4 d g2
  }
}

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Hark! what mean those ho -- ly voi -- ces
  Sweet -- ly sound -- ing in the skies?
  Lo! th'an -- gel -- ic host re -- joi -- ces,
  Loud -- est hal -- le -- lu -- jahs rise.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  List -- en to the won -- drous sto -- ry
  Which they chant in hymns of joy:
  "\"Glo" -- ry in the high -- est, glo -- ry!
  Glo -- ry be to God most high.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  "\"Peace" on earth, good -- will from hea -- ven,
  Reach -- ing far as man is found:
  Souls re -- deemed and sins for -- giv -- en,
  Loud our gold -- en harps shall sound.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  "\"Christ" is born! the great An -- oint -- ed!
  Heaven and earth His glo -- ry sing;
  Oh, re -- ceive whom God ap -- point -- ed
  For your proph -- et, Priest, and King!
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  "\"Has" -- ten, mor -- tals, to a -- dore Him,
  Learn His name and taste His joy,
  Till in heaven ye sing be -- fore Him--
  Glo -- ry be to God most "high!\""
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Let us learn the wond -- rous stor -- y
  Of our great Re -- deem -- er's birth;
  Spread the bright -- ness of His glo -- ry,
  Till it cov -- er all the earth.
}
  
wordsMidi = \lyricmode {
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
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne \chorus }
            \new Lyrics \lyricsto "soprano"   \wordsTwo
            \new Lyrics \lyricsto "soprano"   \wordsThree
            \new Lyrics \lyricsto "soprano"   \wordsFour
            \new Lyrics \lyricsto "soprano"   \wordsFive
            \new Lyrics \lyricsto "soprano"   \wordsSix
%            \new Lyrics \lyricsto "soprano" { \wordsOne   \chorus
%                                              \wordsTwo   \chorus
%                                              \wordsThree \chorus
%                                              \wordsFour  \chorus
%                                              \wordsFive  \chorus
%                                              \wordsSix   \chorus
%                                            }
%            \new Lyrics \lyricsto "soprano" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
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
    \midi {}
  }
}
