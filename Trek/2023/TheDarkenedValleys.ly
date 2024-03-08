\version "2.25.13"

\include "kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Darkened Valleys"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "John Bumford"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Alan Flint"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 4/4
  \partial 2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \repeat volta 2 {
    \textMark \markup { \box \bold "68a" } s2 s1*3
    \textMark \markup { \box \bold "68b" }    s1*4
    \textMark \markup { \box \bold "68c" }    s1*5
    \textMark \markup { \box \bold "68d" }    s1*4
    \alternative {
      {
        \textMark \markup { \box \bold "69a" }    s1*4
        \textMark \markup { \box \bold "69b" }    s1*4 s2
      }
      {
        \textMark \markup { \box \bold "69c" }    s1*4
        \textMark \markup { \box \bold "69d" }    s1*4
      }
    }
  }
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

ChordTrack = \chordmode {
  \repeat volta 2 {
    f2/g | c c:maj7 | c:6 c | d1:m7 |
    d2:m7 g:7 | d:m d:min7 | d:m7 g | c c:maj7 |
    g2:m7 c:7 | f1 | fis:dim | g/c | a:m |
    f2 c/e | d1:m | d:7 | d2:m g |
    \alternative {
      \volta 1 {
        c1 | c1:aug/e | f | f:m6 |
        a2 a:aug/cis | a1:m | d2:m7 f/g | c1 | s2 
      }
      \volta 2 {
        c1 | c:aug/e | f | f:m6 |
        c2 c:aug/e | a1:m | d2:m7 g:7 | c1 | s2
      }
    }
  }
}

sopranoA = \relative {
  \partial 2
  \tag #'dash {c'4 c |}
  \tag #'v1   {c4  c |}
  \tag #'v2   {r4  c |}
  4. 8 4. 8 | e8[d] c2~8 c | c4. 8 e[d] c4 |
  \tag #'dash {d2. \slurDashed 8(8) \slurSolid |}
  \tag #'v1   {d2.             8 8             |}
  \tag #'v2   {d2.             4               |}
  4. 8 4. 8 |
  \tag #'dash {f[e] d2 \slurDashed 8(8) \slurSolid |}
  \tag #'v1   {f[e] d2             8 8             |}
  \tag #'v2   {f[e] d2             4               |}
  e4. d8 e4. f8 |
  g2. c,4 | a'4. 8 4. 8 | 8[b] c2 a4 | g4. a8 g4. 8 | c2. a8[b] |
  c4. 8 4. 8 |
  \tag #'dash {\slurDashed a8(b) c2 a8(b) \slurSolid |}
  \tag #'v1   {            a8[b] c2 a8 b             |}
  \tag #'v2   {            a8 b  c2 a8(b)            |}
  c4. 8 e4. c8 | d2. e,8[g] |
}

sopranoB = \relative {
  c''4. 8 4. 8 | e8[d] c2~8 8 | 4. 8 a4. c8 | d2. c4 |
  e4. 8 4. 8 | 8 d c2 4 | e4. c8 4. 8 | 1~ | 2
}

sopranoC = \relative {
  e''4. 8 4. 8 | e[d] c2~8 8 | 4. 8 a4. c8 | d2. c4 |
  g'4. 8 4. 8 | e[d] c2 4 | f4. c8 f8(e~ e) c | c1~| 2
}

soprano = {
  \autoBeamOff
  \global
  \repeat volta 2 {
    \keepWithTag #'dash \sopranoA
    \alternative {
      \volta 1 { \sopranoB }
      \volta 2 { \sopranoC }
    }
  }
  \bar "|."
}

sopranoSingle = {
  \autoBeamOff
  \global
  \keepWithTag #'v1 \sopranoA \sopranoB
  \keepWithTag #'v2 \sopranoA \sopranoC
  \bar "|."
}

