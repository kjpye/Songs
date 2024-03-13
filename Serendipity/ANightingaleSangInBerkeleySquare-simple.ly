\version "2.25.13"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "A Nightingale Sang in Berkeley Square"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Eric Maschwitz & Manning Sherwin"
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

global = {
  \key ees \major
  \time 2/2
}

TempoTrack = {
  \tempo Slowly 4=100
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "32a" } s1*4
  \repeat volta 2 {
    \textMark \markup { \box "32b" } s1*3
    \textMark \markup { \box "32c" } s1*3
    \textMark \markup { \box "33a" } s1*3
    \textMark \markup { \box "33b" } s1*3
    \textMark \markup { \box "33c" } s1*3
    \textMark \markup { \box "33d" } s1*3
    \textMark \markup { \box "34a" } s1*3
    \textMark \markup { \box "34b" } s1*3
    \textMark \markup { \box "34c" } s1*2
    \textMark \markup { \box "34d" } s1*3
    \textMark \markup { \box "35a" } s1*3
    \textMark \markup { \box "35b" } s1*4
    \alternative {
      {
        \textMark \markup { \box "35c" } s1*2
      }
      {
        s1*2
        \textMark \markup { \box "35d" } s1*3
      }
    }
  }
}

ChordTrack = \chordmode {
  s1*4
  \repeat volta 2 {
%    \tag #'guitar { ees2^\markup{\bold Guitar "(Capo up 3 frets)"}  c:m7 | g:m ees:7 | aes:maj7 g:7 | }
%    \tag #'piano { ees2_\markup \bold Piano c:m7 | g:m ees:7 | aes:maj7 g:7 | }
    ees2  c:m7 | g:m ees:7 | aes:maj7 g:7 |
    c2:m aes:m6 | ees:maj7 d:m7.5- | ees:7 f:m7.5- |
    ees2/bes c:m | f:m7 bes:7 | ees c:m | % 33a
    f2:m7 bes:7 | ees c:m7 | g:m ees:7 |
    aes2:maj7 g:7 | c:m aes:m6 | ees:maj7 d:m7.5- |
    ees2:7 des:9 | ees/bes c:m | f:m7 bes:7 |
    ees1 | a2:m7.5- d:7.5- | g:maj7 a4:m7 b:m7 | % 34a
    c2:maj7 d:7.9- | b:m7 bes:dim7 | a:m7 d:7.5- |
    g2:maj7 a4:m7 b:m7 | c2:maj7 d:7.9- |
    b2:m7 e:dim7 | f:m7 e:7.5- | ees c:m7 |
    g2:m7 ees:7 | aes g:7 | c:m aes:m6 |
    ees2:maj7 d:m7.5- | ees:7 des:9 | ees/bes c:m | f:m7 bes:7 |
    \alternative {
      { ees2 c:m | f:m7 bes:7 | }
      { ees2 r | s1 | }
    }
  }
  s1*3 | ees2.:9 s4 |
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
}

