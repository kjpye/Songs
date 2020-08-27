\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Though Troubles Assail!"
  subtitle    = "Sankey No. 13"
  subsubtitle = "Sankey 880 No. 722"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Dr. Croft"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "John Newton"
  meter       = "5.5.6.5"
  piece       = "Hanover"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key a \major
  \time 3/4
  \tempo 4=120
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4 s2.*4 s2
  \mark \markup { \box "B" } s4 s2.*5
  \mark \markup { \box "C" } s2.*5 s2
}

TempoTrack = {
}

soprano = \relative c' {
  \global
  \repeat volta 4 {
    e4
    a4 a b
    cis 2 e4
    a,4 b gis
    a2 b4
    cis4 b \bar "" \break a
    gis2 a4
    b4 a8(gis) fis4
    e2 gis4
    a4 b cis
    a4 fis d' \break
    cis4 b a
    e'2 e,4
    fis4 gis a
    b4 e, cis'
    fis,4 b gis
    a2
  }
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative c' {
  \global
  \repeat volta 4 {
    cis4
    e4 e e
    e2 e4
    fis4 fis d
    cis2 e4
    e4 e e8(dis)
    e2 e4
    e4 fis8(e) dis4
    e2 eis4
    fis4 fis eis
    fis4 fis e
    e4 e e8(dis)
    e2 e4
    d4 e e
    d4 cis e
    d4 fis d
    cis2
  }
}

tenor = \relative c' {
  \global
  \repeat volta 4 {
    a4
    cis4 a gis
    a2 b4
    cis4 d b
    a2 gis4
    a4 b cis8(a)
    b2 cis4
    b4 cis a
    gis2 cis4
    cis4 b gis8(cis)
    cis4 cis b
    a4 b cis8(a)
    gis2 a4
    a4 d cis
    e,4 gis a
    a4 d b
    a2
  }
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
}

bass= \relative c {
  \global
  \repeat volta 4 {
    a4
    a4 cis e
    a2 gis4
    fis4 d e
    a,2 e'4
    a4 gis fis
    e2 cis4
    gis4 a b
    e2 cis4
    fis4 d cis
    fis4 a gis
    a4 gis fis
    e2 cis4
    d4 b a
    gis4 cis a
    d4 b e
    a,2
  }
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Though trou- bles as- sail,
  And dan- gers af- fright;
  Tho' friends should all fail,
  And foes all u- nite—
  Yet one thing se- cures us,
  What- ev- er be- tide:
  The Scrip- ture as- sures us,
  "\"The" Lord will pro- "vide.\""
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  The birds, with- out barn
  Or store- house, are fed;
  From there let us learn
  To trust for our bread:
  His saints what is fit- ting
  Shall ne'er be den- ied,
  So long as 'tis writ- ten,
  "\"The" Lord will pro- "vide.\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  His call we o- bey,
  Like Ab- ram of old,
  Not know- ing our way;
  But faith makes us bold:
  For though we are strang- ers,
  We have a good guide;
  And trust in all dan- ger:
  "\"The" Lord will pro- "vide.\""
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  No strength of our own,
  Or good- ness we claim;
  Yet since we have known
  The Sav- iour's great name,
  In this our strong tow- er
  For safe- ty we hide,
  Al- might- y His pow- er:
  "\"The" Lord will pro- "vide.\""
}
  
wordsMidi = \lyricmode {
  \set stanza = "1. "
  "Though " trou "bles " as "sail, "
  "\nAnd " dan "gers " af "fright; "
  "\nTho' " "friends " "should " "all " "fail, "
  "\nAnd " "foes " "all " u "nite— "
  "\nYet " "one " "thing " se "cures " "us, "
  "\nWhat" ev "er " be "tide: "
  "\nThe " Scrip "ture " as "sures " "us, "
  "\n\"The " "Lord " "will " pro "vide.\"\n"

  \set stanza = "2. "
  "\nThe " "birds, " with "out " "barn "
  "\nOr " store "house, " "are " "fed; "
  "\nFrom " "there " "let " "us " "learn "
  "\nTo " "trust " "for " "our " "bread: "
  "\nHis " "saints " "what " "is " fit "ting "
  "\nShall " "ne'er " "be " den "ied, "
  "\nSo " "long " "as " "'tis " writ "ten, "
  "\n\"The " "Lord " "will " pro "vide.\"\n"

  \set stanza = "3. "
  "\nHis " "call " "we " o "bey, "
  "\nLike " Ab "ram " "of " "old, "
  "\nNot " know "ing " "our " "way; "
  "\nBut " "faith " "makes " "us " "bold: "
  "\nFor " "though " "we " "are " strang "ers, "
  "\nWe " "have " "a " "good " "guide; "
  "\nAnd " "trust " "in " "all " dan "ger: "
  "\n\"The " "Lord " "will " pro "vide.\"\n"

  \set stanza = "4. "
  "\nNo " "strength " "of " "our " "own, "
  "\nOr " good "ness " "we " "claim; "
  "\nYet " "since " "we " "have " "known "
  "\nThe " Sav "iour's " "great " "name, "
  "\nIn " "this " "our " "strong " tow "er "
  "\nFor " safe "ty " "we " "hide, "
  "\nAl" might "y " "His " pow "er: "
  "\n\"The " "Lord " "will " pro "vide.\" "
}
  
\book {
  \bookOutputSuffix "repeat"
  \score {
%    \unfoldRepeats \articulate <<
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
  }
}
  
\book {
  \bookOutputSuffix "single"
  \score {
    \unfoldRepeats
    %\articulate
    <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff <<
            \new Voice \RehearsalTrack
%            \new Voice \TempoTrack
            \new Voice = "soprano" { \voiceOne \soprano \bar "|." }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne
                                              \wordsTwo
                                              \wordsThree
                                              \wordsFour
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
%            \new Voice \RehearsalTrack
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
