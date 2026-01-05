\version "2.25.31"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Good Luck Charm"
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
  \key bes \major
  \time 2/2
  \partial 16*5
}

TempoTrack = {
  \global
  \tempo "Moderately" 4=120
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "102a" s16*5 | s1*4 | \break
  \repeat volta 3 {
    \textMark \markup\box "102b" s1*4 |
    \textMark \markup\box "102c" s1*4 |
    \textMark \markup\box "102d" s1*4 |
    \textMark \markup\box "103a" s1*3 |
    \textMark \markup\box "103b" s1*2
    \alternative {
      {s1}
      {
        s1
        \textMark \markup\box "103c" s1*3
        \textMark \markup\box "103d" s1*3
        \textMark \markup\box "103e" s1*2
      }
      {s1*2}
    }
  }
}

ChordTrack = \chordmode {
  s16*5 s1*4 |
  \repeat volta 3 {
    bes1 ees bes f:7 | bes2 bes:7 ees1 f:7 bes4 r2. | f1:7 s bes s |
    f1:7 s c2.:7 c4:7+5 | f1:7 bes
    \alternative {
      {s4 ges:7 f2:7}
      {s2 r | c2.:7 c4:7+5 f1:7 bes | s c2.:7 c4:7+5 f1:7 | bes s4 ges:7 f2:7}
      {bes2 ees:7 bes1 |}
    }
  }
}

melodyA = \relative {
  r16 r4 | R1*4 \section |
}

melodyB = \relative {
  f'4 8. 16 4 4 | % 102b
  \tag #'dash    {g8 bes4. <<{\vt r4 r8. g16} \new Voice {\vo r2}>> \ov |}
  \tag #'(v1 v2) {g8 bes4.                                    r2        |}
  \tag #'v3      {g8 bes4.        r4 r8. g16                            |}
  \tag #'dash    {\slurDashed f8.(16) 8.(16) \slurSolid g4 f |}
  \tag #'(v1 v3) {            f4      8. 16             g4 f |}
  \tag #'v2      {            f8. 16  4                 g4 f |}
  \tag #'dash    {c2 <<{\vt r4 r8. f16} \new Voice {\vo r2}>> \ov |}
  \tag #'v1      {c2                                    r2        |}
  \tag #'(v2 v3) {c2        r4 r8. f16                            |}
  d'4 8 8~4 c8. d16 | % 102c
  \tag #'dash    {c4 bes8 8~4 \slurDashed g8.(ges16) \slurSolid |}
  \tag #'v1      {c4 bes8 8~4             g8. ges16             |}
  \tag #'(v2 v3) {c4 bes8 8~4             g4                    |}
  f4 d' d c | bes f g f |
  a4 4 g8 f4. | a8 4 f8~8. 16 g8 bes~ | 4 4 4. 8 | g8(f4.) r8. f16 g8. f16 |
  a8 4 f8~8. 16 g8. f16 | a4 8 f~4 fis8 g~ | 4 8 8~4 gis8 a~ | % 103a
  a4 8 8~4 8 bes8~ | 1~ |
}

melodyC = {R1 |}
melodyD = \relative {
  r2 r8. f'16 fis8 g~ |
  g4 r r8. g16 gis8 a~ | 4 r r8. g16 a8 bes~ | 2 r4 bes |
  g8(f4.) r8. f16 fis8 g~ | 4 r r8. g16 gis8 a~ | 4 r r8. g16 a8 bes~ |
  bes1 | r2 r4 r8 d, |
}

melodyE = \relative {bes'1\repeatTie ~ | 2. r4 |}

melody = {
  \global
  \melodyA
  \repeat volta 3 {
    \keepWithTag #'dash \melodyB
    \alternative { \melodyC \melodyD \melodyE }
  }
  \bar "|."
}

melodySingle = {
  \global
  \melodyA
  \keepWithTag #'v1 \melodyB \melodyC
  \keepWithTag #'v2 \melodyB \melodyD
  \keepWithTag #'v3 \melodyB \melodyE
  \bar "|."
}
                
dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Don’t want a four leaf clov -- er;
  _ don’t __ \nom want \yesm an old horse shoe. _
  Want your kiss ’cause I just can’t miss
  \nom with a \yesm good luck charm like you.
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  Don’t want a sil -- ver dol -- lar,
  _ \nom rab -- bit’s \yesm foot __ on a string.
  The hap -- pi -- ness in your warm ca -- ress
  no __ rab -- bit’s foot can bring.

  Come on and be my lit -- tle good luck charm.
  Uh -- huh -- huh, __ you sweet de -- light.
  I want a good luck charm a -- hang -- in’ on my arm __
  To have, __ to have, __ to hold, __
  to hold __ to -- night. __

  Uh -- huh -- huh, __ uh -- huh -- huh, __
  uh -- huh -- huh; __ oh. yeah. __
  Uh -- huh -- huh, __ uh -- huh -- huh, __ uh, to -- night. __

  \set stanza = "3." If
}

