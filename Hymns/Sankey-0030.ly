\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Hark! the Herald Angels sing."
  subtitle    = "Sankey No. 30"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Mendelssohn"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "C. Wesley"
  meter       = "7.7.7.7.D."
  piece       = \markup \smallCaps "Mendelssohn"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

verses = 3

global = {
  \key g \major
  \time 4/4
  \tempo 4=120
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \repeat volta \verses {
    \mark \markup { \box "A" } s1*4 \break
    \mark \markup { \box "B" } s1*4 \break
    \mark \markup { \box "C" } s1*4 \break
    \mark \markup { \box "D" } s1*4 \break
    \mark \markup { \box "E" } s1*4 \break
  }
}

soprano = \relative {
  \global
  \repeat volta \verses {
    d'4 g g4. fis8
    g4 b b(a)
    d4 d d4. c8
    b4 a b2
    d,4 g g4. fis8 % B
    g4 b b(a)
    d4 a a4. fis8
    fis4 e d2
    d'4 d d g, % C
    c4 b b(a)
    d4 d d g,
    c4 b b(a)
    e'4 e e d % D
    c4 b c2
    a4 b8(c) d4. g,8
    g4 a b2
    e4.^\markup \smallCaps Harmony. e8 e4 d
    c4 b c2
    a4^\markup \smallCaps Unison. b8(c) d4. g,8
    g4 a g2
  }
}

alto = \relative {
  \global
  \repeat volta \verses {
    d'4 d d4. d8
    d4 g g(fis)
    g4 fis e a
    g4 fis g2
    d4 d d4. d8 % B
    b4 g' g2
    fis4 e fis4. d8
    d4 cis d2
    d4 d d g % C
    a4 g g(fis)
    d4 d d g
    a4 g g(fis)
    c'4 c c b % D
    a4 <e gis> <e a>2
    fis4 fis g4. d8
    d4 fis g2
    c4 c c b % E
    a4 gis a2
    d,4 fis g4. d8
    d4 fis g2
  }
}

tenor = \relative {
  \global
  \repeat volta \verses {
    b4 b b4. a8
    g4 d' d2
    d4 d e e
    d4 d d2
    b4 b b4. a8 % B
    g4 d' e2
    d4 a d4. a8
    b4 g fis2
    d'4 d d d % C
    d4 d d2
    d4 d d d
    d4 d d2
    e4 e e e % D
    e4 d c2
    d4 d d4. b8
    b4 d d2
    e4 e e d % E
    c4 b c2
    d4 d d4. b8
    b4 c b2
  }
}

bass= \relative {
  \global
  \repeat volta \verses {
    g4 g g d
    b4 g d'2
    b4 b c c
    d4 d g,2
    g'4 g g d % B
    e4 c cis4.(a8)
    b4 cis d fis,
    g4 a d2
    d'4 d d b % C
    fis4 g d2
    d'4 d d b
    fis4 g d2
    c4 c c c % D
    d4 e a2
    c4 c b g
    d4 d g,2
    c'4 c c b % E
    a4 gis a(g)
    fis4 c' b g
    d4 d g2
  }
}

chorus = \lyricmode {
  Hark! the her -- ald an -- gels sing,
  "\"Glo" -- ry to the new -- born "King.\""
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Hark! the her -- ald an -- gels sing,
  "\"Glo" -- ry to the new -- born King,
  Peace on earth and mer -- cy mild,
  God and sin -- ners re -- con -- "ciled!\""
  Joy -- ful all ye na -- tions, rise.
  Join the tri -- umph of the skies;
  With th'an gel -- ic host pro -- claim,
  "\"Christ" is born in Beth -- le -- "hem.\""
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Christ, by high -- est heav'n a -- dored,
  Christ, the ev -- er -- last -- ing Lord,
  Late in time be -- hold Him come,
  Off -- spring of a vir -- gin's womb:
  Veil'd in flesh the God -- head see;
  Hail th'In -- car -- nate De -- i -- ty,
  Pleased as Man with men to dwell,
  Je -- sus our Im -- man -- u -- el!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Hail, the heav'n -- ly Prince of Peace!
  Hail the Son of Right -- eous -- ness!
  Light and life to all He brings,
  Ris'n with heal -- ing in His wings;
  Mild He lays His glo -- ry by;
  Born, that man no more may die;
  Born, to raise the sons of earth;
  Born to give them se -- cond birth.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\nHark! " "the " her "ald " an "gels " "sing, "
  "\n\"Glo" "ry " "to " "the " new "born " "King, "
  "\nPeace " "on " "earth " "and " mer "cy " "mild, "
  "\nGod " "and " sin "ners " re con "ciled!\" "
  "\nJoy" "ful " "all " "ye " na "tions, " "rise. "
  "\nJoin " "the " tri "umph " "of " "the " "skies; "
  "\nWith " "th'an " gel "ic " "host " pro "claim, "
  "\n\"Christ " "is " "born " "in " Beth le "hem.\" "
  "\nHark! " "the " her "ald " an "gels " "sing, "
  "\n\"Glo" "ry " "to " "the " new "born " "King.\" "
  \set stanza = "2."
  "\nChrist, " "by " high "est " "heav'n " a "dored, "
  "\nChrist, " "the " ev er last "ing " "Lord, "
  "\nLate " "in " "time " be "hold " "Him " "come, "
  "\nOff" "spring " "of " "a " vir "gin's " "womb: "
  "\nVeil'd " "in " "flesh " "the " God "head " "see; "
  "\nHail " th'In car "nate " De i "ty, "
  "\nPleased " "as " "Man " "with " "men " "to " "dwell, "
  "\nJe" "sus " "our " Im man u "el! "
  "\nHark! " "the " her "ald " an "gels " "sing, "
  "\n\"Glo" "ry " "to " "the " new "born " "King.\" "
  \set stanza = "3."
  "\nHail, " "the " heav'n "ly " "Prince " "of " "Peace! "
  "\nHail " "the " "Son " "of " Right eous "ness! "
  "\nLight " "and " "life " "to " "all " "He " "brings, "
  "\nRis'n " "with " heal "ing " "in " "His " "wings; "
  "\nMild " "He " "lays " "His " glo "ry " "by; "
  "\nBorn, " "that " "man " "no " "more " "may " "die; "
  "\nBorn, " "to " "raise " "the " "sons " "of " "earth; "
  "\nBorn " "to " "give " "them " se "cond " "birth. "
  "\nHark! " "the " her "ald " an "gels " "sing, "
  "\n\"Glo" "ry " "to " "the " new "born " "King.\" "
}
  
\book {
  \bookOutputSuffix "repeat"
  \score {
%    \unfoldRepeats
%    \articulate
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
%            \new Lyrics \lyricsto "soprano" { \wordsOne   \chorus
%                                              \wordsTwo   \chorus
%                                              \wordsThree \chorus
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
  }
}
  
\book {
  \bookOutputSuffix "single"
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