altoA = \relative {
  \tag #'dash {a4 a |}
  \tag #'v1   {a4 a |}
  \tag #'v2   {r4 a |}
  g g b b | a a(g) g | a a a a |
  \tag #'dash {a2(b4) \slurDashed 8(8) \slurSolid |}
  \tag #'v1   {a2(b4)             8 8             |}
  \tag #'v2   {a2(b4)             4               |}
  a4 a cis cis |
  \tag #'dash {c2 b4 \slurDashed 8(8) \slurSolid |}
  \tag #'v1   {c2 b4             8 8             |}
  \tag #'v2   {c2 b4             4               |}
  c4 c c d |
  d2(e4) c | f f f f | ees4 2 4 | e e e e | e2. 4 |
  f4 f f f |
  \tag #'dash {\slurDashed f8(8) 2 8(8) \slurSolid |}
  \tag #'v1   {            f4    2 8 8             |}
  \tag #'v2   {            f8 8  2 4               |}
  fis4 4 4 4 | f2. e4 |
}

altoB = \relative {
  e'4 4 4 4 | gis4 2 4 | a4 4 f a | aes2. 4 |
  g4 4 gis4 4 | g8 f e2 4 | f4 4 4 4 | d1~ | 2
}

altoC = \relative {
  g'4 4 4 4 | gis4 2 4 | a a f a | aes2. 4 |
  g4 g gis gis | g8[f] e2 4 | f4 f a a | g1( | e2)
}

alto = {
  \autoBeamOff
  \global
  \repeat volta 2 {
    \keepWithTag #'dash \altoA
    \alternative {
      \volta 1 { \altoB }
      \volta 2 { \altoC }
    }
  }
}

altoSingle = {
  \autoBeamOff
  \global
  \keepWithTag #'v1 \altoA \altoB
  \keepWithTag #'v2 \altoA \altoC
}

tenorA = \relative {
  \tag #'dash {f4 4 |}
  \tag #'v1   {f4 4 |}
  \tag #'v2   {r4 4 |}
  e e e e | g8[f] e2 4 | f4 4 4 4 |
  \tag #'dash {f2(g4) \slurDashed 8(8) \slurSolid |}
  \tag #'v1   {f2(g4)            8 8             |}
  \tag #'v2   {f2(g4)            4               |}
  f4 4 4 4 |
  \tag #'dash {a8[g] f4(g) \slurDashed 8(8) \slurSolid |}
  \tag #'v1   {a8[g] f4(g)             8 8             |}
  \tag #'v2   {a8[g] f4(g)             4               |}
  4 f g a |
  bes2. 4 | c c c c | c4 2 c4 | c c c c | 2. 4 |
  a4 4 g g |
  \tag #'dash {\slurDashed a8(8) a2 8(8) \slurSolid |}
  \tag #'v1   {            a4    a2 8 8             |}
  \tag #'v2   {            a8 8  a2 4               |}
  4 4 c a | 2(b4) b |
}

tenorB = \relative {
  b4 c c c | 4 2 4 | c c c c | 2. 4 |
  c4 4 4 4 | 8 8  2 4 | a a a a | g1~ | 2
}

tenorC = \relative {
  c'4 4 4 4 | 4 2 4 | 4 4 4 4 | 2. 4 |
  e4 4 c c | 4 2 4 | c c f f | e1~ | 2
}

tenor = {
  \autoBeamOff
  \global
  \repeat volta 2 {
    \keepWithTag #'dash \tenorA
    \alternative {
      \volta 1 { \tenorB }
      \volta 2 { \tenorC }
    }
  }
}

tenorSingle = {
  \autoBeamOff
  \global
  \keepWithTag #'v1 \tenorA \tenorB
  \keepWithTag #'v2 \tenorA \tenorC
}

bassA = \relative {
  \tag #'dash {f4 4 |}
  \tag #'v1   {f4 4 |}
  \tag #'v2   {r4 4 |}
  c c c c | 4 2 4 | d d d d |
  \tag #'dash {d2(g4) \slurDashed 8(8) \slurSolid |}
  \tag #'v1   {d2(g4)             8 8             |}
  \tag #'v2   {d2(g4)             4               |}
  d4 4 4 4 |
  \tag #'dash {d4 d(g) \slurDashed 8(8) \slurSolid |}
  \tag #'v1   {d4 d(g)             8 8             |}
  \tag #'v2   {d4 d(g)             4               |}
  c,4 4 4 4 |
  g'2(c,4) c | f f f f | fis4 2 4 | g g g g | a2. 4 |
  f4 f e e |
  \tag #'dash {\slurDashed d8(8) 2 8(8) \slurSolid |}
  \tag #'v1   {            d4    2 8 8             |}
  \tag #'v2   {            d8 8  2 4               |}
  d d d d | 2(g4) 4 |
}

