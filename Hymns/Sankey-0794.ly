\version "2.25.12"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Speak Kindly!"
  subtitle    = "Sankey No. 794"
  subsubtitle = "C. C. No. 167"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "S. Trevor Francis."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 2/4
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s8 s2*4
  \textMark \markup { \box \bold "B" }    s2*5
  \textMark \markup { \box \bold "C" }    s2*5
  \textMark \markup { \box \bold "D" }    s2*5 s4.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=100
}

nl = { \bar "||" \break }

melody = \relative {
  \autoBeamOff
  c'8 | a' a bes a | a g d8. e16 | f4. g8 | 4. a8
  a4. c,8 | a'8 8 bes a | a g d8. g16 | 4. 8 | a4. g8 |
  f4. a8 | c c d c | bes a a8. g16 | 4. c8 | 4. b8 |
  c4. 8 | g8 8 8 8 | f f bes8. 16 | a4. f8 | 4. e8 | f4.
  
}

pianoRHone = \relative {
  \autoBeamOff
  c'8 | \vo a'4 \ov <d, f bes>8~<c f a> | <bes e a>~<bes e g> \vo d8. <c e>16 |
  <a c f>4. <bes c g'>8 | \vo g'4. \ov <c, f a>8 |
  <c f a>4. c8 | \vo a'4 \ov <d, f b>8~ <c f a> | \vo <f a> g d8. g16 | % B
  <c, e g>4. 8 | \vo a' 4. g8 |
  \ov <a, c f>4. a'8 | \vo c4 <bes d>8 <a c> | % C
  <g bes>8 <f a>~ \ov <b, f' a>8. <b f' g>16 | <c e g>4. <e g c>8 |
  \vo c'4. b8 |
  \ov <e, g c>4. c'8 | \vo g2 | f4 bes | \ov <c, ees f a>4.~<c e f>8~ | % D
  \vo f4. e8 | \ov <a, c f>4.
}

pianoRHtwo = \relative {
  \autoBeamOff \vt
  s8 | <c' f>8 8 s4 | s4 bes | s2 | <bes c e>8 8 8 s |
  s2 | <c f>8 8 s4 | b4~8. <d f>16 | s2 | <c f>8 8 <c e> <bes c e> |
  s2 | <f' a>8 8 f4 | c s | s2 | <e g>8 8 <d f> q |
  s2 | <c e>8 8 8 8 | c c q8. 16 | s2 | <b d>8 <a c>~ <g c> <bes c> | s4.
}

pianoLHone = \relative {
  \autoBeamOff
  r8 | \vo r c f c | r e f8. g16 | r8 c, f c | r e g c, |
  r8 c f r | r c f c | r d g d | r e g bes | r f a e |
  r8 c f r | r c f c | \ov <e, e'> <f f'> <d d'>4 | \vo r8 e' g c | r g4. |
  r8 g c r | g2 | f8 8 \ov <g, c>4 \vo | r8 c f~ \ov <a, f'>~ | \vo f'4 s | \ov <f, f'>4.
}

pianoLHtwo = \relative {
  \autoBeamOff \vt
  r8 | f,2 | c' | f,4.(c'8) | 4.(f,8) |
  f4. r8 | f2 | g | c | c |
  f,4. r8 | f2 | s | c' | g |
  c4. r8 | c4 bes | a s | f4. s8 bes8(c <c g'>4) | s4.
}

chorus = \lyricmode {
}


verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Speak kind -- ly! for our days are all too few
  For an -- gry strife;
  There is deep mean -- ing, if we on -- ly knew,
  In our brief life.
  No no -- bler mis -- sion can be ours, if we
  A pang can stay:
  Or if a -- midst the rush of tears we see,
  Wipe one a -- way.

}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Speak kind -- ly! gra -- cious words, God- sent, God- given,
  Are nev -- er lost;
  They come all fra -- grant with the breath of heaven,
  Yet no -- thing cost.
  Kind words are like kind acts— they steal a -- long
  Life's hid -- den springs;
  Then, in the dark -- est storm, some lit -- tle song
  The sad heart sings.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Speak kind -- ly, gra -- cious -- ly; for all a -- round
  Are pains and smarts;
  The ve -- ry air is full of moans and sound
  Of break -- ing hearts.
  Oh, seek to bind them up at once, as did
  Thy gra -- cious Lord:
  Then sure -- ly will His hand be -- stow on thee
  A bright re -- ward.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Speak " kind "ly! " "for " "our " "days " "are " "all " "too " "few "
  "\nFor " an "gry " "strife; "
  "\nThere " "is " "deep " mean "ing, " "if " "we " on "ly " "knew, "
  "\nIn " "our " "brief " "life. "
  "\nNo " no "bler " mis "sion " "can " "be " "ours, " "if " "we "
  "\nA " "pang " "can " "stay: "
  "\nOr " "if " a "midst " "the " "rush " "of " "tears " "we " "see, "
  "\nWipe " "one " a "way.\n"

  \set stanza = "2."
  "\nSpeak " kind "ly! " gra "cious " "words, " God "sent, " God "given, "
  "\nAre " nev "er " "lost; "
  "\nThey " "come " "all " fra "grant " "with " "the " "breath " "of " "heaven, "
  "\nYet " no "thing " "cost. "
  "\nKind " "words " "are " "like " "kind " "acts—" "they " "steal " a "long "
  "\nLife's " hid "den " "springs; "
  "\nThen, " "in " "the " dark "est " "storm, " "some " lit "tle " "song "
  "\nThe " "sad " "heart " "sings.\n"

  \set stanza = "3."
  "\nSpeak " kind "ly, " gra cious "ly; " "for " "all " a "round "
  "\nAre " "pains " "and " "smarts; "
  "\nThe " ve "ry " "air " "is " "full " "of " "moans " "and " "sound "
  "\nOf " break "ing " "hearts. "
  "\nOh, " "seek " "to " "bind " "them " "up " "at " "once, " "as " "did "
  "\nThy " gra "cious " "Lord: "
  "\nThen " sure "ly " "will " "His " "hand " be "stow " "on " "thee "
  "\nA " "bright " re "ward. "
}

wordsMidiMen = \lyricmode {
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Melody staff
          \new Staff = melody \with {midiInstrument = "choir aahs"}
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \melody \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Piano staff
          \new Staff = piano \with {midiInstrument = "acoustic grand piano"}
          <<
            \new Voice { \global \repeat unfold \verses \pianoRHone \bar "|." }
            \new Voice { \global \repeat unfold \verses \pianoRHtwo           }
            \new Voice { \global \repeat unfold \verses \pianoLHone           }
            \new Voice { \global \repeat unfold \verses \pianoLHtwo           }
          >>
        >>
    \midi {}
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      \new ChoirStaff
      <<
                                % Melody staff
        \new Staff = melody
        <<
          \new Voice \RehearsalTrack
          \new Voice \TempoTrack
          \new Voice {\global \melody \bar "|."}
          \addlyrics \wordsOne
          \addlyrics \wordsTwo
          \addlyrics \wordsThree
        >>
      >>
      \new PianoStaff <<
        \new Staff = pianorh
        <<
          \new Voice { \global \pianoRHone \bar "|." }
          \new Voice { \global \pianoRHtwo }
        >>
        \new Staff = pianolh
        <<
          \clef "bass"
          \new Voice { \global \pianoLHone }
          \new Voice { \global \pianoLHtwo }
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

singlescore = {
  <<
    \new ChoirStaff <<
      \new Staff = melody <<
        \new Voice { \repeat unfold \verses \RehearsalTrack }
        \new Voice { \repeat unfold \verses \TempoTrack }
        \new Voice { \repeat unfold \verses \melody }
        \addlyrics { \wordsOne \wordsTwo \wordsThree }
      >>
    >>
    \new PianoStaff
    <<
      \new Staff = pianorh
      <<
        \new Voice { \global \repeat unfold \verses \pianoRHone \bar "|." }
        \new Voice { \global \repeat unfold \verses { \pianoRHtwo \nl } \bar "|." }
      >>
      \new Staff = pianolh
      <<
        \clef "bass"
        \new Voice { \global \repeat unfold \verses \pianoLHone }
        \new Voice { \global \repeat unfold \verses \pianoLHtwo }
      >>
    >>
  >>
}

\book {
  \bookOutputSuffix "single"
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
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
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
