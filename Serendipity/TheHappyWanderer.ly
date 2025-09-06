\version "2.25.28"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Happy Wanderer"
  subtitle    = "(Val-De Ri Val-De Ra"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Friedr. W. Möller"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Antonia Ridge"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 2/2
  \partial 2
}

TempoTrack = {
  \global
  \tempo Brightly 2=120
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "1a" s2 s1*7
  \textMark \markup\box "1b" s1
  \repeat volta 5 {
    s1*7
    \textMark \markup\box "1c" s1*8
    \textMark \markup\box "2a" s1*7
    \textMark \markup\box "2b" s1*7
    \textMark \markup\box "2c" s1
    \alternative {
      { s1*2 }
      { s1*2 }
    }
  }
}

ChordTrack = \chordmode {
  s2 | s1*7 | s2 bes |
  \repeat volta 5 {
    bes1 s4 f2.:7 s2 bes s1*3 f1:7 |
    s1*3 bes1 s ees2 c:m bes f:7 bes1 |
    s1 f:7 s bes s f:7 s |
    bes1 s f:7 s bes s ees2 c:m |
    bes2 f:7 |
    \alternative {
      {bes1 s |}
      {bes1 s |}
    }
  }
}

melody = \relative {
  \global
  r2 \section | R1*7 |
  r2 f' |
  \repeat volta 5 {
    f2 f | 2. ees4 | 2 d | 2. 4 | 2 2 | f2 d | ees1~ |
    ees2 f | f a | 2. 4 | bes2 f | 2. 4 | g2 ees | d c | bes1~ |
    bes4 r f'4. 8 | a1~ | 2 f4. 8 | bes1~ | 2 f4. 8 | c'1~ | 2 f,4. 8 | % 2a
    d'4 c bes a | bes a g f | a1~ | 2 f4. 8 | bes1~ | 2 f | g ees |
    d2 c |
    \alternative {
      {bes1~ | 4 r f'2 |}
      {bes,1~ | 4 r r2 | \bar "|."}
    }
  }
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

chorus = \lyricmode {
  Val -- de ri __ Val -- de ra __
  Val -- de -- re __
  Val -- de ha ha ha ha ha ha
  Val -- de ri, __
  Val -- de ra. __
}

chorusMidi = \lyricmode {
  "\nVal" "de " "ri "  Val "de " "ra " 
  "\nVal" de "re " 
  "\nVal" "de " "ha " "ha " "ha " "ha " "ha " "ha "
  "\nVal" "de " "ri, " 
  "\nVal" "de " "ra. " 
}

emptychorus = \lyricmode {
  "" \repeat unfold 22 \skip 1
}

wordsOne = \lyricmode {
  \set stanza = "1."
  I love to go a -- wan -- der -- ing,
  A -- long the moun -- tain track, __
  And as I go, I love to sing,
  My knap -- sack on my back. __
  \emptychorus
  My knap -- sack on my back. __
  \set stanza = "2." I
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  I love to wan -- der by the stream
  That danc -- es in the sun. __
  So joy -- ous -- ly it calls to me,
  “Come! Join my hap -- py song!” __
  \emptychorus
  “Come! Join my hap -- py song!” __
  \set stanza = "3." I
}

wordsThree = \lyricmode {
  \set stanza = "3."
  I wave my hat to all I meet,
  And they wave back to me. __
  And black -- birds call so loud and sweet
  From ev -- ’ry green -- wood tree. __
  \chorus
  From ev -- ’ry green -- wood tree. __
  \set stanza = "4." High
}

wordsFour = \lyricmode {
  \set stanza = "4."
  High o -- ver -- head, the sky -- larks wing.
  They nev -- er rest at home. __
  But just like me, they love to sing,
  As o’er the world we roam. __
  \emptychorus
  As o’er the world we roam. __
  \set stanza = "5. " Oh,
}

wordsFive = \lyricmode {
  \set stanza = "5."
  Oh, may I go a -- wan -- der -- ing
  Un -- til the day I die! __
  Oh, may I al -- ways laugh and sing,
  Be -- neath God’s clear blue sky! __
  \emptychorus
  Be -- neath God’s clear blue _ _ sky! __
}

wordsSingle = \lyricmode {
  \set stanza = "1."
  I love to go a -- wan -- der -- ing,
  A -- long the moun -- tain track, __
  And as I go, I love to sing,
  My knap -- sack on my back. __
  \chorus
  My knap -- sack on my back. __

  \set stanza = "2."
  I love to wan -- der by the stream
  That danc -- es in the sun. __
  So joy -- ous -- ly it calls to me,
  “Come! Join my hap -- py song!” __
  \chorus
  “Come! Join my hap -- py song!” __

  \set stanza = "3."
  I wave my hat to all I meet,
  And they wave back to me. __
  And black -- birds call so loud and sweet
  From ev -- ’ry green -- wood tree. __
  \chorus
  From ev -- ’ry green -- wood tree. __

  \set stanza = "4."
  High o -- ver -- head, the sky -- larks wing.
  They nev -- er rest at home. __
  But just like me, they love to sing,
  As o’er the world we roam. __
  \chorus
  As o’er the world we roam. __

  \set stanza = "5."
  Oh, may I go a -- wan -- der -- ing
  Un -- til the day I die! __
  Oh, may I al -- ways laugh and sing,
  Be -- neath God’s clear blue sky! __
  \chorus
  Be -- neath God’s clear blue sky! __
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "I " "love " "to " "go " a wan der "ing, "
  "\nA" "long " "the " moun "tain " "track, " 
  "\nAnd " "as " "I " "go, " "I " "love " "to " "sing, "
  "\nMy " knap "sack " "on " "my " "back. " 
  \chorusMidi
  "\nMy " knap "sack " "on " "my " "back.\n" 

  \set stanza = "2."
  "\nI " "love " "to " wan "der " "by " "the " "stream "
  "\nThat " danc "es " "in " "the " "sun. " 
  "\nSo " joy ous "ly " "it " "calls " "to " "me, "
  "\n“Come! " "Join " "my " hap "py " "song!” " 
  \chorusMidi
  "\n“Come! " "Join " "my " hap "py " "song!”\n" 

  \set stanza = "3."
  "\nI " "wave " "my " "hat " "to " "all " "I " "meet, "
  "\nAnd " "they " "wave " "back " "to " "me. " 
  "\nAnd " black "birds " "call " "so " "loud " "and " "sweet "
  "\nFrom " ev "’ry " green "wood " "tree. " 
  \chorusMidi
  "\nFrom " ev "’ry " green "wood " "tree.\n" 

  \set stanza = "4."
  "\nHigh " o ver "head, " "the " sky "larks " "wing. "
  "\nThey " nev "er " "rest " "at " "home. " 
  "\nBut " "just " "like " "me, " "they " "love " "to " "sing, "
  "\nAs " "o’er " "the " "world " "we " "roam. " 
  \chorusMidi
  "\nAs " "o’er " "the " "world " "we " "roam.\n" 

  \set stanza = "5."
  "\nOh, " "may " "I " "go " a wan der "ing "
  "\nUn" "til " "the " "day " "I " "die! " 
  "\nOh, " "may " "I " al "ways " "laugh " "and " "sing, "
  "\nBe" "neath " "God’s " "clear " "blue " "sky! " 
  \chorusMidi
  "\nBe" "neath " "God’s " "clear " "blue " "sky! " 
}

midiWords = \lyricmode {
}

pianoRHone = \relative {
  \global
  f'4. 8 \section |
  <c ees f a>2 f8(g a bes | c2) <a, c ees f>4. 8 |
  <d f bes>2 f8(g bes c | d2) <bes, d f>4. 8 |
  <bes ees g>2 <g c ees> | <f bes d> <ees a c> | bes'1~ |
  bes2 \vo f' |
  \repeat volta 5 {
    f2 f | 2. 4 | ees2 d | 2. 4 | 2 2 | f d | \vo <c ees>4 <gis b>(<a c>4. <g' bes>8 |
    \vo <f a>2) f | f a | 2. 4 | bes2 f | 2. 4 | g2 ees | d c | bes1~ | % 1c
    bes4 r <bes d f>4. 8 | \vo a'1~ | 2 f4. 8 | bes1~ | 2 f4. 8 | c'1~ | 2 f,4. 8 | % 2a
    <bes d>4 <a c> <g bes> <f a> | bes a g f | a1~ | 2 f4. 8 | bes1~ | 2 f | g ees |
    d2 c |
    \alternative {
      {\ov bes1~ | 4 r4 \vo f'2 |}
      {\ov <d, f bes>1~ | 4 r <d' f bes d f bes>8-> r r4 | }
    }
  }
}

pianoRHtwo = \relative {
  \global \vt
  s2 \section |
  s1*6 | \lh r4 <d f> r q |
  r4 q \rh r <bes' d> |
  \repeat volta 5 {
    r4 q r q | r q r <c ees> | r f, r <f bes> | r q r bes |
    r4 q r q | r <bes d> r <f bes> | s1 |
    r4 <c' ees> r q | r q r <c ees f> | r q r q | r <d f> r <bes d> | % 1c
    r4 q r q | r <bes ees> r <g c> | r <f bes> r <ees a> | \lh r4 <d f> r q |
    \rh s1 | r4 <c' ees f> r q | r q r <c ees> | r <d f> r q | % 2a
    r4 q r <bes d> | r4 <ees f a> r q | r q r <c ees> |
    d1 | <bes d> | r4 <c ees f> r q | r q r <c ees> | % 2b
    r4 <d f> r q | r q r <bes d> | r <bes ees> r <g c> |
    r4 <f bes> r <ees a> |
    \alternative {
      {\lh r4 <d f> r q | r q \rh r <bes' d> |}
      {s1*2}
    }
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2\f | s1*4 | s1\> | s\! | s\mp |
  s1 |
  \repeat volta 5 {
    s1*7 |
    s1*8 |
    s2 s\f | s1*6 |
    s1 | s\> | s\mf | s2. s4\< | s1\! | s | s\> |
    s1\! |
    \alternative {
      {s1*2}
      {s1*2}
    }
  }
}

pianoLHone = \relative {
  \global
  f4. 8 \section |
  <f, f'>2 f'8(g a bes | c2) f,4. 8 | <bes, f'>2 f'8(g bes c | d2) r |
  ees,,2 2 | f f | \vt <bes, bes'>4 r f' r |
  <bes, bes'>4 r \ov f' r |
  \repeat volta 5 {
    \ov \repeat unfold 6 {<bes, bes'>4 r f' r |} <c c'> r q r |
    f4 r f r | q r f r | q r f r | <bes, bes'> r q r | % 1c
    d4 r d r | ees r ees r | f r f r | \vt <bes, bes'> r f' r |
    \ov bes,4 r <bes bes'> q | <c c'> r f r | q r f r | <bes, bes'> r f' r | % 2a
    q4 r f r | a r f r | a r c r |
    <bes, bes'>4 r f' r | f r f r | <c c'> r f r | q r f r | % 2b
    <bes, bes'>4 r f' r | q r f r | ees r ees r |
    f4 r f r |
    \alternative {
      {\vt <bes, bes'>4 r f' r | q r f r |}
      {\ov q2 f2-> | bes,4-> r r2 |}
    }
  }
}

pianoLHtwo = \relative {
  \global \vt
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
          }
          <<
            \new Voice \RehearsalTrack
            \new Dynamics \TempoTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \melody
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
            \addlyrics \wordsThree
            \addlyrics \wordsFour
            \addlyrics \wordsFive
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
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
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}


#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = leadsheet
  }
  \score {
    <<
%     <<
%        \new ChordNames { \ChordTrack }
%      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
          }
          <<
%            \new Voice \RehearsalTrack
            \new Dynamics \TempoTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \melody
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
            \addlyrics \wordsThree
            \addlyrics \wordsFour
            \addlyrics \wordsFive
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 19)

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
    <<
%      <<
%        \new ChordNames \ChordTrack
%        \new FretBoards \ChordTrack
%      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
          }
          <<
            \new Dynamics \TempoTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
%            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
          }
          <<
            \magnifyStaff #4/7
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
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 19)

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
    <<
%      <<
%        \new ChordNames \ChordTrack
%        \new FretBoards \ChordTrack
%      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
          }
          <<
            \new Dynamics \TempoTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
%            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
          }
          <<
            \magnifyStaff #4/7
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
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi
  }
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames = guitar \with {
          midiInstrument = "Acoustic Guitar (Nylon)"
        }
        \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \TempoTrack
            \new Dynamics \dynamicsMelody
            \new Voice \melody
            \addlyrics \wordsMidi
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