bassB = \relative {
  c,4 4 4 4 | e4 2 4 | f f f f | 2. 4 |
  c4 c e e | a8 8 2 4 | d, d g, g | c1~ | 2
}

bassC = \relative {
  c4 4 4 4 | e4 2 4 | f f f f | 2. 4 |
  c4 c e e | a4 2 4 | d, d g, g | c1~ | 2
}

bass = {
  \autoBeamOff
  \global
  \repeat volta 2 {
    \keepWithTag #'dash \bassA
    \alternative {
      \volta 1 { \bassB }
      \volta 2 { \bassC }
    }
  }
}

bassSingle = {
  \autoBeamOff
  \global
  \keepWithTag #'v1 \bassA \bassB
  \keepWithTag #'v2 \bassA \bassC
}

verses = 2

wordsOne = \lyricmode {
  \set stanza = "1."
  When you walk the dark -- ened val -- leys
  and no -- thing can go right
  \nom When you've \yesm lost your in -- spir -- a -- tion
  \nom and your \yesm mood is dark as night
  Just put your best foot for -- ward
  just trust up -- on God's will
  for if you keep on climb -- ing
  \nom you will \yesm con -- quer ev -- 'ry hill
  And though the path is rock -- y
  you stum -- ble now and then
  you have the strength in -- side your -- self to rise and start a -- gain.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  _ And when you keep on climb -- ing
  though some -- times you may stop
  The view just keeps im -- prov -- ing
  as you ap -- proach the top
  Up -- lift -- ed from the sha -- dows
  in -- to a day that's bright
  The world for you so \nom bright -- ly \yesm glows
  when you re -- ceive the light!
  Per-
  _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  haps you'll ne -- ver get there
  just keep on try -- ing 'till
  The light of love sur -- rounds you
  and lifts you high -- er still.
}
  
