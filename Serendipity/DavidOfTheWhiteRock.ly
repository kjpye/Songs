\version "2.25.13"

\include "kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "David of the White Rock"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Welsh Air"
  arranger    = "Arr. by H. A. C."
%  opus        = "opus"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

verses = 2

global = {
  \key g \major
  \time 3/4
  \tempo 4=80
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box "A" } s2.*5
  \textMark \markup { \box "B" } s2.*5
  \textMark \markup { \box "C" } s2.*6
}

soprano = \relative {
  \autoBeamOff
  e'8[b'] a[g] fis[e]
  e4 dis e
  b8[dis] fis[a] g[fis]
  \tag #'dash {\slurDashed g2(fis4) \slurSolid}
  \tag #'v2   {            g2(fis4)           }
  \tag #'v1   {            g2 fis4            }
  e4 e' d
  c4 b8[a] b4 % B
  g4 b8[a] g[fis]
  g2.
  g4 b8[g] d'[g,]
  a4 g8[fis] e[dis]
  e8[fis] g[e] a8.[g16] % C
  g4(fis) fis
  e8[g] b[g'] fis[e]
  b8[a] g[fis] g4
  fis8.[g16] e4 dis
  e2.
}

alto = \relative {
  \autoBeamOff
  b4 e b
  b4 b b
  b4 b dis
  \tag #'dash {\slurDashed e2(d4) \slurSolid}
  \tag #'v2   {            e2(d4)           }
  \tag #'v1   {            e2 d4            }
  c4 fis g
  a4 fis d % B
  e4 e d
  d4(b c)
  d4 d d
  d4 d b
  b4 b a % C
  b4(dis) dis
  e4 g b
  dis,4 dis e
  c4 b b
  b2.
}

