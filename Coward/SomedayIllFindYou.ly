\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Someday I'll Find You"
  subtitle    = "from Private Lives"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Noel Coward"
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

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 3/4
}

TempoTrack = {
  \tempo "Tempo di Valse" 4=137
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \repeat segno 2 {
    \mark \markup { \box "77a" } s2.*4
    \mark \markup { \box "77b" } s2.*5
    \mark \markup { \box "77c" } s2.*5
    \mark \markup { \box "77d" } s2.*6
    \repeat volta 2 {
      \mark \markup { \box "78a" } s2.*4
      \mark \markup { \box "78b" } s2.*5
      \mark \markup { \box "78c" } s2.*4
      \mark \markup { \box "78d" } s2.*4
      \mark \markup { \box "79a" } s2.*4
      \mark \markup { \box "79b" } s2.*5
      \mark \markup { \box "79c" } s2.*4
      \alternative {
        {s2. | \mark \markup { \box "79d" } s2.}
        {s2.}
      }
    }
    s2.
  }
}

melody = \relative {
  \global
  \repeat segno 2 {
    R2.*4 \section |
    bes'4 g bes | des4 ces des | bes2 g4 | bes2. | c4 d c | bes2. |
    c2 \tuplet 3/2 {f8 ees c} | bes2. | 4 g bes | des ces des |
    bes2 g4 | c2. | f,4 aes c | f2 4 | ces2 f4 | bes,2. \section \break |
    \sectionLabel REFRAIN
    \repeat volta 2 {
      ees4 bes g | fis d'2 | ees4 bes g | fis d'2 | % 78a
      c4\(bes d | c bes g | ees2. | g2.\) | bes4 c d |
      f4 ees c | aes4. c8 aes g | f2. | bes4. d8 bes a |
      g2. | c8\( d f2\) | f,8\( aes c2\) | ees4 bes g |
      fis4 d'2 | ees4 bes g | f c'2 | 4 g e | % 79a
      c4 bes' c | a2. | aes | g8 aes bes4 4 | c2. |
      d8 ees f4 4 | e2. | ees4 c aes | f c' d, |
      \alternative {
        {ees2. | R |}
        {ees2.~ | }
      }
    }
    ees4\fermata r r\fermata
  }
  \bar "|."
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

wordsOne = \lyricmode {
  When one is lone -- ly the days are long;
  You seem so near
  But nev -- er ap -- pear.
  Each night I sing you a lov -- er's song;
  Please try to hear, My dear, my dear.
  \repeat volta 2 {
    Some day I'll find you,
    Moon -- light be -- hind you,
    True to the dream I am dream -- ing,
    As I draw near you
    You'll smile a lit -- tle smile;
    For a lit -- tle while
    We shall stand
    Hand in hand.
    I'll leave you nev -- er,
    Love you for ev -- er,
    All our past sor -- row re -- deem -- ing:
    Try to make it true,
    Say you love me too,
    Some -- day I'll find you a --
    \alternative {
      {gain.}
      {gain. __}
    }
  }
}

wordsTwo = \lyricmode {
  Can't you re -- mem -- ber the fun we had?
  Time is so fleet,
  Why should -- n't we meet?
  When you're a -- way from me days are sad;
  Lifes not com -- plete,
  My sweet, my sweet.
}

wordsSingle = \lyricmode {
  When one is lone -- ly the days are long;
  You seem so near
  But nev -- er ap -- pear.
  Each night I sing you a lov -- er's song;
  Please try to hear, My dear, my dear.
  \repeat volta 2 {
    Some day I'll find you,
    Moon -- light be -- hind you,
    True to the dream I am dream -- ing,
    As I draw near you
    You'll smile a lit -- tle smile;
    For a lit -- tle while
    We shall stand
    Hand in hand.
    I'll leave you nev -- er,
    Love you for ev -- er,
    All our past sor -- row re -- deem -- ing:
    Try to make it true,
    Say you love me too,
    Some -- day I'll find you a --
    \alternative {
      {gain.}
      {gain. __}
    }
  }

  Can't you re -- mem -- ber the fun we had?
  Time is so fleet,
  Why should -- n't we meet?
  When you're a -- way from me days are sad;
  Lifes not com -- plete,
  My sweet, my sweet.
  \repeat volta 2 {
    Some day I'll find you,
    Moon -- light be -- hind you,
    True to the dream I am dream -- ing,
    As I draw near you
    You'll smile a lit -- tle smile;
    For a lit -- tle while
    We shall stand
    Hand in hand.
    I'll leave you nev -- er,
    Love you for ev -- er,
    All our past sor -- row re -- deem -- ing:
    Try to make it true,
    Say you love me too,
    Some -- day I'll find you a --
    \alternative {
      {gain.}
      {gain. __}
    }
  }
}

wordsMidi = \lyricmode {
  "When " "one " "is " lone "ly " "the " "days " "are " "long; "
  "\nYou " "seem " "so " "near "
  "\nBut " nev "er " ap "pear. "
  "\nEach " "night " "I " "sing " "you " "a " lov "er's " "song; "
  "\nPlease " "try " "to " "hear, " "My " "dear, " "my " "dear. "
  \repeat volta 2 {
    "\nSome " "day " "I'll " "find " "you, "
    "\nMoon" "light " be "hind " "you, "
    "\nTrue " "to " "the " "dream " "I " "am " dream "ing, "
    "\nAs " "I " "draw " "near " "you "
    "\nYou'll " "smile " "a " lit "tle " "smile; "
    "\nFor " "a " lit "tle " "while "
    "\nWe " "shall " "stand "
    "\nHand " "in " "hand. "
    "\nI'll " "leave " "you " nev "er, "
    "\nLove " "you " "for " ev "er, "
    "\nAll " "our " "past " sor "row " re deem "ing: "
    "\nTry " "to " "make " "it " "true, "
    "\nSay " "you " "love " "me " "too, "
    "\nSome" "day " "I'll " "find " "you " a
    \alternative {
      { "gain.\n" }
      { "gain.\n"  }
    }
  }

  "\nCan't " "you " re mem "ber " "the " "fun " "we " "had? "
  "\nTime " "is " "so " "fleet, "
  "\nWhy " should "n't " "we " "meet? "
  "\nWhen " "you're " a "way " "from " "me " "days " "are " "sad; "
  "\nLifes " "not " com "plete, "
  "\nMy " "sweet, " "my " "sweet. "
  \repeat volta 2 {
    "\nSome " "day " "I'll " "find " "you, "
    "\nMoon" "light " be "hind " "you, "
    "\nTrue " "to " "the " "dream " "I " "am " dream "ing, "
    "\nAs " "I " "draw " "near " "you "
    "\nYou'll " "smile " "a " lit "tle " "smile; "
    "\nFor " "a " lit "tle " "while "
    "\nWe " "shall " "stand "
    "\nHand " "in " "hand. "
    "\nI'll " "leave " "you " nev "er, "
    "\nLove " "you " "for " ev "er, "
    "\nAll " "our " "past " sor "row " re deem "ing: "
    "\nTry " "to " "make " "it " "true, "
    "\nSay " "you " "love " "me " "too, "
    "\nSome" "day " "I'll " "find " "you " a
    \alternative {
      { "gain.\n" }
      { "gain. "  }
    }
  }
}

pianoRHone = \relative {
  \global
  \voiceOne
  \repeat segno 2 {
    bes'4 g bes | des ces des | bes2 f4 | bes2. \section |
    bes4 g bes | des ces des | bes2 g4 | bes2. | <c, ees aes c>4 <d d'> <c ees aes c> |
    bes'2. | c2 \tuplet 3/2 {f8 ees c} | bes2. | 4 g bes | des4 ces des |
    bes2 g4 | c2. | f,4 aes c | f2 4 | ces2 f4 | bes,2. \section |
    \repeat volta 2 {
      <g ees'>4 <ees bes'> <bes g'> | % 78a
      fis'4 d'2 |
      <g, ees'>4 <ees bes'> <bes g'> |
      fis'4 d'2 |
      c4 bes d | <ees, g c> <d g bes> <des f g> | ees2. | g2. | bes4(c d | % 78b
      f4 ees c) | aes4. c8 aes g | f2. | bes4. d8 bes a |
      g2. | c8(d f2) | f,8(aes c2) | ees4 bes g |
      fis4 d'2 | <g, ees'>4 <des f bes> <b ees g> | f' <c ees c'>2 | <e c'>4 <bes d g> <g bes e> | % 79a
      <e g c>4 <des' f bes> <c e c'> | <a a'>2.( | <aes aes'>) | g'8 aes bes4 4 | <c, c'>2. |
      <b' d>8 <c ees> <d f>4 q | g2. | <ees, aes ees'>4 <ees aes c> <c ees aes> | <aes c f> <ees' aes c> <aes, d> |
      \alternative {
        {ees'2. | <aes, c f>8 <bes d g> <c ees aes> <d f bes> <ees aes c> <f aes bes d> |}
        {<g, bes ees>8 <aes c f> g' bes <fis c'>4 |}
      }
    }
    <g ees'>4\fermata r r\fermata |
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo\repeat segno 2 {
    r4 <bes ees>2 | r4 <ees f>2 | r4 <c ees f>2 | r4 <bes d g> <aes d f> |
    r4 <bes ees>2 | r4 <ees f>2 | r4 <bes ees>2 | r4 <c ees g>(<bes ees g>) | s2. |
    r4 <d g>8(<d ges> <d f>4) | r4 <c ees aes>2 | r4 <d g>8~(<d ges> <d f>4) | r4 <bes ees>2 | r4 <ees f>2 |
    r4 <bes ees>2 | r4 <bes e aes>4~<bes e g> | r4 <c ees>2 | r4 <f aes c>2 | r4 <ees f>2 | g4(ges f) |
    \repeat volta 2 {
      s2. | <aes, d>4 <aes' c>8(<g bes> <ges a> <f aes>) | s2. | <aes, d>4 <aes' c>8(<g bes> <ges a> <f aes>) | % 78a
      <ees g>4 <d g>2 | s2. | bes4 g aes | <aes c> <a cis > <aes d> | ees' <ees g>2 |
      <ees bes'>4 q <ees a> | r4 <aes, c> <bes des> | r <aes c> q | r <bes d g> <c ees> |
      r4 <bes des> <bes c> | <ees aes> <a f'>2 | <aes, c ees> 4 <ees' aes> <d fis> | s2. |
      <aes d>4 <aes' c>8( <g bes> <ges a> <f aes>) | s2. | <c ees>4 bes'8 aes g f | s2. | % 79a
      s2. | r4 <ees g> <d f> | r <c ees> <bes d> | ees8 d <des g>4 4 | r4 <g bes>(<f aes>) |
      f4 g g | <g bes e> <bes des>~<bes c> | s2. | s |
      \alternative {
        {<g, c>4 c8(ces bes4) | s2. |}
        {s4 <bes d> <c d> | }
      }
    }
    ees4 s2 |
  }
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  \repeat segno 2 {
    s2.\mf\< | s2 s4\! | s2 s4\>-\markup\italic rit. | s2 s4\! |
    s2\omit\p-\markup{\dynamic p \italic "a tempo"} s4\< | s2. | s4 s2\! | s2.\> | s2 s4\! |
    s4 s2\> | s2.\< | s4. s\> | s4\! s2\< | s2 s4\! |
    s4 s2\> | s2 s4\! | s4 s2-\markup\bold\italic rall. | s2. | s | s |
    \repeat volta 2 {
      s2.\mf\< | s2 s4\> | s2.\< | s4\! s2\> | % 78a
      s2.\< | s2 s4\! | s2 s4\> | s2 s4\! | s2.\< |
      s4 s2\! | s4. s\> | s2.\! | s |
      s4 s2\> | s2.\!-\markup\bold\italic rit. | s2. | s2.\< -\markup\bold\italic "a tempo" |
      s4 s\! s\> | s2 s4\< | e e2\> | s2.\! | % 79a
      s2. | s | s | s\< | s\! |
      s2. | s | s\< | s\< |
      \alternative {
        {s2.\< | s4 s4.. s16\>}
        {s2\< s8. s16\! |}
      }
    }
    s2.\f |
  }
}

pianoLHone = \relative {
  \global
  \repeat segno 2 {
    ees,4 <bes' g'>2 | des,4 <aes' f'>2 | f4 <f' aes>2 | bes,,4 bes'2 \section |
    ees,4 <bes' g'>2 | \voiceOne des,4 <aes' f'>2 \oneVoice | ees4 <bes' g'> bes, | r4 q2 | f'4 <c' aes'>2 |
    bes,4 bes''8(a aes4) | f,4 f'2 | bes,,4 bes''8(a aes4) | ees,4 <bes' g'>2 | bes,4 <aes' f'>2 |
    ees4 <bes' g'>2 | c,4 c'2 | f,4 <f' aes>2 | aes,4 f'2 | f,4 <f' aes>2 | bes,4 a'(aes) \section |
    \repeat volta 2 {
      ees,4 <bes' g'>2 | bes,4 bes''2 | ees,,4 <bes' g'>2 | bes,4 bes''2 | % 78a
      ees,,4 bes' g' | ees, bes' ees | <aes, ees'>2. | bes | g4 bes'2 |
      g,4 g' ges, | \voiceOne r4 ees' e | r d ees \oneVoice | f2 fis4 |
      \voiceOne g4 f e \oneVoice | aes, <f' ees'>2 | \voiceOne r4 f aes \oneVoice | ees, <bes' g'>2 |
      bes,4 bes''2 | ees,, 4 g' des | r ees2 | c,4 e' c | % 79a
      bes4 g' c, | <d, c'>2. | bes | ees4 bes'8(ees f g) | <aes, aes'>2. |
      g4 d'8( g a b) | c4 f(e) | <f, c'>2. | <bes, ees>4 f' <fes, ces'> |
      \alternative {
        {ees <bes' g'>2 | bes4 f' bes |}
        {ees,,4 <bes' g'> <bes aes'> |}
      }
    }
    \arpeggioParenthesis <ees, bes' g'>4\arpeggio\fermata r r\fermata |
  }
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \voiceTwo
  \repeat segno 2 {
    s2.*4 |
    s2. | s | s | ees,2. | s |
    s2.*5 |
    s2.*6 |
    \repeat volta 2 {
      s2.*4 | % 78a
      s2.*5 |
      s2. | f2 r4 | f2. | g2. |
      g2. | s | bes | s |
      s2. | s | aes | s | % 79a
      s2.*5 |
      s2.*4
      \alternative {
        {s2. | s |}
        {s2. | }
      }
    }
    s2.
  }
  \bar "|."
}

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single melody staff
          \new Staff = melody
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
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
  \bookOutputSuffix "single"
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single melody staff
          \new Staff = melody
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
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
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single melody staff
          \new Staff = melody
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
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
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single melody staff
          \new Staff = melody
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \wordsMidi
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}
