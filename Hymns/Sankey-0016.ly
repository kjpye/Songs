\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Redemption"
  subtitle    = "Sankey No. 16"
  subsubtitle = "Sankey 880 No. 357"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Peter Bilhorn"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "S. M. Sayford"
%  meter       = "meter"
%<  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key e \major
  \time 9/8
  \tempo 4=120
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4.*9
  \mark \markup { \box "B" } s4.*10
  \mark \markup { \box "C" } s4.*9
  \mark \markup { \box "D" } s4.*11
  \mark \markup { \box "E" } s4.*9
}

TempoTrack = {
  \repeat volta 4 {
    s4.
    s4.*3
    s4.*3
    s4.*2
    s4. % B
    s4.*9
    s4.*3 % C
    s4.*6
    s4.*3 % D
    s4.*8
    s4. % E
    s4.*3
    s2 \tempo 4=90
    s4 s8
    s2. \tempo 4=120
  }
}

soprano = \relative c'' {
  \global
  \repeat volta 4 {
    b4.
    b4.~b8 gis e e fis gis
    b4. a4 r8 a4.
    gis4.~gis8 fis8 e \bar "" \break gis8 e fis
    e4.~e b' % B+
    b4.~b8 gis e e fis gis
    b4. a4 r8 a4.
    gis4.~gis8 fis e gis e fis % C
    e4.~e \bar "||" e
    cis'4.~cis8 bis cis e dis cis
    b4. gis4 r8 b4. % D
    e4.~e8 dis cis dis b cis
    b4.~b b
    b4.~b8 gis e \bar "" \break e8 fis gis
    b4. a4 r8 a4. % E+
    gis4.~gis8 fis e gis e fis
    e4.~e
  }
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative c'' {
  \global
  \repeat volta 4 {
    gis4.
    gis4.~gis8
    e b b b e
    e4. e4 r8 e4.
    e4.~e8 b b e b b
    b4.~b gis' % B+
    gis4.~gis8 e b b b e
    gis4. e4 r8 e4.
    e4.~e8 b b e b b % C
    b4.~b e
    e4. dis8 dis e e e e
    e4. e4 r8 gis4. % D
    gis4.~gis8 gis gis fis dis e
    dis4.~dis a'
    gis4.~gis8 e b b8 b e
    e4. e4 r8 e4. % E+
    e4.~e8 b b e b b
    b4.~b
    
  }
}

tenor = \relative c' {
  \global
  \repeat volta 4 {
    b4.
    e4.~e8 b gis gis a b
    dis4. cis4 r8 cis4.
    b4.~b8 a gis b gis a
    gis4.~gis b % B+
    e4.~e8 b gis gis a b
    d4. cis4 r8 cis4.
    b4.~b8 a gis b gis a % C
    gis4.~gis gis
    a4.~a8 a a cis b a
    gis4. b4 r8 b4. % D
    cis4.~cis8 bis cis b b ais
    b4.~b dis
    e4.~e8 b gis gis8 a b
    d4. cis4 r8 cis4. % E+
    b4.~b8 a gis b gis a
    gis4.~gis
  }
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
}

bass= \relative c {
  \global
  \repeat volta 4 {
    e4.
    e4.~e8 e e e e e
    a,4. a4 r8 a4.
    b4.~b8 b b b b b
    e4.~e e % B+
    e4.~e8 e e e e e
    a,4. a4 r8 a4.
    b4.~b8 b b b b b % C
    e4.~e e
    a,4.~a8 a a a' a a
    e4. e4 r8 e4. % D
    cis4.~cis8 dis e fis fis fis
    b,4.~b b
    e4.~e8 e e e e e
    a,4. a4 r8 a4. % E+
    b4.~b8 b b b b b
    e4.~e
  }
}

