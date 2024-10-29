\version "2.25.21"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "It’s Now or Never"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Aaron Schroeder & Wally Gold"
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
  \time 4/4
  \partial 2.
}

TempoTrack = {
  \global
  \tempo Moderately 4=120
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "28a" s2. s1*3 s4
  \repeat volta 3 {
    \textMark \markup\box "28b" s2. s1*4
    \textMark \markup\box "28c" s1*5
    \textMark \markup\box "28d" s1*4
    \alternative {
      {
        s1
        \textMark \markup\box "29a" s1*2
        \textMark \markup\box "29b" s1*5
        \textMark \markup\box "29c" s1*5
        \textMark \markup\box "29d" s1*5 s4
      }
      {
        s1*3
      }
    }
  }
}

ChordTrack = \chordmode {
  s2. s1*3 s4
  \repeat volta 3 {
    r2. | ees1 | s2. fis4:dim | f2.:m f4:m7 | bes1:7 |
    f2.:m f4:m7 | bes1:7 | ees | s | aes:m |
    s1 | ees | s2. fis4:dim | bes1:7 |
    \alternative {
      {
        s1 |
        ees1 | s | % 29a
        ees1 | s2. ees4:aug | aes1 | s | bes:7 |
        s1 | ees2:m ees2 | s4 r2. | ees1 | s2. ees4:aug |
        aes1 | s2 aes:m | ees2. fis4:dim | f2:m7 bes:7 | ees2 aes:m | ees4
      }
      { bes1:7 | ees1 | s | }
    }
  }
}

