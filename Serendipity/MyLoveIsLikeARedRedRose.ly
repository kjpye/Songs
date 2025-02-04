\version "2.25.13"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "My Love is like a red, red Rose"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Simply arr. by John B. R. Whitfield"
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
  \key aes \major
  \time 4/4
  \partial 4
}

TempoTrack = {
  \tempo "Rather slowly and with great feeling" 4=80
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" } s4 s1
  \repeat volta 2 {
    s1*4
    \textMark \markup { \box "1b" } s1*5
    \textMark \markup { \box "2a" } s1*5
    \textMark \markup { \box "2b" } s1*4
    \alternative {
      { s1 }
      { s1*2 }
    }
  }
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
  s4 s1
  \repeat volta 2 {
    s2. s4\p | s1*3 |
    s1 | s2\> s\! | s1\p | s4 s2.\< | s4\! s2.\> |
    s2\> s\! | s4 s2.\mp | s1 | s4 s2.\< | s4\! s2.\> | % 2a
    s2\< s\mf | s4 s2.\mp | s4 s2\> s4\p | s2..\> s8\! |
    \alternative {
      { s1\pp | }
      { s1\pp | s | }
    }
  }
}

soprano = \relative {
  \global
  r4 | R1 |
  \repeat volta 2 {
    r2 r4 c''( | ees1~ | 2 ees,) | r4 f(aes c |
    f1~ | 4 ees bes2) | ees2(ees,) | r4 f(aes c | f2. ees4~ |
    ees4. des8 c2~ | 4) ees, aes c | des bes c2 | r4 c f ees | 4. c8 des4(bes) | % 2a
    ees2(ees,) | r4 aes(c ees | bes f'2 ees4~ | 4 c aes ees |
    \alternative {
      { c2.) r4 | }
      { c2. r4 | R1 | }
    }
  }
  \bar "|."
}

wordsWomenOne = \lyricmode {
  Mm __ Mm __  Mm __ Mm __
  As fair art thou, my lass,
  So deep in love am I, __
  Mm __ Mm __
}

wordsWomenTwo = \lyricmode {
  \repeat unfold 4 \skip 1
  And fare thee weel, my love,
  And fare thee weel a -- while
  "" ""
}

wordsWomenSingle = \lyricmode {
  Mm __ Mm __  Mm __ Mm __
  As fair art thou, my lass,
  So deep in love am I, __
  Mm __ Mm __

  Mm __ Mm __  Mm __ Mm __
  And fare thee weel, my love,
  And fare thee weel a -- while
  Mm __ Mm __
}

wordsWomenMidi = \lyricmode {
  "Mm "  "Mm "   "Mm "  "Mm " 
  "\nAs " "fair " "art " "thou, " "my " "lass, "
  "\nSo " "deep " "in " "love " "am " "I, " 
  "\nMm "  "Mm\n" 

  "\nMm "  "Mm "   "Mm "  "Mm " 
  "\nAnd " "fare " "thee " "weel, " "my " "love, "
  "\nAnd " "fare " "thee " "weel " a "while "
  "\nMm "  "Mm " 
}

alto = \relative {
  \global
  r4 | R1 |
  \repeat volta 2 {
    r2 r4 aes'( | c1~ | 2 c,) | r4 c(f g |
    aes2. c4 | aes f g2) | c2(c,) | r4 c(f g | aes2. bes4 |
    c4 bes aes2~ | 4) ees f aes | des, f aes2 | r4 ees bes' aes | g f aes(g) | % 2a
   c2(c,) | r4 f(ees g | aes2. bes4 | c aes ees c | 
    \alternative {
      { aes2.) r4 | }
      { aes2. r4 | R1 | }
    }
  }
  \bar "|."
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s4 | s1 |
  \repeat volta 2 {
    s1 | s2. s4\p | s1*2 |
    s1\< | s2.\> s4\p | s1*2 | s4. s8\> s2 |
    s2\> s4\! s\mp | s1*4 | % 2a
    s4 s2.\mf | s2. s4\mp | s4. s8\> s2 | s1\! |
    \alternative {
      { s1 | }
      { s1*2 | }
    }
  }
}

bassA = \relative {
  r4 | R1 |
}

bassB = \relative {
  R1 | r2 r4 ees | aes,4. 8 bes4 c |
  \tag #'dash {aes'4. g8 f4 \slurDashed ees8(8) \slurSolid|}
  \tag #'v1   {aes4.  g8 f4             ees4              |}
  \tag #'v2   {aes4.  g8 f4             ees8 8            |}
  f4. ees8 f4 aes | bes2. ees,4 | aes,4. 8 bes4 c |
  \tag #'dash {aes'4. g8 f4 \slurDashed ees8(8) \slurSolid |}
  \tag #'v1   {aes4.  g8 f4             ees4               |}
  \tag #'v2   {aes4.  g8 f4             ees8 8             |}
  f4. ees8 f4 g |
  aes2. ees4 | aes c bes aes | f8 aes4. ees4 c | ees ees des' c | c2(bes4) ees8(des) |
  c4 ees c aes |
  \tag #'dash {f4 aes ees \slurDashed c8(8) \slurSolid |}
  \tag #'v1   {f4 aes ees             c4               |}
  \tag #'v2   {f4 aes ees             c8 8             |}
  ees4. 8 f4 g | aes2. r4 |
}

