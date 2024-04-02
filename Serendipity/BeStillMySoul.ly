\version "2.25.14"

\include "kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Be Still, My Soul"
  subtitle    = "A. H. B. 48"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup "Jean Sibelius (1865-1957)"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup{\smallCaps "Katharina von Schlegel" "(tr. Jane Borthwick)"}
  meter       = \markup\smallCaps "Finlandia"
  piece       = \markup\smallCaps "10 10. 10 10. 10 10"

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

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2. s1*4
  \mark \markup { \box "B" }     s1*5
  \mark \markup { \box "C" }     s1*5
  \mark \markup { \box "D" }     s1*5
  \mark \markup { \box "E" }     s1*4 s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  g'4 f g
  aes2. g4
  f4 g ees4. f8
  f4(g2.~
  g4) \breathe g f g
  aes2. g4 % B
  f4 g ees4. f8
  g1~
  g4 \breathe bes4 4 4
  c2. g4
  g4 bes4 4. f8 % C
  f4(aes2.~
  aes4) \breathe aes g f
  g2. ees4
  ees4 f f4. g8
  g1~ % D
  g4 \breathe bes4 4 4
  c2. g4
  g4 bes4 4. f8
  f4(aes2.~
  aes4) \breathe 4 g f % E
  g2. ees4
  ees4 f4 4. ees8
  ees1~
  ees4
}

alto = \relative {
  ees'4 d ees
  d2. ees4
  d4 ees c4. d8
  d4(ees2.~
  ees4) ees d ees
  d2. ees4 % B
  d4 ees ees4. d8
  ees1~
  ees4 g g g
  g2. ees4
  ees4 4 4. d8 % C
  d4(f2.~
  f4) f e f
  ees2. 4
  ees4 4 d4. 8
  d1~ % D
  d4 g g g
  g2. ees4
  ees4 4 4. d8
  d4(f2.~
  f4) f e f % E
  ees2. bes4
  ees4 4 d4. ees8
  ees1~
  ees4
}

tenor = \relative {
  bes4 4 4
  bes2. 4
  bes4 4 aes4. bes8
  bes1~
  bes4 4 4 4
  bes2. 4 % B
  bes4 4 c4. aes8
  bes1~
  bes4 ees4 4 4
  ees2. c4
  c4 bes4 4. 8 % C
  bes4( c2.~
  c4) 4 bes c
  bes2. 4
  c4 4 4. b8
  b1~ % D
  b4 bes ees ees
  ees2. c4
  c4 bes4 4. 8
  bes4 c2.~
  c4 4 bes c % E
  bes2. g4
  g4 aes4 4. g8
  g1~
  g4
}

bass = \relative {
  ees4 aes g
  f2. ees4
  aes4 g aes f
  f4(ees2.~
  ees4) 4 aes g
  f2. ees4 % B
  aes4 g aes4. f8
  ees1~
  ees4 ees'4 4 d
  c2. 4
  c4 g4 4. bes8 % C
  bes4(f2.~
  f4) 4 g aes
  bes2. g4
  aes4 4 4. g8
  g1~ % D
  g4 ees ees d
  c2. 4
  c4 g4 4. bes8
  bes4(f2.~
  f4) f g aes % E
  bes2. 4
  bes4 4 4. 8
  ees1~
  ees4
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Be still, my soul: the Lord is on your side;
  bear pa -- tient -- ly the cross of grief and pain;
  leave to your God to or -- der and pro -- vide;
  in ev -- ery change he faith -- ful will re -- main.
  Be still, my soul: your best, your heaven -- ly friend
  through thor -- ny ways leads to a joy -- ful end.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Be still, my soul: your God will un -- der -- take
  to guide the fut -- ure as he has the past.
  Your hope, your con -- fi -- dence let no -- thing shake,
  all now my -- ste -- rious shall be clear at last.
  Be still, my soul: the tem -- pests still o -- bey
  his voice, who ruled them once in Ga -- li -- lee.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Be still, my soul: when dear -- est friends de -- part
  and all is dark -- ened in the vale of tears,
  then you shall bet -- ter know his love, his heart,
  who comes to sooth your sor -- row, calm your fears.
  Be still, my soul: for Je -- sus can re -- store
  the trust and hope that streng -- thened you be -- fore.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Be still, my soul: the hour is has -- tening on
  when we shall be for -- ev -- er with the Lord,
  when dis -- ap -- point -- ment, grief and fear are gone,
  sor -- row for -- got -- ten, love's pure joy re -- stored.
  Be still, my soul: when change and tears are past,
  all safe and ble -- sséd we shall meet at last.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Be " "still, " "my " "soul: " "the " "Lord " "is " "on " "your " "side; "
  "\nhear " pa tient "ly " "the " "cross " "of " "grief " "and " "pain; "
  "\nleave " "to " "your " "God " "to " or "der " "and " pro "vide; "
  "\nin " ev "ery " "change " "he " faith "ful " "will " re "main. "
  "\nBe " "still, " "my " "soul: " "your " "best, " "your " heaven "ly " "friend "
  "\nthrough " thor "ny " "ways " "leads " "to " "a " joy "ful " "end. "

  \set stanza = "2."
  "\nBe " "still, " "my " "soul: " "your " "God " "will " un der "take "
  "\nto " "guide " "the " fut "ure " "as " "he " "has " "the " "past. "
  "\nYour " "hope, " "your " con fi "dence " "let " no "thing " "shake, "
  "\nall " "now " my ste "rious " "shall " "be " "clear " "at " "last. "
  "\nBe " "still, " "my " "soul: " "the " tem "pests " "still " o "bey "
  "\nhis " "voice, " "who " "ruled " "them " "once " "in " Ga li "lee. "

  \set stanza = "3."
  "\nBe " "still, " "my " "soul: " "when " dear "est " "friends " de "part "
  "\nand " "all " "is " dark "ened " "in " "the " "vale " "of " "tears, "
  "\nthen " "you " "shall " bet "ter " "know " "his " "love, " "his " "heart, "
  "\nwho " "comes " "to " "sooth " "your " sor "row, " "calm " "your " "fears. "
  "\nBe " "still, " "my " "soul: " "for " Je "sus " "can " re "store "
  "\nthe " "trust " "and " "hope " "that " streng "thened " "you " be "fore. "

  \set stanza = "4."
  "\nBe " "still, " "my " "soul: " "the " "hour " "is " has "tening " "on "
  "\nwhen " "we " "shall " "be " for ev "er " "with " "the " "Lord, "
  "\nwhen " dis ap point "ment, " "grief " "and " "fear " "are " "gone, "
  "\nsor" "row " for got "ten, " "love's " "pure " "joy " re "stored. "
  "\nBe " "still, " "my " "soul: " "when " "change " "and " "tears " "are " "past, "
  "\nall " "safe " "and " ble "sséd " "we " "shall " "meet " "at " "last. "
}