wordsSingle = \lyricmode {
  \set stanza = "1."
  When you walk the dark -- ened val -- leys
  and no -- thing can go right
  When you've lost your in -- spir -- a -- tion
  and your mood is dark as night
  Just put your best foot for -- ward
  just trust up -- on God's will
  for if you keep on climb -- ing
  you will con -- quer ev -- 'ry hill
  And though the path is rock -- y
  you stum -- ble now and then
  you have the strength in -- side your -- self to rise and start a -- gain.

  \set stanza = "2."
  And when you keep on climb -- ing
  though some -- times you may stop
  The view just keeps im -- prov -- ing
  as you ap -- proach the top
  Up -- lift -- ed from the sha -- dows
  in -- to a day that's bright
  The world for you so bright -- ly glows
  when you re -- ceive the light!
  Per -- haps you'll ne -- ver get there
  just keep on try -- ing 'till
  The light of love sur -- rounds you
  and lifts you high -- er still.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "When " "you " "walk " "the " dark "ened " val "leys "
  "\nand " no "thing " "can " "go " "right "
  "\nWhen " "you've " "lost " "your " in spir a "tion "
  "\nand " "your " "mood " "is " "dark " "as " "night "
  "\nJust " "put " "your " "best " "foot " for "ward "
  "\njust " "trust " up "on " "God's " "will "
  "\nfor " "if " "you " "keep " "on " climb "ing "
  "\nyou " "will " con "quer " ev "'ry " "hill "
  "\nAnd " "though " "the " "path " "is " rock "y "
  "\nyou " stum "ble " "now " "and " "then "
  "\nyou " "have " "the " "strength " in "side " your "self " "to " "rise " "and " "start " a "gain.\n"

  \set stanza = "2."
  "\nAnd " "when " "you " "keep " "on " climb "ing "
  "\nthough " some "times " "you " "may " "stop "
  "\nThe " "view " "just " "keeps " im prov "ing "
  "\nas " "you " ap "proach " "the " "top "
  "\nUp" lift "ed " "from " "the " sha "dows "
  "\nin" "to " "a " "day " "that's " "bright "
  "\nThe " "world " "for " "you " "so " bright "ly " "glows "
  "\nwhen " "you " re "ceive " "the " "light! "
  "\nPer" "haps " "you'll " ne "ver " "get " "there "
  "\njust " "keep " "on " try "ing " "'till "
  "\nThe " "light " "of " "love " sur "rounds " "you "
  "\nand " "lifts " "you " high "er " "still. "
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = midi
  }
  \score {
%    \articulate
    <<
%      \new ChordNames \ChordTrack
      \new ChoirStaff <<
                                % Soprano staff
        \new Staff = soprano
        <<
          \new Voice { \unfoldRepeats \RehearsalTrack }
          \new Voice { \unfoldRepeats \TempoTrack     }
          \new Voice { \global \sopranoSingle \bar "|." }
          \addlyrics \wordsMidi
        >>
                                % Alto staff
        \new Staff = alto
        <<
          \new Voice { \global \altoSingle \bar "|." }
        >>
                                % Tenor staff
        \new Staff = tenor
        <<
          \clef "treble_8"
          \new Voice { \global \tenorSingle }
        >>
                                % Bass staff
        \new Staff = bass
        <<
          \clef "bass"
          \new Voice { \global \bassSingle }
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

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    <<
      \new ChordNames \ChordTrack
      \new ChoirStaff <<
                                % Joint soprano/alto staff
        \new Staff = women
        <<
          \new Voice \RehearsalTrack
          \new Voice \TempoTrack
          \new NullVoice = "aligner" \soprano
          \new Voice { \global \vo \soprano \bar "|." }
          \addlyrics \wordsOne
          \addlyrics \wordsTwo
          \new Voice { \global \vt \alto }
        >>
                                % Joint tenor/bass staff
        \new Staff = men
        <<
          \clef "bass"
          \new Voice { \global \vo \tenor }
          \new Voice { \global \vt \bass }
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
        voltaSpannerDuration = \musicLength 1
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

singlescore = {
  <<
    \new ChordNames \unfoldRepeats \ChordTrack
    \new ChoirStaff <<
                                % Joint soprano/alto staff
      \new Staff = women \with { printPartCombineTexts = ##f }
      <<
        \new Voice { \unfoldRepeats \RehearsalTrack }
        \new Voice { \unfoldRepeats \TempoTrack }
        \new Voice {\vo \sopranoSingle}
        \addlyrics \wordsSingle
        \new Voice {\vt \altoSingle}
      >>
                                % Joint tenor/bass staff
      \new Staff = men \with { printPartCombineTexts = ##f }
      <<
        \clef "bass"
        \new Voice {\vo \tenorSingle}
        \new Voice {\vt \bassSingle}
      >>
    >>
  >>
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    \singlescore
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
        voltaSpannerDuration = \musicLength 1
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
  }
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
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
        voltaSpannerDuration = \musicLength 1
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
    output-suffix = singlepage-sep
  }
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
    <<
      \new ChordNames \unfoldRepeats \ChordTrack
      \new ChoirStaff <<
                                % Soprano staff
        \new Staff = soprano
        <<
          \new Voice { \unfoldRepeats \RehearsalTrack }
          \new Voice { \unfoldRepeats \TempoTrack }
          \new Voice \sopranoSingle
          \addlyrics \wordsSingle
        >>
                                % Alto staff
        \new Staff = alto
        <<
          \new Voice \altoSingle
          \addlyrics \wordsSingle
        >>
                                % Tenor staff
        \new Staff = men
        <<
          \clef "treble_8"
          \new Voice \tenorSingle
          \addlyrics \wordsSingle
        >>
                                % Bass staff
        \new Staff = bass
        <<
          \clef "bass"
          \new Voice \bassSingle
          \addlyrics \wordsSingle
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
        voltaSpannerDuration = \musicLength 1
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
  }
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
    <<
%      \new ChordNames \unfoldRepeats \ChordTrack
      \new ChoirStaff <<
                                % Soprano staff
        \new Staff = soprano
        <<
          \new Voice { \unfoldRepeats \RehearsalTrack }
          \new Voice { \unfoldRepeats \TempoTrack }
          \new Voice \sopranoSingle
          \addlyrics \wordsSingle
        >>
                                % Alto staff
        \new Staff = alto
        <<
          \magnifyStaff #4/7
          \new Voice \altoSingle
          \addlyrics {\tiny \wordsSingle}
        >>
                                % Tenor staff
        \new Staff = men
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Voice \tenorSingle
          \addlyrics {\tiny \wordsSingle}
        >>
                                % Bass staff
        \new Staff = bass
        <<
          \magnifyStaff #4/7
          \clef "bass"
          \new Voice \bassSingle
          \addlyrics {\tiny \wordsSingle}
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
        voltaSpannerDuration = \musicLength 1
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
  }
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
    <<
