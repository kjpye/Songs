\version "2.25.18"

\include "kjp.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title    = "The Virgin Mary Had a Baby Boy"
  subsubtitle = "(add your own calypso feel)"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "West Indian traditional"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
%  tagline     = "tagline" % default lilypond version
% tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 4/4
  \tempo 4=120
}

unison = \relative c' {
  \global
  r1
  r2 r4 r8 c
  f4 f f8 f g f
  e8 g c,2 \breathe r8 c
  bes'4 bes bes8 bes c bes
  a8 c f,2 \breathe r8 a
  c4 c8 ees4 d8 ees c
  d4 d8 bes4. \breathe bes8 bes
  \times 2/3 {c4 a f} g4 c,
  f4 f2 r4
  \repeat volta 2 {
    r4 c8 c4 d8 e4
    f2 g
    r4 a8 a4 a g8
    f4 f g f
  }
  \repeat volta 2 {
    r2 d'^\markup{\italic Harmony}
    c4. bes8 a4 c
  }
  r4 c,8^\markup{\italic Unison} c4 d8 e4
  f2 g
  r4 a8 a4 a g8
  f4 f g f
  \bar "|."
}

pianoRH = \relative c' {
  \global
  r8 a <c d f> r a q r <a c d f>
  r8 a <c d f> r a q r <a c d f>
  r8 a <c d f> r a q r <a c d f>
  r8 bes <c e> r bes q r q
  r8 bes <c e> r bes q r q
  r8 a <c d f> r a q r <a c d f>
  r8 a <c ees f> r a <c f> r <c ees f>
  r8 g <bes d f> r g q r <g bes d f>
  \times 2/3 {r4 a <c f>} r4 <bes c e>
  r2 <a' c d f>4 q
  \repeat volta 2 {
    r4 s2 s4
    <a, f'>4 s2 s4
    <a f'>4 s2 s4
    <a f'>4 <c a' c> <c e bes'> <c f a>
  }
  \repeat volta 2 {
    r2 s
    s1
  }
  r4 s2 s4
  <a f'>4 s2 s4
  <a f'>4 s2 s4
  <a f'>4 <a c f> <bes c e> <a c f>
%  \bar "|."
}

pianoRHone = \relative {
  \global \vo
  s1*10
  \repeat volta 2 {
    s4 c'4~c8 d e4
    s4 c4~c8 d e4
    s4 c4~c8 d e4
    s1
  }
  \repeat volta 2 {
    s2 d'2
    c4. bes8 a4 c
  }
  s4 c,4~c8 d e4
  s4 c4~c8 d e4
  s4 c4~c8 d e4
  s1
%  \bar "|."
}

pianoRHtwo = \relative {
  \global \vt
  s1*10
  \repeat volta 2 {
    s4 c'8 bes~bes2
    s4 c8 bes~bes2
    s4 c8 bes~bes2
    s1
  }
  \repeat volta 2 {
    s2 f'2
    f4. f8 f4 f
  }
  s4 c8 bes~bes2
  s4 c8 bes~bes2
  s4 c8 bes~bes2
  s1
%  \bar "|."
}

pianoLH = \relative c, {
  \global \ov
  <f c'>4 r8 <a f'> r4 <f c'>8 r
  <f c'>4 r8 <a f'> r4 <f c'>8 r
  <f c'>4 r8 <a f'> r4 <f c'>8 r
  <g c>4 r8 <c e>8 r4 <g c>8 r
  <g c>4 r8 <c e>8 r4 <g c>8 r
  <f c'>4 r8 <a f'>8 r4 <f c'>8 r
  <f c'>4 r8 <a f'>8 r4 <f c'>8 r
  <bes f'>4 r8 <d f> r4 <bes f'>8 r
  \times 2/3 {<c f>4 r r} <c g'>4 r
  s2 r
  \repeat volta 2 {
    c4. c,8~c4 c'
    f,4. c'8~c4 c,4
    f4. c'8~c4 c,
    f4 f' c f
  }
  \repeat volta 2 {
    r2 s
    s1
  }
  c4. c,8~c4 c'
  f,4. c'8~c4 c,
  f4. c'8~c4 c,
  f4 f c f
%  \bar "|."
}

pianoLHone = \relative c {
  \global \vo
  \clef bass
  s1*9
  c4 c s2
  \repeat volta 2 {
    s1*4
  }
  \repeat volta 2 {
    s2 bes'
    a4. g8 f4 a
  }
%  \bar "|."
}

pianoLHtwo = \relative c, {
  \global \vt
  \clef bass
  s1*9
  f2 s
  \repeat volta 2 {
    s1*4
  }
  \repeat volta 2 {
    s2 bes'
    a4. g8 f4 a
  }
%  \bar "|."
}

wordsOne = \lyricmode {
  \set stanza = "1."
  The vir- gin Ma- ry had a ba- by boy,
  the vir- gin Ma- ry had a ba- by boy,
  the vir- gin Ma- ry had a ba- by boy,
  and they say that his name was Je- sus.
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  The an- gels sang _ when the ba- by born,
  the an- gels sang _ when the ba- by born,
  the an- gels sang _ when the ba- by born,
  and pro- claim him the ba- by Je- sus.
}