melody = \relative {
  \global
  r2. | R1*3 | r4 \section \break
  \repeat volta 3 {
    ees''4 4 d | bes8 4.~2~ | 4 d d c | aes1 | r4 d d c |
    aes8 4.~2~ | 4 f g4. aes8 | bes1~ | 2 r4 bes | ces4 2.~ |
    ces4 aes ees'4. ces8 | bes1~ | 4 g f ees | bes'8 4.~2~ |
    \alternative {
      { bes4 g f4. ees8 |
        ees1~ | 4 bes' aes g | % 29a
        f4 ees2.~ | 4 8 f g4 ees | d4 c2. | r4 d ees f | d c2.~ |
        c4 d ees f | c bes2. | r4 bes' aes g | f ees2.~ | 4 8 f g4 ees |
        d4 c2. | r4 aes' g f | bes4. g8 f4 ees | f2. g4 | ees1~ | 4
      }
      {bes'4\repeatTie 4 g'4.^\markup "(opt. octave lower…)" g8 | ees1~ | 4 r r2 | }
    }
  }
  \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

wordsOne = \lyricmode {
  It’s now or nev -- er; __ come hold me tight.
  Kiss me, my dar -- lin’; __ be mine to -- night. __
  To -- mor -- row __ will be too late. __
  It’s now or nev -- er; __ my love won’t wait. __
  \set stanza = "1."
  When I first saw you, __ with your smile so ten -- der,
  My heart was cap -- tured; __ my soul sur -- ren -- dered.
  I’ve spent a life -- time __ wait -- ing for the right time,
  Now that you’re near the time is here at last. __
  "" my love won’t wait. __
}

wordsTwo = \lyricmode {
  \repeat unfold 34 \skip 1
  \set stanza = "2."
  Just like a wil -- low __ we would cry an o -- cean,
  If we lost true love __ and sweet de -- vo -- tion.
  Your lips ex -- cite me; __ let your arms in --vite me,
  For who know when we’ll meet a -- gain this way. __
}

wordsSingle = \lyricmode {
  It’s now or nev -- er; __ come hold me tight.
  Kiss me, my dar -- lin’; __ be mine to -- night. __
  To -- mor -- row __ will be too late. __
  It’s now or nev -- er; __ my love won’t wait. __
  \set stanza = "1."
  When I first saw you, __ with your smile so ten -- der,
  My heart was cap -- tured; __ my soul sur -- ren -- dered.
  I’ve spent a life -- time __ wait -- ing for the right time,
  Now that you’re near the time is here at last. __

  It’s now or nev -- er; __ come hold me tight.
  Kiss me, my dar -- lin’; __ be mine to -- night. __
  To -- mor -- row __ will be too late. __
  It’s now or nev -- er; __ my love won’t wait. __

  \set stanza = "2."
  Just like a wil -- low __ we would cry an o -- cean,
  If we lost true love __ and sweet de -- vo -- tion.
  Your lips ex -- cite me; __ let your arms in --vite me,
  For who know when we’ll meet a -- gain this way. __

  It’s now or nev -- er; __ come hold me tight.
  Kiss me, my dar -- lin’; __ be mine to -- night. __
  To -- mor -- row __ will be too late. __
  It’s now or nev -- er; __ my love won’t wait. __
}

midiWords = \lyricmode {
  "It’s " "now " "or " nev "er; "  "come " "hold " "me " "tight. "
  "\nKiss " "me, " "my " dar "lin’; "  "be " "mine " to "night. " 
  "\nTo" mor "row "  "will " "be " "too " "late. " 
  "\nIt’s " "now " "or " nev "er; "  "my " "love " "won’t " "wait. " 
  \set stanza = "1."
  "\nWhen " "I " "first " "saw " "you, "  "with " "your " "smile " "so " ten "der, "
  "\nMy " "heart " "was " cap "tured; "  "my " "soul " sur ren "dered. "
  "\nI’ve " "spent " "a " life "time "  wait "ing " "for " "the " "right " "time, "
  "\nNow " "that " "you’re " "near " "the " "time " "is " "here " "at " "last. " 

  "\nIt’s " "now " "or " nev "er; "  "come " "hold " "me " "tight. "
  "\nKiss " "me, " "my " dar "lin’; "  "be " "mine " to "night. " 
  "\nTo" mor "row "  "will " "be " "too " "late. " 
  "\nIt’s " "now " "or " nev "er; "  "my " "love " "won’t " "wait. " 

  \set stanza = "2."
  "\nJust " "like " "a " wil "low "  "we " "would " "cry " "an " o "cean, "
  "\nIf " "we " "lost " "true " "love "  "and " "sweet " de vo "tion. "
  "\nYour " "lips " ex "cite " "me; "  "let " "your " "arms " in"vite " "me, "
  "\nFor " "who " "know " "when " "we’ll " "meet " a "gain " "this " "way. " 

  "\nIt’s " "now " "or " nev "er; "  "come " "hold " "me " "tight. "
  "\nKiss " "me, " "my " dar "lin’; "  "be " "mine " to "night. " 
  "\nTo" mor "row "  "will " "be " "too " "late. " 
  "\nIt’s " "now " "or " nev "er; "  "my " "love " "won’t " "wait. " 
}

pianoRHone = \relative {
  \global
  \vo aes'4 g f | <g bes>4. <ees g>8 f4 ees | f2. g4 | ees1~ | 4 \section \break
  \repeat volta 3 {
    ees'4 4 d | bes8 4.~2~ | 4 <bes d> q <a c> | aes1~ | 4 d d c |
    aes8 4.~2~ | 4 f g4. aes8 | bes1~ | 2. bes4 | ces4 2.~ |
    ces4 aes <ces ees>4. ces8 | bes1~ | 4 g f ees | bes'8 4.~2~ |
    \alternative {
      {
        bes4 g <d f>4. ees8 |
        ees1~ | 4 <g bes> <f aes> <ees g> \ov | % 29a
        <bes f'>4 <g ees'>2 <bes' g'>8(q | <g ees'>4) <g, ees'>8 <bes f'> <ees g>4 <b ees> | <bes d>4 <aes c>2 <ees'' c'>8(8 | <c aes'>4) <bes, d> <c ees> <aes c f> | <bes d> <aes c>2.~ |
        q4 <bes d> <c ees> <aes f'> | <fis c'> <g bes>2 <g' ees'>8(8 | <bes g'>4) <g bes> <f aes> <ees g> | <bes f'> <g ees'>2 <bes' g'>8(8 | <g ees'>4) <g, ees'>8 <bes f'> <ees g>4 <b ees> |
        <bes d>4 <aes c>2 <ees'' c'>8(8 | <c aes'>4) \vo aes g f | <g bes>4. <ees g>8 f4 ees | f2. g4 | ees1~ | 4
      }
      { bes'4\repeatTie bes g'4. f8 | ees1 \ov <ees g bes ees>4 r r2 | }
    }
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global \vt
  <aes ees'>4 2 | r4 bes bes a | r <aes c ees> <aes d>2 | g4 bes ces bes8 aes | g4 \section
  \repeat volta 3 {
    r4 r2 | r4 <bes ees g>2. | r4 <ees g> ees2 | r4 <aes, c f>2 <aes c ees>4 | <aes d>2 <f' aes> |
    r4 <aes, c f>2 <aes c ees>4 | <aes d>2 <bes d> | r4 <bes ees f>2. | r4 q2 <ees g>4 | r4 <ees aes>2.~ |
    q4 <aes ees> <ees aes>2 | r4 <bes ees g>2.~ | q4 <bes ees> bes a | r4 <bes d aes'>2.~ |
    \alternative {
      {
        q4 <bes d> aes2 | r4 <g bes>2.~ | q4 r r2 |
        s1*11 |
        s4 <aes ees'>4 2 | r4 bes bes a | r <aes c ees> <aes d>2 | g4 bes ces bes8 aes | g4
      }
      { <bes d aes'>4\repeatTie <d aes'> <bes' d>4. <aes d>8 | r4 <ees g bes>2. | s2. }
    }
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\mf | s1*4 | s4
  \repeat volta 3 {
    s2.\mf | s1*12 |
    \alternative {
      {
        s1*2 | s1\mp |
        s1*15 | s4
      }
      { s1*2 | s2. }
    }
  }
}

pianoLH = \relative {
  \global
  c4 ces2 | bes2 g4 fis | f2 bes4 bes, | ees g aes g8 f | ees4 \section
  \repeat volta 3 {
    r4 r2 | ees4. bes'8 c4 bes | ees,2 g4 fis | f4. aes8 c4 f, | bes2 bes,4 bes' |
    f4. aes8 c4 f, | bes2 bes,4 bes' | ees,4. bes'8 c4 bes | ees,4. bes'8 c4 bes | aes4. ees'8 f4 ees |
    aes,2 ees'4 aes, | ees4. bes'8 c4 bes | ees,2 g4 fis | f4. bes8 c4 bes |
    \alternative {
      {
        bes,2 bes'4 bes, | ees4. bes'8 c4 bes | ees,4 r r2 |
        ees4. bes'8 c4 bes | ees,2 bes'4 ees, | aes4. ees'8 f4 ees | aes,2 ees'4 aes, | bes,4. bes'8 c4 bes8 8 |
        f2 bes4 bes, | ees4. bes'8 c4 bes | ees,4 r r2 | ees4. bes'8 c4 bes | ees,2 bes'4 ees, |
        aes4. ees'8 d4 ees | aes, c ces2 | bes2 g4 fis | f2 bes4 bes, | ees4 g aes g8 f | ees4
      }
      { f2 bes4 bes, | ees4. bes'8 c4 bes | <ees, ees'>4 r r2 }
    }
  }
%  \bar "|."
}

#(set-global-staff-size 19)

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
            \new Voice \pianoLH
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
    output-suffix = single
  }
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChordNames \ChordTrack
%        \new FretBoards \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
          }
          <<
            \new Dynamics \TempoTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \wordsSingle
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
            \new Voice \pianoLH
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
            \new Voice \RehearsalTrack
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
            \new Voice \pianoLH
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
            \addlyrics \midiWords
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
            \new Voice \pianoLH
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