%      \new ChordNames \unfoldRepeats \ChordTrack
      \new ChoirStaff <<
                                % Soprano staff
        \new Staff = soprano
        <<
          \magnifyStaff #4/7
          \new Voice { \unfoldRepeats \RehearsalTrack }
          \new Voice { \unfoldRepeats \TempoTrack }
          \new Voice \sopranoSingle
          \addlyrics {\tiny \wordsSingle}
        >>
                                % Alto staff
        \new Staff = alto
        <<
          \new Voice \altoSingle
          \addlyrics \wordsSingle
        >>
                                % Tenor staff
        \new Staff = men
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Voice \tenorSingle
          \addlyrics {\tiny \wordsSingle}
        >>
                                % Bass staff
        \new Staff = bass
        <<
          \magnifyStaff #4/7
          \clef "bass"
          \new Voice \bassSingle
          \addlyrics {\tiny \wordsSingle}
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
        voltaSpannerDuration = \musicLength 1
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
    output-suffix = singlepage-tenor
  }
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
    <<
%      \new ChordNames \unfoldRepeats \ChordTrack
      \new ChoirStaff <<
                                % Soprano staff
        \new Staff = soprano
        <<
          \magnifyStaff #4/7
          \new Voice { \unfoldRepeats \RehearsalTrack }
          \new Voice { \unfoldRepeats \TempoTrack }
          \new Voice \sopranoSingle
          \addlyrics {\tiny \wordsSingle}
        >>
                                % Alto staff
        \new Staff = alto
        <<
          \magnifyStaff #4/7
          \new Voice \altoSingle
          \addlyrics {\tiny \wordsSingle}
        >>
                                % Tenor staff
        \new Staff = men
        <<
          \clef "treble_8"
          \new Voice \tenorSingle
          \addlyrics \wordsSingle
        >>
                                % Bass staff
        \new Staff = bass
        <<
          \magnifyStaff #4/7
          \clef "bass"
          \new Voice \bassSingle
          \addlyrics {\tiny \wordsSingle}
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
        voltaSpannerDuration = \musicLength 1
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
    output-suffix = singlepage-bass
  }
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
    <<
%      \new ChordNames \unfoldRepeats \ChordTrack
      \new ChoirStaff <<
                                % Soprano staff
        \new Staff = soprano
        <<
          \magnifyStaff #4/7
          \new Voice { \unfoldRepeats \RehearsalTrack }
          \new Voice { \unfoldRepeats \TempoTrack }
          \new Voice \sopranoSingle
          \addlyrics {\tiny \wordsSingle}
        >>
                                % Alto staff
        \new Staff = alto
        <<
          \magnifyStaff #4/7
          \new Voice \altoSingle
          \addlyrics {\tiny \wordsSingle}
        >>
                                % Tenor staff
        \new Staff = men
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Voice \tenorSingle
          \addlyrics {\tiny \wordsSingle}
        >>
                                % Bass staff
        \new Staff = bass
        <<
          \clef "bass"
          \new Voice \bassSingle
          \addlyrics \wordsSingle
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
        voltaSpannerDuration = \musicLength 1
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