bassC = { R1 | }
bassD = { R1 | R | }

bass = {
  \global
  \bassA
  \repeat volta 2 {
    \keepWithTag #'dash \bassB
    \alternative {\bassC \bassD}
  }
  \bar "|."
}

bassSingle = {
  \global
  \bassA
  \keepWithTag #'v1 \bassB \bassC
  \keepWithTag #'v2 \bassB \bassD
  \bar "|."
}

wordsBassOne = \lyricmode {
  My love is like a red, red rose
  That’s new -- ly sprung in June,
  My love is like the me -- lo -- die
  That’s sweet -- ly play’d in tune.
  As fair art thou, my bon -- nie lass,
  So deep in love am I,
  And I will love thee still my dear,
  Till a’ the seas gang dry.
}

wordsBassTwo = \lyricmode {
  Till ’a the seas gang dry, my dear,
  \nom And the \yesm rocks melt wi’ the sun!
  And I will love thee still my dear,
  \nom While the \yesm sands o’ life shall run.
  And fare thee weel, my on -- ly love,
  And fare thee weel a -- while __
  And I will come a -- gain my love,
  \nom Tho’ it \yesm were ten thou -- sand mile!
}

wordsMenMidi = \lyricmode {
  "My " "love " "is " "like " "a " "red, " "red " "rose "
  "\nThat’s " new "ly " "sprung " "in " "June, "
  "\nMy " "love " "is " "like " "the " me lo "die "
  "\nThat’s " sweet "ly " "play’d " "in " "tune. "
  "\nAs " "fair " "art " "thou, " "my " bon "nie " "lass, "
  "\nSo " "deep " "in " "love " "am " "I, "
  "\nAnd " "I " "will " "love " "thee " "still " "my " "dear, "
  "\nTill " "a’ " "the " "seas " "gang " "dry.\n"

  "\nTill " "’a " "the " "seas " "gang " "dry, " "my " "dear, "
  "\nAnd " "the " "rocks " "melt " "wi’ " "the " "sun! "
  "\nAnd " "I " "will " "love " "thee " "still " "my " "dear, "
  "\nWhile " "the " "sands " "o’ " "life " "shall " "run. "
  "\nAnd " "fare " "thee " "weel, " "my " on "ly " "love, "
  "\nAnd " "fare " "thee " "weel " a "while " 
  "\nAnd " "I " "will " "come " a "gain " "my " "love, "
  "\nTho’ " "it " "were " "ten " thou "sand " "mile! "
}