wordsThree = \lyricmode {
  \set stanza = "3."
  I found a luck -- y pen -- ny,
  I’d toss \nom it a -- \yesm cross the bay.
  Your love is worth all the gold on earth;
  no __ won -- der that I say:
}

wordsSingle = \lyricmode {
  \set stanza = "1."
  Don’t want a four leaf clov -- er;
  don’t want an old horse shoe.
  Want your kiss ’cause I just can’t miss
  with a good luck charm like you.

  Come on and be my lit -- tle good luck charm.
  Uh -- huh -- huh, __ you sweet de -- light.
  I want a good luck charm a -- hang -- in’ on my arm __
  To have, __ to have, __ to hold, __
  to hold __ to -- night. __

  \set stanza = "2."
  Don’t want a sil -- ver dol -- lar,
  rab -- bit’s foot on a string.
  The hap -- pi -- ness in your warm ca -- ress
  no rab -- bit’s foot can bring.

  Come on and be my lit -- tle good luck charm.
  Uh -- huh -- huh, __ you sweet de -- light.
  I want a good luck charm a -- hang -- in’ on my arm __
  To have, __ to have, __ to hold, __
  to hold to -- night. __

  Uh -- huh -- huh, __ uh -- huh -- huh, __
  uh -- huh -- huh; __ oh. yeah. __
  Uh -- huh -- huh, __ uh -- huh -- huh, __ uh, to -- night. __

  \set stanza = "3."
  If I found a luck -- y pen -- ny,
  I’d toss it a -- cross the bay.
  Your love is worth all the gold on earth;
  no  won -- der that I say:

  Come on and be my lit -- tle good luck charm.
  Uh -- huh -- huh, __ you sweet de -- light.
  I want a good luck charm a -- hang -- in’ on my arm __
  To have, __ to have, __ to hold, __
  to hold to -- night. __
}

midiWords = \lyricmode {
  \set stanza = "1."
  "Don’t " "want " "a " "four " "leaf " clov "er; "
  "\ndon’t " "want " "an " "old " "horse " "shoe. "
  "\nWant " "your " "kiss " "’cause " "I " "just " "can’t " "miss "
  "\nwith " "a " "good " "luck " "charm " "like " "you. "

  "\nCome " "on " "and " "be " "my " lit "tle " "good " "luck " "charm. "
  "\nUh" huh "huh, "  "you " "sweet " de "light. "
  "\nI " "want " "a " "good " "luck " "charm " a hang "in’ " "on " "my " "arm " 
  "\nTo " "have, "  "to " "have, "  "to " "hold, " 
  "\nto " "hold "  to "night.\n" 

  \set stanza = "2."
  "\nDon’t " "want " "a " sil "ver " dol "lar, "
  "\nrab" "bit’s " "foot " "on " "a " "string. "
  "\nThe " hap pi "ness " "in " "your " "warm " ca "ress "
  "\nno " rab "bit’s " "foot " "can " "bring. "

  "\nCome " "on " "and " "be " "my " lit "tle " "good " "luck " "charm. "
  "\nUh" huh "huh, "  "you " "sweet " de "light. "
  "\nI " "want " "a " "good " "luck " "charm " a hang "in’ " "on " "my " "arm " 
  "\nTo " "have, "  "to " "have, "  "to " "hold, " 
  "\nto " "hold " to "night. " 

  "\nUh" huh "huh, "  uh huh "huh, " 
  "\nuh" huh "huh; "  "oh. " "yeah. " 
  "\nUh" huh "huh, "  uh huh "huh, "  "uh, " to "night.\n" 

  \set stanza = "3."
  "\nIf " "I " "found " "a " luck "y " pen "ny, "
  "\nI’d " "toss " "it " a "cross " "the " "bay. "
  "\nYour " "love " "is " "worth " "all " "the " "gold " "on " "earth; "
  "\nno "  won "der " "that " "I " "say: "

  "\nCome " "on " "and " "be " "my " lit "tle " "good " "luck " "charm. "
  "\nUh" huh "huh, "  "you " "sweet " de "light. "
  "\nI " "want " "a " "good " "luck " "charm " a hang "in’ " "on " "my " "arm " 
  "\nTo " "have, "  "to " "have, "  "to " "hold, " 
  "\nto " "hold " to "night. " 
}

