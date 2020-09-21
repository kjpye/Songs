\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Redemption Ground,"
  subtitle    = "Sankey No. 20"
  subsubtitle = "Sankey 880 No. 466"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "James McGranahan"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Ed Nathan"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key c \major
  \time 3/4
  \tempo 4=120
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \repeat volta 4 {
    \mark \markup { \box "A" } s4. s2.*3 s4.
    \mark \markup { \box "B" } s4. s2.*3 s4.
    \mark \markup { \box "C" } s4. s2.*3 s4.
    \mark \markup { \box "D" } s4. s2.*3 s4.
  }
}

soprano = \relative c'' {
  \global
  \repeat volta 5 {
    g8 g e
    c'4. b8 b a
    a4. a8 a f
    c'4. a8 a g
    g4. \bar "" \break g8 g e
    e'4. e8 d c % B+
    a4. c8 b a
    g8 e' d4 c8(b)
    c4. \bar "||" \break g8^\markup \upright Chorus a b
    c4. c8 b gis % C+
    a4. a8 b c
    d4. d8 c fis,
    g4. \bar "" \break g8 g e
    e'4. e8 d c % D+
    a4. c8 b a
    g8 e' d4 c8(b)
    c4.
  }
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative c' {
  \global
  \repeat volta 5 {
    e8 e c
    e4. g8 g f
    f4. f8 f c
    f4. 8 8 e
    e4. \bar "" \break e8 e c
    g'4. 8 8 8 % B+
    f4. 8 8 8
    e8 g f4 e8(d)
    e4. \bar "||" \break g8 a b
    c4. e,8 e d % C+
    c4. a'8 b c
    d4. g,8 fis d
    d4. \bar "" \break e8 e c
    g'4. 8 8 8 % D+
    f4. 8 8 8
    e8 g f4 e8(d)
    e4.
  }
}

tenor = \relative c' {
  \global
  \repeat volta 5 {
    c8 c g
    g4. g8 c c
    c4. 8 8 a
    a4. c8 c c
    c4. \bar "" \break c8 c g
    c4. c8 b c % B+
    c4. a8 b c
    c8 c a4 g
    g4. \bar "||" \break g8 a b
    c4. a8 gis b % C+
    a4. a8 b c
    d4. b8 a c
    b4. \bar "" \break c8 c g
    c4. c8 b c % D+
    c4. a8 b c
    c8 c a4 g
    g4.
  }
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
}

bass= \relative c {
  \global
  \repeat volta 5 {
    c8 c c
    c4. e8 f f
    f4. f8 f f
    f4. 8 c c
    c4. \bar "" \break c8 c c
    c4. c8 d e % B+
    f4. f8 f f
    c8 c f4 g
    c,4. \bar "||" \break g'8 a b
    c4. a8 e e % C+
    a,4. a'8 b c
    d4. d,8 d d
    g,4. \bar "" \break c8 c c
    c4. c8 d e % D+
    f4. f8 f f
    c8 c f4 g
    c,4.
  }
}

