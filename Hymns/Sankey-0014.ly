\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Begone, Unbelief!"
  subtitle    = "Sankey No. 14"
  subsubtitle = "Sankey 880 No. 734"
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
    cis4 a g
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
    a4 g fis
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
  Be- gone, un- be- lief,
  My sav- iour is near,
  And for my re- lief
  Will sure- ly ap- pear;
  By prayer let me wrest- le,
  And He will per- form;
  With Christ in the ves- sel,
  I smile at the storm.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Though dark be my way,
  Since He is my Guide,
  'Tis mine to o- bey,
  'Tis His to pro- vide;
  Though cis- terns be brok- en,
  And creat- ures all fail,
  The word He hath spok- en
  Shall sure- ly pre- vail.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  His love, in time past,
  For- bids me to think
  He'll leave me at last
  In troub- le to sink:
  Each sweet Eb- en- ez- er
  I have in re- view
  Con- firms His good pleas- ure
  To help me quite through.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Why should I com- plain
  Of want or dis- tress,
  Temp- tat- ion or pain?—‐
  He told me no less;
  The heirs of sal- vat- ion,
  I know from His Word.
  Through much trib- u- lat- ion
  Must fol- low their Lord.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  How bit- ter that cup
  No heart can con- cieve,
  Which He drank quite up,
  That sin- ners might live!
  His way was much rough- er
  And dark- er than mine;
  Did Christ, my Lord, suf- fer,
  and shall I re- pine?
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Since all that I meet
  Shall work for my good,
  The bit- ter is sweet,
  The med- i- cine food;
  Though pain- ful at pres- ent,
  'Twill cease be- fore long,
  And then, oh, how pleas- ant
  The con- qeur- or's song!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1. "
  Be "gone, " un be "lief, "
  "\nMy " sav "iour " "is " "near, "
  "\nAnd " "for " "my " re "lief "
  "\nWill " sure "ly " ap "pear; "
  "\nBy " "prayer " "let " "me " wrest "le, "
  "\nAnd " "He " "will " per "form; "
  "\nWith " "Christ " "in " "the " ves "sel, "
  "\nI " "smile " "at " "the " "storm.\n"

  \set stanza = "2. "
  "\nThough " "dark " "be " "my " "way, "
  "\nSince " "He " "is " "my " "Guide, "
  "\n'Tis " "mine " "to " o "bey, "
  "\n'Tis " "His " "to " pro "vide; "
  "\nThough " cis "terns " "be " brok "en, "
  "\nAnd " creat "ures " "all " "fail, "
  "\nThe " "word " "He " "hath " spok "en "
  "\nShall " sure "ly " pre "vail.\n"

  \set stanza = "3. "
  "\nHis " "love, " "in " "time " "past, "
  "\nFor" "bids " "me " "to " "think "
  "\nHe'll " "leave " "me " "at " "last "
  "\nIn " troub "le " "to " "sink: "
  "\nEach " "sweet " Eb en ez "er "
  "\nI " "have " "in " re "view "
  "\nCon" "firms " "His " "good " pleas "ure "
  "\nTo " "help " "me " "quite " "through.\n"

  \set stanza = "4. "
  "\nWhy " "should " "I " com "plain "
  "\nOf " "want " "or " dis "tress, "
  "\nTemp" tat "ion " "or " "pain?—‐ "
  "\nHe " "told " "me " "no " "less; "
  "\nThe " "heirs " "of " sal vat "ion, "
  "\nI " "know " "from " "His " "Word. "
  "\nThrough " "much " trib u lat "ion "
  "\nMust " fol "low " "their " "Lord.\n"

  \set stanza = "5. "
  "\nHow " bit "ter " "that " "cup "
  "\nNo " "heart " "can " con "cieve, "
  "\nWhich " "He " "drank " "quite " "up, "
  "\nThat " sin "ners " "might " "live! "
  "\nHis " "way " "was " "much " rough "er "
  "\nAnd " dark "er " "than " "mine; "
  "\nDid " "Christ, " "my " "Lord, " suf "fer, "
  "\nand " "shall " "I " re "pine?\n"

  \set stanza = "6. "
  "\nSince " "all " "that " "I " "meet "
  "\nShall " "work " "for " "my " "good, "
  "\nThe " bit "ter " "is " "sweet, "
  "\nThe " med i "cine " "food; "
  "\nThough " pain "ful " "at " pres "ent, "
  "\n'Twill " "cease " be "fore " "long, "
  "\nAnd " "then, " "oh, " "how " pleas "ant "
  "\nThe " con qeur "or's " "song! "
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
            \new Lyrics \lyricsto "soprano" \wordsFive
            \new Lyrics \lyricsto "soprano" \wordsSix
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
                                              \wordsFive
                                              \wordsSix
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