chorus = \lyricmode {
  \repeat volta 2 {
    He come from the glo- ry,
    he come from the glo- rious king- dom,
  }

  \repeat volta 2 {
    O yes, be- liev- er,
  }
  he come from the glo- ry,
  he come from the glo- rious king- dom.
}

wordsThree = \lyricmode {
  \set stanza = "3."
  The wise men saw _ where the ba- by born,
  the wise men saw _ where the ba- by born,
  the wise men saw _ where the ba- by born,
  and they say that his name was Je- sus.
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "The " vir "gin " Ma "ry " "had " "a " ba "by " "boy, "
  "\nthe " vir "gin " Ma "ry " "had " "a " ba "by " "boy, "
  "\nthe " vir "gin " Ma "ry " "had " "a " ba "by " "boy, "
  "\nand " "they " "say " "that " "his " "name " "was " Je "sus. "
  \repeat volta 2 {
    "\nHe " "come " "from " "the " glo "ry, "
    "\nhe " "come " "from " "the " glo "rious " king "dom. "
  }

  \repeat volta 2 {
    "\nO " "yes, " be liev "er, "
  }
  "\nhe " "come " "from " "the " glo "ry, "
  "\nhe " "come " "from " "the " glo "rious " king "dom. "

  \set stanza = "2."
  "\nThe " an "gels " "sang " "" "when " "the " ba "by " "born, "
  "\nthe " an "gels " "sang " "" "when " "the " ba "by " "born, "
  "\nthe " an "gels " "sang " "" "when " "the " ba "by " "born, "
  "\nand " pro "claim " "him " "the " ba "by " Je "sus. "

  \repeat volta 2 {
    "\nHe " "come " "from " "the " glo "ry, "
    "\nhe " "come " "from " "the " glo "rious " king "dom. "
  }

  \repeat volta 2 {
    "\nO " "yes, " be liev "er, "
  }
  "\nhe " "come " "from " "the " glo "ry, "
  "\nhe " "come " "from " "the " glo "rious " king "dom, "

  \set stanza = "3."
  "\nThe " "wise " "men " "saw " "" "where " "the " ba "by " "born, "
  "\nthe " "wise " "men " "saw " "" "where " "the " ba "by " "born, "
  "\nthe " "wise " "men " "saw " "" "where " "the " ba "by " "born, "
  "\nand " "they " "say " "that " "his " "name " "was " Je "sus. "
  \repeat volta 2 {
    "\nHe " "come " "from " "the " glo "ry, "
    "\nhe " "come " "from " "the " glo "rious " king "dom, "
  }

  \repeat volta 2 {
    "\nO " "yes, " be liev "er, "
  }
  "\nhe " "come " "from " "the " glo "ry, "
  "\nhe " "come " "from " "the " glo "rious " king "dom, "

}

wordsOYes = \lyricmode {
  _ _ _ _ _ _ _ _ _
  O yes, be- liev- er,
}
  
#(set-global-staff-size 17)

\book {
  \paper {
    output-suffix = repeat
    }
  \score {
    <<
      \new ChoirStaff <<
                                % Single unison staff
        \new Staff = melody \with { instrumentName = #"Tutti" } <<
          \new Voice \unison
          \addlyrics \wordsOne
          \addlyrics {\wordsTwo \chorus}
          \addlyrics \wordsThree
        >>
      >>
      \new PianoStaff <<
        \new Staff <<
          \new Voice \pianoRH
          \new Voice = "rhone" \pianoRHone
          \addlyrics \wordsOYes
          \new Voice \pianoRHtwo
        >>
        \new Staff <<
          \new Voice \pianoLH
          \new Voice \pianoLHone
          \new Voice \pianoLHtwo
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
      \new ChoirStaff <<
                                % Single unison staff
        \new Staff = melody \with { instrumentName = #"Tutti" } <<
          \new Voice {\unison \unison \unison}
          \addlyrics {\wordsOne \chorus \wordsTwo \chorus \wordsThree \chorus}
        >>
      >>
      \new PianoStaff <<
        \new Staff <<
          \new Voice {\pianoRH \pianoRH \pianoRH}
          \new Voice {\pianoRHone \pianoRHone \pianoRHone}
          \new Voice {\pianoRHtwo \pianoRHtwo \pianoRHtwo}
        >>
        \new Staff <<
          \new Voice {\pianoLH \pianoLH \pianoLH}
          \new Voice {\pianoLHone \pianoLHone \pianoLHone}
          \new Voice {\pianoLHtwo \pianoLHtwo \pianoLHtwo}
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

\book {
  \paper {
    output-suffix = midi
    }
  \score {
    \unfoldRepeats
    <<
      \new ChoirStaff <<
                                % Single unison staff
        \new Staff = melody \with {
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice {\unison \unison \unison}
          \addlyrics \wordsMidi
        >>
      >>
      \new PianoStaff <<
        \new Staff = piano \with {
          midiInstrument = "acoustic grand piano"
        }
        <<
          \new Voice {\pianoRH \pianoRH \pianoRH}
          \new Voice {\pianoRHone \pianoRHone \pianoRHone}
          \new Voice {\pianoRHtwo \pianoRHtwo \pianoRHtwo}
          \new Voice {\pianoLH \pianoLH \pianoLH}
          \new Voice {\pianoLHone \pianoLHone \pianoLHone}
          \new Voice {\pianoLHtwo \pianoLHtwo \pianoLHtwo}
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