chorus = \lyricmode {
  Re- demp- tion ground, the ground of peace!
  Re- demp- tion ground, O wond- rous grace!
  Here let our praise to God a- bound,
  Who saves us on RE- DEMP- TION GROUND!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Come sing, my soul, and praise the Lord,
  Who hath re- deemed thee by His blood;
  De- liv- ered thee from chains that bound,
  And brought thee to re- demp- tion ground.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Once from my God I wan- dered far,
  And with His ho- ly will made war:
  But now my songs to God a- bound;
  I'm stand- ing on re- demp- tion ground.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, joy- ous hour when God to me
  A vi- sion gave of Cal- va- ry:
  My bonds were loosed, my soul un- bound;
  I sang up- on re- demp- tion ground.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  No works of mer- it now I plead,
  But Je- sus take for all my need;
  No right- eous- ness in me is found,
  Ex- cept up- on re- demp- tion ground.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Come, wea- ry soul, and here find rest;
  Ac- cept re- demp- tion, and be blest:
  The Christ who died, by God is crowned
  To par- don on re- demp- tion ground.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\nCome " "sing, " "my " "soul, " "and " "praise " "the " "Lord, "
  "\nWho " "hath " re "deemed " "thee " "by " "His " "blood; "
  "\nDe" liv "ered " "thee " "from " "chains " "that " "bound, "
  "\nAnd " "brought " "thee " "to " re demp "tion " "ground. "
  "\nRe" demp "tion " "ground, " "the " "ground " "of " "peace! "
  "\nRe" demp "tion " "ground, " "O " wond "rous " "grace! "
  "\nHere " "let " "our " "praise " "to " "God " a "bound, "
  "\nWho " "saves " "us " "on " RE DEMP "TION " "GROUND!\n"

  \set stanza = "2."
  "\nOnce " "from " "my " "God " "I " wan "dered " "far, "
  "\nAnd " "with " "His " ho "ly " "will " "made " "war: "
  "\nBut " "now " "my " "songs " "to " "God " a "bound; "
  "\nI'm " stand "ing " "on " re demp "tion " "ground. "
  "\nRe" demp "tion " "ground, " "the " "ground " "of " "peace! "
  "\nRe" demp "tion " "ground, " "O " wond "rous " "grace! "
  "\nHere " "let " "our " "praise " "to " "God " a "bound, "
  "\nWho " "saves " "us " "on " RE DEMP "TION " "GROUND!\n"

  \set stanza = "3."
  "\nOh, " joy "ous " "hour " "when " "God " "to " "me "
  "\nA " vi "sion " "gave " "of " Cal va "ry: "
  "\nMy " "bonds " "were " "loosed, " "my " "soul " un "bound; "
  "\nI " "sang " up "on " re demp "tion " "ground. "
  "\nRe" demp "tion " "ground, " "the " "ground " "of " "peace! "
  "\nRe" demp "tion " "ground, " "O " wond "rous " "grace! "
  "\nHere " "let " "our " "praise " "to " "God " a "bound, "
  "\nWho " "saves " "us " "on " RE DEMP "TION " "GROUND!\n"

  \set stanza = "4."
  "\nNo " "works " "of " mer "it " "now " "I " "plead, "
  "\nBut " Je "sus " "take " "for " "all " "my " "need; "
  "\nNo " right eous "ness " "in " "me " "is " "found, "
  "\nEx" "cept " up "on " re demp "tion " "ground. "
  "\nRe" demp "tion " "ground, " "the " "ground " "of " "peace! "
  "\nRe" demp "tion " "ground, " "O " wond "rous " "grace! "
  "\nHere " "let " "our " "praise " "to " "God " a "bound, "
  "\nWho " "saves " "us " "on " RE DEMP "TION " "GROUND!\n"

  \set stanza = "5."
  "\nCome, " wea "ry " "soul, " "and " "here " "find " "rest; "
  "\nAc" "cept " re demp "tion, " "and " "be " "blest: "
  "\nThe " "Christ " "who " "died, " "by " "God " "is " "crowned "
  "\nTo " par "don " "on " re demp "tion " "ground. "
  "\nRe" demp "tion " "ground, " "the " "ground " "of " "peace! "
  "\nRe" demp "tion " "ground, " "O " wond "rous " "grace! "
  "\nHere " "let " "our " "praise " "to " "God " a "bound, "
  "\nWho " "saves " "us " "on " RE DEMP "TION " "GROUND! "
}
  
\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne \chorus }
            \new Lyrics \lyricsto "soprano" \wordsTwo
            \new Lyrics \lyricsto "soprano" \wordsThree
            \new Lyrics \lyricsto "soprano" \wordsFour
            \new Lyrics \lyricsto "soprano" \wordsFive
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
%    \articulate
    <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano \bar "|." }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne \chorus
                                              \wordsTwo \chorus
                                              \wordsThree \chorus
                                              \wordsFour \chorus
                                              \wordsFive \chorus
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
