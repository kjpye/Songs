\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Glory to God on High!"
  subtitle    = "Sankey No. 7"
  subsubtitle = "Sankey 880 No. 402"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "F. Giardini"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "J. Allen"
  meter       = "6.6.4.6.6.6.4"
  piece       = "Moscow"

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
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s2.*6
  \mark \markup { \box "B" } s2.*5
  \mark \markup { \box "C" } s2.*5
}

TempoTrack = {
}

soprano = \relative c'' {
  \global
  \repeat volta 4 {
    d4 b g
    a2 fis4
    g2.
    g4 a b
    c2 b4
    a2. \break
    d4 b g % B
    d2.
    a'4 b c
    b4. a8 g4
    a4 b c \break
    b4. a8 g4 % C
    g4 g g
    d'4. c8 b4
    a4 g fis
    g2.
  }
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative c'' {
  \global
  \repeat volta 4 {
    g4 d g
    e2 d4
    d2.
    d4 fis g
    g2 g4
    g4(fis8 e fis4)
    d'4 b g % B
    d2.
    fis4 g a
    g4. d8 d4
    a'4 g g
    g4. fis8 g4
    g4 fis e
    d4. fis8 g4
    e4 d d
    d2.
  }
}

tenor = \relative c' {
  \global
  \repeat volta 4 {
    b4 g b
    c2 a4
    b2.
    b4 c d
    e2 d4
    d2.
    d4 b g
    d2.
    d'4 d d
    d4. c8 b4
    d4 d e
    d4. c8 d4 % C
    d4 d c
    g4. a8 b4
    c4 b a
    b2.
  }
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
}

bass= \relative c {
  \global
  \repeat volta 4 {
    g4 b e
    c2 d4
    g,2.
    b'4 a g
    c,2 g'4
    d2.
    d'4 b g % B
    d2.
    d4 g fis
    g4. g8 g4
    fis4 g c,
    g'4. g8 g4 % D
    e4 d c
    b4. a8 g4
    c4 d d
    g,2.
  }
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Glor- y to God on high!
  Let heaven and earth rep- ly,
  "\"Praise" ye His "name!\""
  His love and grace a- dore,
  Who all our sor- rows bore;
  Sing loud for ev- er- more,
  "\"Worth-" y the "Lamb!\""
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  While they a- round the throne
  Cheer- ful- ly join in one,
  Prais- ing His name,—
  Ye who have felt His blood
  Seal- ing your peace with God,
  Sound His dear name a- broad!
  "\"Worth-" y the "Lamb!\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Join, all ye ran- somed race,
  Our Lord and God to bless;
  Praise ye His name!
  In Him we will re- joice,
  And make a joy- ful noise,
  Shout- ing with heart and voice,
  "\"Worth-" y the "Lamb!\""
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  What though we change our place,
  Yet we shall nev- er cease
  Prais- ing His name:
  To Him our songs we bring,
  Hail Him our grac- ious King,
  And with- out ceas- ing sing,
  "\"Worth-" y the "Lamb!\""
}
  
wordsMidi = \lyricmode {
  \set stanza = "1. "
  Glor "y " "to " "God " "on " "high! "
  "\nLet " "heaven " "and " "earth " rep "ly, "
  "\n\"Praise " "ye " "His " "name!\" "
  "\nHis " "love " "and " "grace " a "dore, "
  "\nWho " "all " "our " sor "rows " "bore; "
  "\nSing " "loud " "for " ev er "more, "
  "\n\"Worth" "y " "the " "Lamb!\"\n"

  \set stanza = "2. "
  "\nWhile " "they " a "round " "the " "throne "
  "\nCheer" ful "ly " "join " "in " "one, "
  "\nPrais" "ing " "His " "name,— "
  "\nYe " "who " "have " "felt " "His " "blood "
  "\nSeal" "ing " "your " "peace " "with " "God, "
  "\nSound " "His " "dear " "name " a "broad! "
  "\n\"Worth" "y " "the " "Lamb!\"\n"

  \set stanza = "3. "
  "\nJoin, " "all " "ye " ran "somed " "race, "
  "\nOur " "Lord " "and " "God " "to " "bless; "
  "\nPraise " "ye " "His " "name! "
  "\nIn " "Him " "we " "will " re "joice, "
  "\nAnd " "make " "a " joy "ful " "noise, "
  "\nShout" "ing " "with " "heart " "and " "voice, "
  "\n\"Worth" "y " "the " "Lamb!\"\n"

  \set stanza = "4. "
  "\nWhat " "though " "we " "change " "our " "place, "
  "\nYet " "we " "shall " nev "er " "cease "
  "\nPrais" "ing " "His " "name: "
  "\nTo " "Him " "our " "songs " "we " "bring, "
  "\nHail " "Him " "our " grac "ious " "King, "
  "\nAnd " with "out " ceas "ing " "sing, "
  "\n\"Worth" "y " "the " "Lamb!\""
}
  
\book {
  \bookOutputSuffix "repeat"
  \score {
%    \unfoldRepeats \articulate <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<

          \new Dynamics \dynamicsWomen
          \new Staff <<
%            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" \wordsOne
            \new Lyrics \lyricsto "soprano" \wordsTwo
            \new Lyrics \lyricsto "soprano" \wordsThree
            \new Lyrics \lyricsto "soprano" \wordsFour
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
    \midi {}
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
    \unfoldRepeats
    % \articulate
    <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<

          \new Dynamics \dynamicsWomen
          \new Staff <<
%            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne \wordsTwo \wordsThree \wordsFour }
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
    % \articulate <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<

          \new Dynamics \dynamicsWomen
          \new Staff <<
%            \new Voice \RehearsalTrack
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
    \midi {}
  }
}