melodyA = \relative {
  g'4 g ees4. 8 | bes'4 4 g ees8 8 | \tuplet 3/2 {c'4 4 4} \tuplet 3/2 {d d d} |
  ees2.\arpeggio 8 8 | d4bes c4. aes8 | bes4 ees, bes'\arpeggio aes8 8 |
  g8 aes bes4 ees,4 4 | 2 f | ees1 | % 33a
  r2 r4 r8 bes | g'4 4 ees4. 8 | bes'4 4 g ees8 8 |
  \tuplet 3/2 {c'4 4 4} \tuplet 3/2 {d d d} | ees2. 4 | d bes c4. aes8 |
  \tag #'dash {bes4 ees, bes'4. \slurDashed aes16(16) \slurSolid |}
  \tag #'v1   {bes4 ees, bes'4.             aes8                 |}
  \tag #'v2   {bes4 ees, bes'4.             aes16 16             |}
  g8 aes bes4 ees,4 4 | 2 f |
  ees1 | R1 | r8. d16 e8. fis16 g8. a16 b8. c16 | % 34a
  d4\arpeggio d b4. 8 | a4 4 fis4. 8 | e4 4 d2 |
  r8. d16 e8. fis16 g8. a16 b8. c16 | d4 4 b4. 8 |
  a4 4 g4. 8 | c4 4 bes4. bes,8 | g'4 4 ees4. 8 |
  bes'4 4 g ees8 8 | \tuplet 3/2 {c'4 4 4} \tuplet 3/2 {d d d} | ees2.\arpeggio 4 | % 35a
  d4 bes c4. aes8 | bes4 ees, bes'4. aes8 | g aes bes4 ees, ees | 2 f |
}

melodyB = \relative {
  ees'2 r | r2 r4 r8 bes8 |
}

melodyC = \relative {
  ees'1~ | \voiceTwo 2 r |
}

melody = \relative {
  \global \voiceOne
  s1*3 | s2.. \caesura bes8
  \repeat volta 2 {
    \melodyA
    \alternative {
      { \melodyB }
      { \melodyC }
    }
  }
  s1*4 |
}

melodySingle = \relative {
  \global
  s1*3 | s2.. \caesura bes8
  \keepWithTag #'v1 \melodyA
  \melodyB
  \keepWithTag #'v2 \melodyA
  \melodyC
  s1*4 |
}

melodyTwo = \relative {
  s1*4 |
  \repeat volta 2 {
    s1*36 |
    \alternative {
      { s1*2 }
      { s1 \voiceOne r8 c''8 bes aes g4 f }
    }
  }
  g1 | r8 aes g f ees4 d | ees1 | s |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

wordsOne = \lyricmode {
  That cer -- tain night,
  The night we met,
  There was mag -- ic a -- broad in the air.
  There were an -- gels din -- ing at the Ritz,
  And a night -- in -- gale sang in Ber -- k'ley Square.
  I may be right; I may be wrong,
  But I'm per -- fect -- ly will -- ing to swear
  That when you turn'd and smiled at me,
  A night -- in -- gale sang in Ber -- k'ley Square.
  The moon that lin -- gered o -- ver Lon -- don Town,
  Poor puz -- zled moon, he wore a frown;
  How could I know we two were so in love?
  The whole darn world seemed up -- side -- down.
  The streets of town were paved with stars;
  It was such a ro -- man -- tic af -- fair,
  And as we kiss'd and said good night,
  A night -- in -- gale sang in Ber -- k'ley Square.

  How
}

wordsTwo = \lyricmode {
  _ strange it was,
  How sweet and strange,
  There was nev -- er a dream to com -- pare
  With that haz -- y, cra -- zy night we met
  When a night -- in -- gale sang in Ber -- k'ley Square.
  This heart of mine beat loud and fast
  Like a mer -- ry- go- round in a fair,
  For we were danc -- ing cheek to cheek,
  \nom And a \yesm night -- in -- gale sang in Ber -- k'ley Square.
  When dawn came steal -- ing up all gold and blue
  To in -- ter -- rupt our ren -- dez -- vous,
  I still re -- mem -- ber how you smiled and said,
  “Was that a dream or was it true?”
  Our home -- ward step was just as light
  As the tap -- dan -- cing feet of As -- taire,
  And like an ech -- o far a -- way,
  A night -- in -- gale sang in Ber -- k'ley _ _ \set associatedVoice = melodytwo Square. __
  \small
  I know 'cause I was there
  That night in Ber -- k'ley Square.
}

wordsSingle = \lyricmode {
  That cer -- tain night,
  The night we met,
  There was mag -- ic a -- broad in the air.
  There were an -- gels din -- ing at the Ritz,
  And a night -- in -- gale sang in Ber -- k'ley Square.
  I may be right; I may be wrong,
  But I'm per -- fect -- ly will -- ing to swear
  That when you turn'd and smiled at me,
  A night -- in -- gale sang in Ber -- k'ley Square.
  The moon that lin -- gered o -- ver Lon -- don Town,
  Poor puz -- zled moon, he wore a frown;
  How could I know we two were so in love?
  The whole darn world seemed up -- side -- down.
  The streets of town were paved with stars;
  It was such a ro -- man -- tic af -- fair,
  And as we kiss'd and said good night,
  A night -- in -- gale sang in Ber -- k'ley Square.

  How strange it was,
  How sweet and strange,
  There was nev -- er a dream to com -- pare
  With that haz -- y, cra -- zy night we met
  When a night -- in -- gale sang in Ber -- k'ley Square.
  This heart of mine beat loud and fast
  Like a mer -- ry- go- round in a fair,
  For we were danc -- ing cheek to cheek,
  And a night -- in -- gale sang in Ber -- k'ley Square.
  When dawn came steal -- ing up all gold and blue
  To in -- ter -- rupt our ren -- dez -- vous,
  I still re -- mem -- ber how you smiled and said,
  “Was that a dream or was it true?”
  Our home -- ward step was just as light
  As the tap -- dan -- cing feet of As -- taire,
  And like an ech -- o far a -- way,
  A night -- in -- gale sang in Ber -- k'ley \set associatedVoice = melodytwo Square. __
  I know 'cause I was there
  That night in Ber -- k'ley Square.
}

wordsMidi = \lyricmode {
  "That " cer "tain " "night, "
  "\nThe " "night " "we " "met, "
  "\nThere " "was " mag "ic " a "broad " "in " "the " "air. "
  "\nThere " "were " an "gels " din "ing " "at " "the " "Ritz, "
  "\nAnd " "a " night in "gale " "sang " "in " Ber "k'ley " "Square. "
  "\nI " "may " "be " "right; " "I " "may " "be " "wrong, "
  "\nBut " "I'm " per fect "ly " will "ing " "to " "swear "
  "\nThat " "when " "you " "turn'd " "and " "smiled " "at " "me, "
  "\nA " night in "gale " "sang " "in " Ber "k'ley " "Square. "
  "\nThe " "moon " "that " lin "gered " o "ver " Lon "don " "Town, "
  "\nPoor " puz "zled " "moon, " "he " "wore " "a " "frown; "
  "\nHow " "could " "I " "know " "we " "two " "were " "so " "in " "love? "
  "\nThe " "whole " "darn " "world " "seemed " up side "down. "
  "\nThe " "streets " "of " "town " "were " "paved " "with " "stars; "
  "\nIt " "was " "such " "a " ro man "tic " af "fair, "
  "\nAnd " "as " "we " "kiss'd " "and " "said " "good " "night, "
  "\nA " night in "gale " "sang " "in " Ber "k'ley " "Square. "

  "\nHow " "strange " "it " "was, "
  "\nHow " "sweet " "and " "strange, "
  "\nThere " "was " nev "er " "a " "dream " "to " com "pare "
  "\nWith " "that " haz "y, " cra "zy " "night " "we " "met "
  "\nWhen " "a " night in "gale " "sang " "in " Ber "k'ley " "Square. "
  "\nThis " "heart " "of " "mine " "beat " "loud " "and " "fast "
  "\nLike " "a " mer ry go "round " "in " "a " "fair, "
  "\nFor " "we " "were " danc "ing " "cheek " "to " "cheek, "
  "\nAnd " "a " night in "gale " "sang " "in " Ber "k'ley " "Square. "
  "\nWhen " "dawn " "came " steal "ing " "up " "all " "gold " "and " "blue "
  "\nTo " in ter "rupt " "our " ren dez "vous, "
  "\nI " "still " re mem "ber " "how " "you " "smiled " "and " "said, "
  "\n“Was " "that " "a " "dream " "or " "was " "it " "true?” "
  "\nOur " home "ward " "step " "was " "just " "as " "light "
  "\nAs " "the " tap dan "cing " "feet " "of " As "taire, "
  "\nAnd " "like " "an " ech "o " "far " a "way, "
  "\nA " night in "gale " "sang " "in " Ber "k'ley " \set associatedVoice = melodytwo "Square. " 
  "\nI " "know " "'cause " "I " "was " "there "
  "\nThat " "night " "in " Ber "k'ley " "Square. "
}

pianoRH = \relative {
  \global
  \set Staff.connectArpeggios = ##t
  <g' d' g>2 <ees bes' ees> |
  <f c' f>2 <bes, f' bes>\fermata |
  q2 <f' bes f'> |
  <g c g'>2\arpeggio <ees bes' ees>4.\arpeggio \caesura s8 |
  \repeat volta 2 {
    \voiceTwo bes1 | d2 des | g f |
    <ees g>2\arpeggio <f aes> | <ees g> <d f> | des <ces ees>\arpeggio |
    ees2 4 d | c c d bes~ | bes bes b c | % 33a
    <aes c>(ees') <aes, cis>(d) | s1 | d2. s4 |
    <c g'>2 <d aes'> | <g c> r8 f aes ces | <ees, g>2 <d f> |
    des2*1/2 \once\hide Stem ees4(<ces ees>2) | ees2 4 d | c2 <c d>4(<ces d>) |
    <bes c>1 | r8. c16 ees8. g16 <c, fis>2 | b2 c4 d | % 34a
    <e g>2\arpeggio <ees fis> | d cis | c c |
    b2 c4 d | <e g>2 <ees fis> |
    d2 des | <ees aes> <d aes'> 2*3/4 \once \hide Stem bes8~ | 2. r4 |
    d2. s4 | \tuplet 3/2 {c' bes aes} \tuplet 3/2 {aes g f} | g4\arpeggio ees~8 f(bes aes)  % 35a
    <ees g>2 <d f>  des2 <ces ees>\arpeggio | ees2 4 d | <aes c>2 <c d>4(<ces d>) |
    \alternative {
      { <g b c>2 b8 c ees g | <ees aes c>4 q <d g>4. bes8 | }
      { s1*2 | }
    }
  }
  r4 f' e2 | ees2 r | s1 | <bes' f' bes>2.\arpeggio\fermata r4 |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\omit\mp-\markup{\dynamic mp \italic "—as though from far away"}
}

pianoLHone = \relative {
  \global \voiceOne
  R1 | R\fermata | g2 ges | <f aes ees'>2\arpeggio <e gis>4.\fermata \caesura r8
  \repeat volta 2 {
    ees2 c | g' ees | <aes c> <g b> |
    c,4(g') ces2 | bes4 g aes f | g ees f2 |
    <bes, g'>2 <c g'> | <f aes> <bes, aes'> | g'-> ees-> | % 33a
    f2-> bes,-> | ees,8(bes' g'4) c,8(g' bes4) | g,8(d' bes'4) ees,8 g(des'4) |
    aes,2 <g' b> | c,,8(g' ees' g ces2) | bes4 g aes f |
    g4 ees des8(f aes4) | <bes, g'>2(<c g'>) | f,8(c' aes'4) bes,8(f' aes4) |
    ees,4 bes' ees8.^\markup\italic "lightening up" d16 c8. bes16 | a2 d4(aes) | <g fis'>2 <a g'>4 <b a'> | % 34a
    <c b'>2 d | <b a'> <bes g'> | <a g'> <aes fis'>4(d,) |
    <g fis'>2 <a g'>4 <b a'> | <c b'>2 <d c'> |
    <b a'>2 <e bes'> | f, e | ees8(bes' g'4) c,8(g' bes4) |
    g,8(d' bes'4) ees,8 g(des'4) | aes,2 <g' b> | c,8(g' d' c) ces2 | % 35a
    bes4 g aes f | g ees <des, aes' f'>2\arpeggio | <bes' g'> <c g'> | f,8(c' aes'4~<bes, aes'>2) |
    \alternative {
      { ees,8(bes' g'4) c,,8(g' ees'4) | f,8(c' aes'4~<bes, aes'>2) |  }
      { <ees g>4 <f aes> <g bes> <f b> | <ees c'>2^\markup\italic "like an afterthought"  <d ces'> | }
    }
  }
  <des bes'>2(<c bes'>) | <ces aes'>(<bes aes'>) | g'4-- ees-- f-- bes,-- | <ees, bes' g'>2.\arpeggio r4 |
  \bar "|."
}

pianoLHtwo = \relative {
  \global \voiceTwo 
  \tiny {
    R1 | R_\fermata | g,2 ges | f e4.\fermata \caesura r8 |
    \repeat volta 2 {
      ees2 c | g' ees | aes g |
      c2 ces | bes aes | g f |
      bes2 c | f, bes | ees, c | % 33a
      f2 bes | ees, c | g' ees |
      aes g | c ces | bes aes |
      g2 f | bes c | f, bes |
      ees,1 | aes2 d, | g aes4 b | % 34a
      c2 d, | b' bes | a aes |
      g2 a4 b | c2 d, |
      b'2 bes | f e | ees c |
      g'2 ees | aes g | c ces | % 35a
      bes2 aes | g des | bes' c | f, bes |
      \alternative {
        { ees,2 c | f bes | }
        { ees,2. r4 | f2 bes | }
      }
    }
  }
  g2 c | f, bes | R1 | ees,2.\fermata r4 |
  \bar "|."
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    <<
      <<
%        \new ChordNames { \transpose ees c \keepWithTag #'guitar \ChordTrack }
%        \new FretBoards { \transpose ees c \keepWithTag #'none  \ChordTrack }
        \new ChordNames {                  \keepWithTag #'piano \ChordTrack }
      >>
      <<
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
            \consists Span_arpeggio_engraver
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = melody \keepWithTag #'dash \melody
            \new Voice = melodytwo \melodyTwo
          \new Lyrics \lyricsto melody \wordsOne
          \new Lyrics \lyricsto melody \wordsTwo
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
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
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
%        \new ChordNames { \transpose ees c \keepWithTag #'guitar \ChordTrack }
%        \new FretBoards { \transpose ees c \keepWithTag #'none  \ChordTrack }
        \new ChordNames {                  \keepWithTag #'piano \ChordTrack }
      >>
      <<
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
            \consists Span_arpeggio_engraver
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = melody {\voiceOne \melodySingle}
            \new Voice = melodytwo \melodyTwo
            \new Voice \pianoRH
          >>
          \new Lyrics \lyricsto melody \wordsSingle
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
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
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage
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
%        \new ChordNames { \transpose ees c \keepWithTag #'guitar \ChordTrack }
%        \new FretBoards { \transpose ees c \keepWithTag #'none  \ChordTrack }
        \new ChordNames {                  \keepWithTag #'piano \ChordTrack }
      >>
      <<
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
            \consists Span_arpeggio_engraver
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = melody {\voiceOne \melodySingle}
            \new Voice = melodytwo \melodyTwo
            \new Voice \pianoRH
          >>
          \new Lyrics \lyricsto melody \wordsSingle
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
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
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = midi
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
%        \new ChordNames { \transpose ees c \keepWithTag #'guitar \ChordTrack }
%        \new FretBoards { \transpose ees c \keepWithTag #'none  \ChordTrack }
%        \new ChordNames {                  \keepWithTag #'piano \ChordTrack }
%      >>
%      <<
      \new Staff = melody \with {
        midiInstrumentName = "choir aahs"
      }
      <<
        \new Voice \melodySingle
        \addlyrics \wordsMidi
        \new Dynamics \dynamicsPiano
      >>
      \new PianoStaff = piano <<
        \new Staff = pianorh \with {
          midiInstrument = "acoustic grand piano"
          \accidentalStyle Score.modern
          \consists Span_arpeggio_engraver
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice = melody \melodySingle
          \new Voice = melodytwo \melodyTwo
          \new Voice \pianoRH
          \new Dynamics \dynamicsPiano
          \new Voice \pianoLHone
          \new Voice \pianoLHtwo
        >>
      >>
    >>
   \midi {
     \context {
       \Staff
       \consists "Dynamic_performer"
     }
     \context {
       \Voice
       \remove "Dynamic_performer"
     }
   }
 }
}