pianoRHone = \relative {
  \global
  <bes d f>16 <bes dis fis>8 <bes e g>~ | 2~8. 16 <bes e gis>8 <c ees a>~ |
  q2~8. <c ees g>16 <c ees a>8 <bes d f bes>~ | 2. 4 | \vo g'8 f4.~2 \section |
  \repeat volta 3 {
    f4 8. 16 4 4 | g8 bes4.~2 | f4 8. 16 g4 f | r <ees a>2. |
    d'4 8 8~4 c8. d16 | c4 bes8 8~4 g8. ges16 | f4 d' d c | bes f g f |
    a4 4 g8 f4. | a8 4 f8~8. 16 g8 bes~ | 4 4 4. 8 | g8 f4.~8. 16 g8. f16 |
    a8 4 f8~8. 16 g8. f16 | % 103a
    \ov <c e a>4 8 <a ees' f>~4 <c ees fis>8 <bes e g>~ |
    4 8 8~4 <bes ees gis>8 <c ees a>~ |
    q4 8 8~4 8 <bes d f bes>~ | 1~ | % 103b
    \alternative {
      {q4 <bes e aes>(<a ees' f>2) |}
      {
        <bes d f bes>2\repeatTie ~8. <bes d f>16 <bes dis fis>8 <bes e g>~ |
        q2~8. 16 <bes e fis>8 <c ees a>~ | % 103c
        q2~8. <c ees g>16 <c ees a>8 <bes d f bes>~ | 2. 4 |
        <bes d g>8 <bes d f>4.~8. 16 <bes dis fis>8 <bes e g>~ | % 103d
        q2~8. <bes e g>16 <bes es gis>8 <c ees a>~ |
        q2~8. <c ees g>16 <c ees a>8 <bes d f bes>~ |
        \vo q1~ | bes'4 aes(g8 f4) d8 |
      }
      {
        \ov <bes d f bes>2\repeatTie <bes des g>4\(q
        <bes d f bes>2\) <bes' d f bes>4-> r |
      }
    }
  }
}

pianoRHtwo = \relative {
  \global \vt
  s16*5 | s1*3 | <bes d>1 \section |
  \repeat volta 3 {
    r4 <bes d> r q | r <bes ees g> r q | r <bes d> r q | c1 |
    r4 <d f bes> r <d aes> | r <bes ees g> r <bes ees> | <a ees'> <f' a> q <ees a> | <d f> r r2 |
    r4 <c ees> r <a ees'> | <c ees>8 4 <a ees'>8~4 8 <bes d f>~ | 4 4 r q | r <bes d> r q |
    <c ees>8 4 <a ees'>8~4 4 | s1*2 | % 103a
    s1*2 |
    \alternative {
      {s1*2 |}
      {s1*6 | \once\hideNotes <bes d f>1~ | 4 <bes e> <a ees'>4. r8 | }
      {s1*2 |}
    }
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s16*5\mf |
}

pianoLH = \relative {
  \global
  r16 r4 | c, g' e c | f c' a f | bes g f d | bes f' g f \section |
  \repeat volta 3 {
    bes,4 r d f | ees r8 bes' c4 bes | bes, r f' bes, | f' r8 d' c4 f, |
    bes,4 r f' bes, | ees r g bes | c r f, f | <bes, bes'> r r2 |
    f'4 r c r | f r c f | bes, r f' r | bes, r8 g' f4 bes, |
    f'4 r a c | f, r c' f, | c r g' c, | % 103a
    f4 r c' f, | bes g f d |
    \alternative {
      {bes4 ges' f4 g8. f16 |}
      {
        bes,4 f'8. g16 f4 r |
        c4 g' e c | f c' a f | bes g f d |
        bes4 f' d bes | c g' e c | f c' a f |
        bes4 g f d | bes ges' f4. r8 |
      }
      {bes4 f ees4 4 | bes' f <bes, bes'> r |}
    }
  }
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
            \addlyrics \wordsThree
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
            \new Voice \melodySingle
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
            \new Voice \melodySingle
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
            \new Voice \melodySingle
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
