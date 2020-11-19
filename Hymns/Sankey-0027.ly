\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Never Shone a Light so Fair!"
  subtitle    = "Sankey No. 27"
  subsubtitle = "New Hymnal No. 64"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "R. Lowry"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Fanny J. Crosby"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

verses = 3

global = {
  \key d \major
  \time 4/4
  \tempo 4=120
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \repeat volta \verses {
    \mark \markup { \box "A" } s1*4
    \mark \markup { \box "B" } s1*4
    \mark \markup { \box "C" } s1*3
    \mark \markup { \box "D" } s1*3
    \mark \markup { \box "E" } s1*4
  }
}

soprano = \relative {
  \global
  \repeat volta \verses {
    a'4 b a4. fis8
    a4 b a2
    fis4 g fis4. d8
    e4 fis d2 \break
    a'4 b a4. fis8 % B
    d'4 b a2
    a4 d cis4. a8
    cis4 b a2 \break
    a4. a8 a a b cis % C
    d2 a \bar "||"
    a4.^\markup \bold \smallCaps Chorus. a8 a a cis d \break
    e2 a, % D
    d4. d8 e(d) cis(b)
    a4 d a2 \break
    b4. b8 a2 % E
    g4. g8 fis2
    b4 d a4. d8
    d4 cis d2
  }
}

alto = \relative {
  \global
  \repeat volta \verses {
    d'4 d d4. d8
    d4 d d2
    d4 d d4. d8
    cis4 cis d2
    d4 d d4. d8 % B
    fis4 g fis2
    e4 e e4. e8
    e4 gis a2
    g4. g8 g g g g % C
    fis2 fis \bar "||"
    e4. e8 e e e fis
    g2 g % D
    fis4. fis8 g(b) a(g)
    fis4 fis fis2
    d4. d8 d2 % E
    c4. c8 d2
    d4 d d4. d16(e)
    fis4 g fis2
  }
}

tenor = \relative {
  \global
  \repeat volta \verses {
    fis4 g fis4. a8
    fis4 g fis2
    a4 b a4. fis8
    g4 a fis2
    fis4 g fis4. a8 % B
    a4 d d2
    a4 gis a4. a8
    a4 d cis2
    cis4. cis8 cis cis d e % C
    d2 d \bar "||"
    cis4. cis8 cis cis a a
    cis2 cis % D
    d4. a8 b(d) d4
    d4 a d2
    d4. d8 d4(a) % E
    a4. a8 a2
    g4 g fis4. a16(b)
    a4 a a2
  }
}

bass= \relative {
  \global
  \repeat volta \verses {
    d4 d d4. d8
    d4 d d2
    d4 d d4. d8
    a4 a d2
    d4 d d4. d8 % B
    d4 d d2
    cis4 b a4. cis8
    e4 e a,2
    a4. a8 a a a a % C
    d2 d \bar "||"
    a'4. a8 a a a a
    a2 a % D
    d,4. d8 g4 g
    d4 d d2
    g4. g8 fis2 % E
    e4. a,8 d2
    fis,4 b d4. fis16(g)
    a4 a, d2
  }
}

chorus = \lyricmode {
  "\"Christ" has come, the Prince of glo -- ry,
  Come in hum -- ble hearts to dwell;
  God with us, God with us
  God with us, Im -- man -- u -- "el!\""
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Ne -- ver shone a light so fair,
  Nev -- er fell so sweet a song,
  As the cho -- rus in the air
  Chan -- ted by the an -- gel -- throng;
  Ev -- 'ry star took up the sto -- ry:
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Still that Ju -- bi -- lee of song
  Breaks up -- on the ris -- ing mornl
  While the an -- them rolls a -- long,
  Floods of light the earth a -- dorn;
  Old and Young take up the sto -- ry:
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Wel -- come now the bles -- sed day,
  When we praise the Lord our King!
  When we meet to praise and pray,
  And His love with glad -- ness sing;
  Let the world take up the sto -- ry:
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\nNe" "ver " "shone " "a " "light " "so " "fair, "
  "\nNev" "er " "fell " "so " "sweet " "a " "song, "
  "\nAs " "the " cho "rus " "in " "the " "air "
  "\nChan" "ted " "by " "the " an gel "throng; "
  "\nEv" "'ry " "star " "took " "up " "the " sto "ry: "
  "\n\"Christ " "has " "come, " "the " "Prince " "of " glo "ry, "
  "\nCome " "in " hum "ble " "hearts " "to " "dwell; "
  "\nGod " "with " "us, " "God " "with " "us "
  "\nGod " "with " "us, " Im man u "el!\" "

  \set stanza = "2."
  "\nStill " "that " Ju bi "lee " "of " "song "
  "\nBreaks " up "on " "the " ris "ing " "mornl "
  "\nWhile " "the " an "them " "rolls " a "long, "
  "\nFloods " "of " "light " "the " "earth " a "dorn; "
  "\nOld " "and " "Young " "take " "up " "the " sto "ry: "
  "\n\"Christ " "has " "come, " "the " "Prince " "of " glo "ry, "
  "\nCome " "in " hum "ble " "hearts " "to " "dwell; "
  "\nGod " "with " "us, " "God " "with " "us "
  "\nGod " "with " "us, " Im man u "el!\" "

  \set stanza = "3."
  "\nWel" "come " "now " "the " bles "sed " "day, "
  "\nWhen " "we " "praise " "the " "Lord " "our " "King! "
  "\nWhen " "we " "meet " "to " "praise " "and " "pray, "
  "\nAnd " "His " "love " "with " glad "ness " "sing; "
  "\nLet " "the " "world " "take " "up " "the " sto "ry: "
  "\n\"Christ " "has " "come, " "the " "Prince " "of " glo "ry, "
  "\nCome " "in " hum "ble " "hearts " "to " "dwell; "
  "\nGod " "with " "us, " "God " "with " "us "
  "\nGod " "with " "us, " Im man u "el!\" "
}
  
\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano"   \wordsOne
            \new Lyrics \lyricsto "soprano" { \wordsTwo \chorus }
            \new Lyrics \lyricsto "soprano"   \wordsThree
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
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
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
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" \wordsMidi
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
    \midi {}
  }
}