tenor = \relative {
  \autoBeamOff
  g4 b b
  a4 a g
  fis4 fis b
  \tag #'dash {\slurDashed b2(b8[a]) \slurSolid}
  \tag #'v2   {            b2(b8[a])           }
  \tag #'v1   {            b2 b8[a]            }
  g4 a d
  e4 d8[c] b4 % B
  b4 d8[c] b[a]
  b4(g a)
  b4 b g
  fis4 a fis
  e4 e e % C
  e4(b') b
  b4 b b
  b4 b b
  a4 g fis
  g2.
}

bass = \relative {
  \autoBeamOff
  e4 e g
  fis4 fis e
  dis4 dis b
  \tag #'dash {\slurDashed e2(b4) \slurSolid}
  \tag #'v2   {            e2(b4)           }
  \tag #'v1   {            e2 b4            }
  c4 c b
  a4 d g % B
  e4 c d
  g2.
  g4 g b,
  d4 d a
  g4 g c % C
  b2 a'4
  g4 e g
  fis4 b, e
  a,4 b b
  e2.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Bring me, said Da -- vid, the harp I a -- \nom dore,
  I \yesm long, ere death calls me, to play it once more __
  Help me to reach my be -- lov'd strings a -- gain, __
  On wid -- ow and child -- ren, God's bless -- ing re -- main.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Last night I heard a kind an -- gel thus say, __
  "\"Da" -- vid, fly home on the wings of thy "lay,\"" __
  Harp of my youth, and thy mus -- ic, a -- dieu, __
  Oh, wid -- ow and child -- ren, God's bless -- ing on you.
}
  
wordsSingle = \lyricmode {
  \set stanza = "1."
  Bring me, said Da -- vid, the harp I a -- dore,
  I long, ere death calls me, to play it once more __
  Help me to reach my be -- lov'd strings a -- gain, __
  On wid -- ow and child -- ren, God's bless -- ing re -- main.
  \set stanza = "2."
  Last night I heard a kind an -- gel thus say, __
  "\"Da" -- vid, fly home on the wings of thy "lay,\"" __
  Harp of my youth, and thy mus -- ic, a -- dieu, __
  Oh, wid -- ow and child -- ren, God's bless -- ing on you.
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "Bring " "me, " "said " Da "vid, " "the " "harp " "I " a \set ignoreMelismata = ##t "dore, "
  "\nI " \unset ignoreMelismata "long, " "ere " "death " "calls " "me, " "to " "play " "it " "once " "more "
  "\nHelp " "me " "to " "reach " "my " be "lov'd " "strings " a "gain, "
  "\nOn " wid "ow " "and " child "ren, " "God's " bless "ing " re "main.\n"
  \set stanza = "2."
  "\nLast " "night " "I " "heard " "a " "kind " an "gel " "thus " "say, "
  "\n\"Da" "vid, " "fly " "home " "on " "the " "wings " "of " "thy " "lay,\" "
  "\nHarp " "of " "my " "youth, " "and " "thy " mus "ic, " a "dieu, "
  "\nOh, " wid "ow " "and " child "ren, " "God's " bless "ing " "on " "you. "
}
  
#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      \new ChoirStaff <<
                                % Joint soprano/alto staff
        \new Staff = women <<
          \new Voice \RehearsalTrack
          \new Voice { \global \voiceOne \keepWithTag #'dash \soprano \bar "|." }
          \new Voice { \global \voiceTwo \keepWithTag #`dash \alto    }
          \addlyrics \wordsOne
          \addlyrics \wordsTwo
        >>
                                % Joint tenor/bass staff
        \new Staff = men <<
          \clef "bass"
          \new Voice { \global \voiceOne \keepWithTag #'dash \tenor }
          \new Voice { \global \voiceTwo \keepWithTag #'dash \bass  }
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
  \bookOutputSuffix "single"
  \score {
%    \articulate
    <<
      \new ChoirStaff <<
                                % Joint soprano/alto staff
        \new Staff = women <<
          \new Voice { \RehearsalTrack \RehearsalTrack }
          \new Voice { \global \voiceOne \keepWithTag #'v1 \soprano \section \break \keepWithTag #'v2 \soprano \bar "|." }
          \new Voice { \global \voiceTwo \keepWithTag #'v1 \alto    \keepWithTag #'v2 \alto    }
          \addlyrics \wordsSingle
        >>
                                % Joint tenor/bass staff
        \new Staff = men <<
          \clef "bass"
          \new Voice { \global \voiceOne \keepWithTag #'v1 \tenor \keepWithTag #'v2 \tenor }
          \new Voice { \global \voiceTwo \keepWithTag #'v1 \bass  \keepWithTag #'v2 \bass  }
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
%    \articulate
    <<
      \new ChoirStaff <<
                                % Joint soprano/alto staff
        \new Staff = women <<
          \new Voice { \RehearsalTrack \RehearsalTrack }
          \new Voice { \global \voiceOne \keepWithTag #'v1 \soprano \section \break \keepWithTag #'v2 \soprano \bar "|." }
          \new Voice { \global \voiceTwo \keepWithTag #'v1 \alto    \keepWithTag #'v2 \alto    }
          \addlyrics \wordsSingle
        >>
                                % Joint tenor/bass staff
        \new Staff = men <<
          \clef "bass"
          \new Voice { \global \voiceOne \keepWithTag #'v1 \tenor \keepWithTag #'v2 \tenor }
          \new Voice { \global \voiceTwo \keepWithTag #'v1 \bass  \keepWithTag #'v2 \bass  }
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
  \bookOutputSuffix "singlepage-sep"
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
      \new ChoirStaff <<
                                % Soprano staff
        \new Staff = soprano <<
          \new Voice { \RehearsalTrack \RehearsalTrack }
          \new Voice { \global
                       \voiceOne \keepWithTag #'v1 \soprano
                       \section \break
                       \keepWithTag #'v2 \soprano
                       \bar "|." }
          \addlyrics \wordsSingle
        >>
                                % Alto staff
        \new Staff = alto <<
          \new Voice { \global
                                   \voiceOne \keepWithTag #'v1 \alto
                                   \keepWithTag #'v2 \alto }
          \addlyrics \wordsSingle
        >>
                                % Tenor staff
        \new Staff = tenor <<
          \clef "treble_8"
          \new Voice { \global \voiceOne \keepWithTag #'v1 \tenor \keepWithTag #'v2 \tenor }
          \addlyrics \wordsSingle
        >>
                                % Joint tenor/bass staff
        \new Staff = bass <<
          \clef "bass"
          \new Voice { \global \voiceTwo \keepWithTag #'v1 \bass  \keepWithTag #'v2 \bass  }
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
  \bookOutputSuffix "singlepage-sop"
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
      \new ChoirStaff <<
                                % Soprano staff
        \new Staff = soprano <<
          \new Voice { \RehearsalTrack \RehearsalTrack }
          \new Voice { \global
                       \voiceOne \keepWithTag #'v1 \soprano
                       \section \break
                       \keepWithTag #'v2 \soprano
                       \bar "|." }
          \addlyrics \wordsSingle
        >>
                                % Alto staff
        \new Staff = alto <<
          \magnifyStaff #4/7
          \new Voice { \global
                                   \voiceOne \keepWithTag #'v1 \alto
                                   \keepWithTag #'v2 \alto }
          \addlyrics {\tiny \wordsSingle}
        >>
                                % Tenor staff
        \new Staff = tenor <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Voice { \global \voiceOne \keepWithTag #'v1 \tenor \keepWithTag #'v2 \tenor }
          \addlyrics {\tiny \wordsSingle}
        >>
                                % Bass staff
        \new Staff = bass <<
          \magnifyStaff #4/7
          \clef "bass"
          \new Voice { \global \voiceTwo \keepWithTag #'v1 \bass  \keepWithTag #'v2 \bass  }
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
  \bookOutputSuffix "singlepage-alto"
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
      \new ChoirStaff <<
                                % Soprano staff
        \new Staff = soprano <<
          \magnifyStaff #4/7
          \new Voice { \RehearsalTrack \RehearsalTrack }
          \new Voice { \global
                       \voiceOne \keepWithTag #'v1 \soprano
                       \section \break
                       \keepWithTag #'v2 \soprano
                       \bar "|." }
          \addlyrics {\tiny \wordsSingle}
        >>
                                % Alto staff
        \new Staff = alto <<
          \new Voice { \global
                       \voiceOne \keepWithTag #'v1 \alto
                       \keepWithTag #'v2 \alto }
          \addlyrics \wordsSingle
        >>
                                % Tenor staff
        \new Staff = tenor <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Voice { \global \voiceOne \keepWithTag #'v1 \tenor \keepWithTag #'v2 \tenor }
          \addlyrics {\tiny \wordsSingle}
        >>
                                % Bass staff
        \new Staff = bass <<
          \magnifyStaff #4/7
          \clef "bass"
          \new Voice { \global \voiceTwo \keepWithTag #'v1 \bass  \keepWithTag #'v2 \bass  }
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
  \bookOutputSuffix "singlepage-tenor"
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
      \new ChoirStaff <<
                                % Soprano staff
        \new Staff = soprano <<
          \magnifyStaff #4/7
          \new Voice { \RehearsalTrack \RehearsalTrack }
          \new Voice { \global
                       \voiceOne \keepWithTag #'v1 \soprano
                       \section \break
                       \keepWithTag #'v2 \soprano
                       \bar "|." }
          \addlyrics {\tiny \wordsSingle}
        >>
                                % Alto staff
        \new Staff = alto <<
          \magnifyStaff #4/7
          \new Voice { \global
                                   \voiceOne \keepWithTag #'v1 \alto
                                   \keepWithTag #'v2 \alto }
          \addlyrics {\tiny \wordsSingle}
        >>
                                % Tenor staff
        \new Staff = tenor <<
          \clef "treble_8"
          \new Voice { \global \voiceOne \keepWithTag #'v1 \tenor \keepWithTag #'v2 \tenor }
          \addlyrics \wordsSingle
        >>
                                % Bass staff
        \new Staff = bass <<
          \magnifyStaff #4/7
          \clef "bass"
          \new Voice { \global \voiceTwo \keepWithTag #'v1 \bass  \keepWithTag #'v2 \bass  }
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
  \bookOutputSuffix "singlepage-bass"
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
      \new ChoirStaff <<
                                % Soprano staff
        \new Staff = soprano <<
          \magnifyStaff #4/7
          \new Voice { \RehearsalTrack \RehearsalTrack }
          \new Voice { \global
                       \voiceOne \keepWithTag #'v1 \soprano
                       \section \break
                       \keepWithTag #'v2 \soprano
                       \bar "|." }
          \addlyrics {\tiny \wordsSingle}
        >>
                                % Alto staff
        \new Staff = alto <<
          \magnifyStaff #4/7
          \new Voice { \global
                                   \voiceOne \keepWithTag #'v1 \alto
                                   \keepWithTag #'v2 \alto }
          \addlyrics {\tiny \wordsSingle}
        >>
                                % Tenor staff
        \new Staff = tenor <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Voice { \global \voiceOne \keepWithTag #'v1 \tenor \keepWithTag #'v2 \tenor }
          \addlyrics {\tiny \wordsSingle}
        >>
                                % Bass staff
        \new Staff = bass <<
          \clef "bass"
          \new Voice { \global \voiceTwo \keepWithTag #'v1 \bass  \keepWithTag #'v2 \bass  }
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
  \bookOutputSuffix "midi"
  \score {
%    \articulate
    <<
      \new ChoirStaff <<
                                % Soprano staff
        \new Staff = soprano <<
          \new Voice { \RehearsalTrack \RehearsalTrack }
          \new Voice { \global
                       \voiceOne \keepWithTag #'v1 \soprano
                       \keepWithTag #'v2 \soprano
                       \bar "|."
                     }
          \addlyrics \wordsMidi
        >>
                                % Alto staff
        \new Staff = alto <<
          \new Voice = "alto"    { \global
                                   \voiceTwo \keepWithTag #'v1 \alto
                                   \keepWithTag #'v2 \alto
                                 }
        >>
                                % Tenor staff
        \new Staff = tenor <<
          \new Voice { \global
                       \voiceOne \keepWithTag #'v1 \tenor
                       \keepWithTag #'v2 \tenor
                     }
        >>
                                % Bass staff
        \new Staff = bass <<
          \new Voice { \global
                       \voiceTwo \keepWithTag #'v1 \bass
                       \keepWithTag #'v2 \bass
                     }
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