pianoRHone = \relative {
  \global
  \lh \vo ees4( \rh \vo s1 |
  \repeat volta 2 {
    c'4 ees~ \vt <ees aes>2 |
    \ov <c' ees>2.) r4 |
    <c, ees>1\arpeggio |
    <aes c f>\arpeggio |
    <aes des f aes>1\arpeggio | % 1b
    \vo bes'4(des f ees) |
    \ov <c, ees>2(<ees aes c ees>) |
    <aes, c f>2(<f' aes c>\arpeggio) |
    <aes, des aes'>2(<aes des f>4\arpeggio <g ees'> |
    <aes c>2\arpeggio) <c aes'>2~( | % 2a
    q4 <ees aes c>\arpeggio <aes c f>\arpeggio <c f aes>\arpeggio~ |
    <aes des aes'> <aes bes f'> <aes c ees>2) |
    r4 \vo s\( ees''2( |
               \vt ees4) \ov <f, c'> <des aes'> <ees g> \) |
    <aes, c ees aes>2(<ees aes c ees>) | <c f aes c>2\arpeggio(<c ees>~ | \vo ees4 aes2 bes4 | \ov <c, ees c'>2.\arpeggio) r4 |
    \alternative {
      { R1 | }
      { r2 r4 \clef bass ees,4( | c2.) r4 | }
    }
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  s4 | s1 |
  \repeat volta 2 {
    <<{\vf c'1} \new Voice {\vo s2 aes'4 c}>> \vt | s1*3 |
    s1 | aes2 g | s1 | s | s |
    s1*3 | r4 ees' <f bes> <ees aes>~ | <ees g> s2. |
    s1*2 | <aes,, des>2 <des f>4 <bes g'> | s1 |
    \alternative {
      { s1 | }
      { s1*2 | }
    }
  }
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4\p | s1 |
  \repeat volta 2 {
    s1*4 |
    s1 | s\mp\> | s\p | s | s2 s\> |
    s1\! | s4 s2.\mp | s1 | s\mf | s\> | % 2a
    s2\< s\mf | s\> s\mp | s1\> s2.\p s4\pp |
    \alternative {
      { s2.\< s4\p | }
      { s2. s4\pp-\markup\italic "poco rit." | s1 | }
    }
  }
}

pianoLHone = \relative {
  \global \vo
  s4 | aes,4. 8 ees'4 aes~ |
  \repeat volta 2 {
    aes1 | \ov R | <ees aes>\arpeggio | <c f>\arpeggio |
    <des, aes' des>1\arpeggio | % 1b
    <bes'' des f>2 <ees, bes' ees> |
    <aes, c ees aes> <ees' aes c>\arpeggio |
    <f, c' f>2(<f' aes c>\arpeggio) |
    <bes, f'>(bes4 ees |
    ees1) | % 2a
    s4 \ov <f aes c>\arpeggio <aes c f>\arpeggio <c f aes>\arpeggio |
    <bes f'>4 <des f> \vo ees2 |
    <ees,, ees'>4 \clef treble ees''(des' c~ |
    c aes bes2) \clef bass |
    <aes, c ees>4 aes,4(c ees, | % 2b
    \vo ees'1 |
    <bes, bes'>2 bes'4 ees |
    \ov <aes, ees' aes>2.\arpeggio) r4 |
    \alternative {
      { \vo aes4.(8 ees'4 aes) | }
      { \ov r2 r4 ees,( | <aes, ees' aes>2.) r4 | }
    }
  }
  \bar "|."
}

pianoLHtwo = \relative {
  \global \vt
  s4 | aes,1~ |
  \repeat volta 2 {
    aes1 | s | aes\arpeggio | f\arpeggio |
    s1*4 | s2 ees |
    aes2.(g4 | \vo <f c' f>) \vt s2. | s1 | s4 \clef treble ees''2.~ | 1 \clef bass | % 2a
    s1 | f,,4\arpeggio aes g c, | s2 <ees bes'> | s1 |
    \alternative {
      { <<{aes1~\laissezVibrer} \new Voice {s2 ees'~\laissezVibrer}>> | }
      { s1*2 | }
    }
  }
  \bar "|."
}

pianoLHthree = \relative {
  \global \vf
  s4 | s2 ees2~ |
  \repeat volta 2 {
    ees1 | s1*3 |
    s1*5 |
    s1*5 | % 2a
    s1*4 |
    \alternative {
      { s1 | }
      { s1*2 | }
    }
  }
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
     <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsWomenOne
            \addlyrics \wordsWomenTwo
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \alto
            \addlyrics \wordsWomenOne
            \addlyrics \wordsWomenTwo
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBassOne
            \addlyrics \wordsBassTwo
          >>
        >>
        \new PianoStaff = piano \with {
          instrumentName = Piano
          connectArpeggios = ##t
        }
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
            \new Voice \pianoLHthree
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsWomenSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \alto
            \addlyrics \wordsWomenSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bassSingle
            \addlyrics {\wordsBassOne \wordsBassTwo}
          >>
        >>
        \new PianoStaff = piano \with {
          instrumentName = Piano
          connectArpeggios = ##t
        }
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
            \new Voice \pianoLHthree
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsWomenSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \alto
            \addlyrics \wordsWomenSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bassSingle
            \addlyrics {\wordsBassOne \wordsBassTwo}
          >>
        >>
        \new PianoStaff = piano \with {
          instrumentName = Piano
          connectArpeggios = ##t
        }
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
            \new Voice \pianoLHthree
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
    output-suffix = singlepage-sop
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
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsWomenSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsWomen
            \new Voice \alto
            \addlyrics {\tiny \wordsWomenSingle}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bassSingle
            \addlyrics {\tiny \wordsBassOne \wordsBassTwo}
          >>
        >>
        \new PianoStaff = piano \with {
          instrumentName = Piano
          connectArpeggios = ##t
        }
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
            \new Voice \pianoLHthree
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
    output-suffix = singlepage-alto
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
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsWomenSingle}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \alto
            \addlyrics \wordsWomenSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bassSingle
            \addlyrics {\tiny \wordsBassOne \wordsBassTwo}
          >>
        >>
        \new PianoStaff = piano \with {
          instrumentName = Piano
          connectArpeggios = ##t
        }
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
            \new Voice \pianoLHthree
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
    output-suffix = singlepage-men
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
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsWomenSingle}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsWomen
            \new Voice \alto
            \addlyrics {\tiny \wordsWomenSingle}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bassSingle
            \addlyrics {\wordsBassOne \wordsBassTwo}
          >>
        >>
        \new PianoStaff = piano \with {
          instrumentName = Piano
          connectArpeggios = ##t
        }
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
            \new Voice \pianoLHthree
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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

\book {
  \paper {
    output-suffix = midi-women
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsWomenMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \alto
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bassSingle
          >>
        >>
        \new PianoStaff = piano \with {
          instrumentName = Piano
          connectArpeggios = ##t
        }
        <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
            \new Voice \pianoLHthree
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

\book {
  \paper {
    output-suffix = midi-men
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \alto
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bassSingle
            \addlyrics \wordsMenMidi
          >>
        >>
        \new PianoStaff = piano \with {
          instrumentName = Piano
          connectArpeggios = ##t
        }
        <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
            \new Voice \pianoLHthree
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