chorus = \lyricmode {
  Be- lieve it, O sin- ner, be- lieve it:
  Re- ceive the glad mes- sage— 'tis true;
  Trust now in the cru- ci- fied Sa- viour,
  Sal- va- tion He of- fers to you.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Re- demp- tion! oh, won- der- ful sto- ry,—
  Glad mes- sage for you and for me:
  That Je- sus has pur- chas'd our par- don,
  And paid all the debt on the tree.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  From death un- to life He hath brought us,
  And made us by grace sons of God;
  A foun- tain is o- pen'd for sin- ners:
  Oh, wash and be cleans'd in the blood!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  No long- er shall sin have do- min- ion,
  Though pre- sent to tempt and an- noy;
  For Christ, in His bles- sed re- demp- tion,
  The pow- er of sin shall de- stroy.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Ac- cept now God's of- fer of mer- cy:
  To Je- sus oh hast- en to- day;
  For He will re- ceive him that com- eth,
  And nev- er will turn him a- way.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Re" demp "tion! " "oh, " won der "ful " sto "ry,— "
  "\nGlad " mes "sage " "for " "you " "and " "for " "me: "
  "\nThat " Je "sus " "has " pur "chas'd " "our " par "don, "
  "\nAnd " "paid " "all " "the " "debt " "on " "the " "tree. "
  "\nBe" "lieve " "it, " "O " sin "ner, " be "lieve " "it: "
  "\nRe" "ceive " "the " "glad " mes "sage— " "'tis " "true; "
  "\nTrust " "now " "in " "the " cru ci "fied " Sa "viour, "
  "\nSal" va "tion " "He " of "fers " "to " "you.\n"

  \set stanza = "2."
  "\nFrom " "death " un "to " "life " "He " "hath " "brought " "us, "
  "\nAnd " "made " "us " "by " "grace " "sons " "of " "God; "
  "\nA " foun "tain " "is " o "pen'd " "for " sin "ners: "
  "\nOh, " "wash " "and " "be " "cleans'd " "in " "the " "blood! "
  "\nBe" "lieve " "it, " "O " sin "ner, " be "lieve " "it: "
  "\nRe" "ceive " "the " "glad " mes "sage— " "'tis " "true; "
  "\nTrust " "now " "in " "the " cru ci "fied " Sa "viour, "
  "\nSal" va "tion " "He " of "fers " "to " "you.\n"

  \set stanza = "3."
  "\nNo " long "er " "shall " "sin " "have " "do" min "ion, "
  "\nThough " pre "sent " "to " "tempt " "and " an "noy; "
  "\nFor " "Christ, " "in " "His " bles "sed " re demp "tion, "
  "\nThe " pow "er " "of " "sin " "shall " de "stroy. "
  "\nBe" "lieve " "it, " "O " sin "ner, " be "lieve " "it: "
  "\nRe" "ceive " "the " "glad " mes "sage— " "'tis " "true; "
  "\nTrust " "now " "in " "the " cru ci "fied " Sa "viour, "
  "\nSal" va "tion " "He " of "fers " "to " "you.\n"

  \set stanza = "4."
  "\nAc" "cept " "now " "God's " of "fer " "of " mer "cy: "
  "\nTo " Je "sus " "oh " hast "en " to "day; "
  "\nFor " "He " "will " re "ceive " "him " "that " com "eth, "
  "\nAnd " nev "er " "will " "turn " "him " a "way. "
  "\nBe" "lieve " "it, " "O " sin "ner, " be "lieve " "it: "
  "\nRe" "ceive " "the " "glad " mes "sage— " "'tis " "true; "
  "\nTrust " "now " "in " "the " cru ci "fied " Sa "viour, "
  "\nSal" va "tion " "He " of "fers " "to " "you. "
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
            \new Lyrics \lyricsto "soprano" { \wordsOne \chorus }
            \new Lyrics \lyricsto "soprano" \wordsTwo
            \new Lyrics \lyricsto "soprano" \wordsThree
            \new Lyrics \lyricsto "soprano" \wordsFour
%            \new Lyrics \lyricsto "soprano" { \wordsOne
%                                              \wordsTwo
%                                              \wordsThree
%                                              \wordsFour
%                                            }
%            \new Lyrics \lyricsto "soprano" \wordsMidi
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
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
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
            \new Voice \TempoTrack
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