\book {
  \paper {
    output-suffix = midi
  }
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass \with {
            midiInstument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
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

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice { \global \vo \soprano \bar "|." }
            \new Voice { \global \vt \alto }
            \addlyrics \wordsOne 
            \addlyrics \wordsTwo
            \addlyrics \wordsThree
            \addlyrics \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men
          <<
            \clef "bass"
            \new Voice { \global \vo \tenor }
            \new Voice { \global \vt \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics { \wordsOne \wordsTwo \wordsThree \wordsFour }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \tenor }
            \new Voice { \global \repeat unfold \verses \bass  }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics { \wordsOne \wordsTwo \wordsThree \wordsFour }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \tenor }
            \new Voice { \global \repeat unfold \verses \bass  }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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
    output-suffix = singlepage-sep
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics { \wordsOne \wordsTwo \wordsThree \wordsFour }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics { \wordsOne \wordsTwo \wordsThree \wordsFour }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
            \addlyrics { \wordsOne \wordsTwo \wordsThree \wordsFour }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass  }
            \addlyrics { \wordsOne \wordsTwo \wordsThree \wordsFour }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics { \wordsOne \wordsTwo \wordsThree \wordsFour }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \magnifyStaff #4/7
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics { \tiny \wordsOne \wordsTwo \wordsThree \wordsFour }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
            \addlyrics { \tiny \wordsOne \wordsTwo \wordsThree \wordsFour }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass  }
            \addlyrics { \tiny \wordsOne \wordsTwo \wordsThree \wordsFour }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \magnifyStaff #4/7
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics { \tiny \wordsOne \wordsTwo \wordsThree \wordsFour }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics { \wordsOne \wordsTwo \wordsThree \wordsFour }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
            \addlyrics { \tiny \wordsOne \wordsTwo \wordsThree \wordsFour }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass  }
            \addlyrics { \tiny \wordsOne \wordsTwo \wordsThree \wordsFour }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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
    output-suffix = singlepage-tenor
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \magnifyStaff #4/7
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics { \tiny \wordsOne \wordsTwo \wordsThree \wordsFour }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \magnifyStaff #4/7
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics { \tiny \wordsOne \wordsTwo \wordsThree \wordsFour }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
            \addlyrics { \wordsOne \wordsTwo \wordsThree \wordsFour }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass  }
            \addlyrics { \tiny \wordsOne \wordsTwo \wordsThree \wordsFour }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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
    output-suffix = singlepage-bass
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \magnifyStaff #4/7
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics { \tiny \wordsOne \wordsTwo \wordsThree \wordsFour }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \magnifyStaff #4/7
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics { \tiny \wordsOne \wordsTwo \wordsThree \wordsFour }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
            \addlyrics { \tiny \wordsOne \wordsTwo \wordsThree \wordsFour }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass  }
            \addlyrics { \wordsOne \wordsTwo \wordsThree \wordsFour }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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
