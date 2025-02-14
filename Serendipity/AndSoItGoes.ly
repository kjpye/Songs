\version "2.25.24"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "And So It Goes"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Billy Joel"
  arranger    = "Arr. Kirby Shaw"
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
  \key d \major
  \time 3/4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \once \set Score.tempoHideNote = ##f
  \tempo "Unhurried, with much rubato" 4=60
  s2.*18 | s2 | s2. | s4 \tempo 4=10 s8 \tempo 4=60 s4. |
  s2. | s2 | s2. | s4 \tempo 4=10 s8 \tempo 4=50 s4. |
  s2.*4 | s2 \tempo 4=50 s4 | \tempo 4=25 s2 \tempo 4=50 s8 \tempo 4=60 s |
  s2.*7 | s2 | s2. | s4 \tempo 4=10 s8 \tempo 4=60 s4. |
  s2. | s2 | s2. | s4 \tempo 4=10 s8 \tempo 4=60 s4. |
  s2.*4 | s2 \tempo 4=50 s4 | \tempo 4=25 s2 \tempo 4=50 s8 \tempo 4=60 s |
  s2.*7 | \tempo 4=25 s2 \tempo 4=60 s4 | \tempo 4=50 s2. | \tempo 4=25 s2. |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "3a" } s2.*3
  \textMark \markup { \box "3b" } s2.*3
  \textMark \markup { \box "3c" } s2.*3
  \textMark \markup { \box "4a" } s2.*3
  \textMark \markup { \box "4b" } s2.*3
  \textMark \markup { \box "4c" } s2.*3
  \textMark \markup { \box "4d" } s2 s2.*2
  \textMark \markup { \box "5a" } s2. s2 s2.
  \textMark \markup { \box "5b" } s2.*3
  \textMark \markup { \box "5c" } s2.*3
  \textMark \markup { \box "5d" } s2.*4
  \textMark \markup { \box "6a" } s2.*4
  \textMark \markup { \box "6b" } s2 s2.*2
  \textMark \markup { \box "6c" } s2. s2 s2.
  \textMark \markup { \box "6d" } s2.*3
  \textMark \markup { \box "7a" } s2.*3
  \textMark \markup { \box "7b" } s2.*3
  \textMark \markup { \box "7c" } s2.*4
  \textMark \markup { \box "7d" } s2.*4
}


dynamicsVocal = {
  \override DynamicTextSpanner.style = #'none
  s4. s4.\mf | s2.*8 |
  s2.*9 | s2 s2.*2 | % 4
  s2. | s2 | s2.*6 | s2 s4-\markup\italic rit. | s2 s8 s-\markup\italic "a tempo" | s2. | s4. s-\markup\italic "unis. (opt. solo)" | s2. |
  s2.*2 | s4. s-\markup\italic All | s2. | s2 | s2.*3 | s2 | s2.*4 | % 6
  s2.*2 | s2 s4-\markup\italic rit. | s2 s8 s-\markup\italic "a tempo" | s2. | s4. s-\markup\italic "unis. (opt. solo)" | s2.*3 | s4. s-\markup\italic All | s2.*2 | s2.^\markup\italic "rit. e dim." | s2.\p |
}

soprano = \relative {
  \global
  r4 r8 d' fis a | b4. a8 b8. a16 | fis2 r8 e |
  fis8. e16 fis a8. 8. fis16 | e4 r8 d fis a | b4. a8 b16 a8. |
  fis2 r8 e | fis a8 8. fis32(e) d8. 16 | d4 r8 d fis a |
  b4. a8 b8. a16 | fis2 r8 e | fis8. e16 fis8 a8 8. fis16 | % 4a
  e4 r8 d fis16 a8. | b4~8 a b a | fis2 r8 e |
  fis8 a8 8. fis32(e) d8. 16 | 4 r8 d fis a | d4~8 b a8. g16 |
  \time 2/4 a4 r8 g \time 3/4 | fis8 b b fis e8. d16 | e4~8\fermata d fis a |
  d4~8 b a g16 a~ | \time 2/4 a4 r8 g \time 3/4 | fis b cis d cis8. b16 | % 5a
  a4~8\fermata d, fis a | b a4 r8 b8. a16 | fis2 r8 e |
  fis8 e16 fis~8 a8 8. fis16  |e4 r8 d fis a | b4~8 a b8. a16 |
  \tag #'joint {
    fis2\fermata r8 e | fis8 a8 8. fis32(e) d8. 16 | 4 r8 \ov d (fis a | b4. a8 b8. a16 |
    fis2) r8 e( | fis a8) 8.(fis32 e d8.) 16 | 4 \vo r8 8 fis a | d4~8 b a8. g16 | % 6a
  }
  \tag #'single {
    fis2\fermata r8 e | fis8 a8 8. fis32(e) d8. 16 | 4 r8 d (fis a | b4. a8 b8. a16 |
    fis2) r8 e( | fis a8) 8.(fis32 e d8.) 16 | 4 r8 8 fis a | d4~8 b a8. g16 | % 6a
  }
  \time 2/4 a4 r8 g \time 3/4 | fis b16 16~8. fis16 e8 d | e4~8\fermata d fis a |
  d8~4 b8 a g16 a~ | \time 2/4 4 r8 g \time 3/4 | fis8. b16 cis8 d cis8. b16 |
  a4~8\fermata d, fis a | b4. a8 b8. a16 | fis2 r8 e |
  fis8 e16 fis~8 b a8. fis16 | e4 r8 d fis a | b4~8 a b a | % 7a
  \tag #'joint {
    fis2\fermata r8 e | fis a8 8. fis32(e) d8. 16 | 4 r8 \ov d(fis a |
    b4. a8 b8. a16 | fis2) r8 e( | fis e fis a8) 8.(fis16 | e4) r8 \vo d  fis a |
  }
  \tag #'single {
    fis2\fermata r8 e | fis a8 8. fis32(e) d8. 16 | 4 r8 d(fis a |
    b4. a8 b8. a16 | fis2) r8 e( | fis e fis a8) 8.(fis16 | e4) r8 d  fis a |
  }
  d4~8 b a8. g16 | a2\fermata r8 g | fis8. a16 8. fis32(e) d8. 16 | 2.\fermata |
  \bar "|."
}

words = \lyricmode {
  In ev -- ’ry heart there is a room, __
  a sanc -- tu -- ar -- y safe and strong.
  To heal the wounds __ from lov -- ers past, __
  un -- til a new one __ comes a -- long.
  I spoke to you in cau -- tious tones; __
  you an -- swered me with no pre -- tense.
  And still I feel __ I said too much. __
  My si -- lence is my __ self de -- fense.
  And ev -- ’ry time __ I’ve held a rose
  it seems I on -- ly felt the thorns. __
  And so it goes, __ and so it goes, __
  and so will you soon I sup -- pose. __
  But if my si -- lence made you leave, __
  then that would be __ my worst mis -- take.
  So I will share __ this room with you. __
  And you can have this __ heart to break.
  Hm. __ hm __ "(h)" __ "(h)" __ "(h)"
  And this is why __ my eyes are closed,
  it’s just as well __ for all I've seen. __
  And so it goes, __ and so it goes, __
  and you’re the on -- ly one who knows, __
  So I would choose to be with you. __
  That’s if the choice __ were mine to make.
  But you can make __ de -- ci -- sions too. __
  And you can have this __ heart to break.
  Hm __ hm __ "(h)"
  And so it goes, __ and so it goes,
  and you’re the on -- ly __ one who knows.
}

wordsMidi = \lyricmode {
  "In " ev "’ry " "heart " "there " "is " "a " "room, " 
  "\na " sanc tu ar "y " "safe " "and " "strong. "
  "\nTo " "heal " "the " "wounds "  "from " lov "ers " "past, " 
  "\nun" "til " "a " "new " "one "  "comes " a "long. "
  "\nI " "spoke " "to " "you " "in " cau "tious " "tones; " 
  "\nyou " an "swered " "me " "with " "no " pre "tense. "
  "\nAnd " "still " "I " "feel "  "I " "said " "too " "much. " 
  "\nMy " si "lence " "is " "my "  "self " de "fense. "
  "\nAnd " ev "’ry " "time "  "I’ve " "held " "a " "rose "
  "\nit " "seems " "I " on "ly " "felt " "the " "thorns. " 
  "\nAnd " "so " "it " "goes, "  "and " "so " "it " "goes, " 
  "\nand " "so " "will " "you " "soon " "I " sup "pose. " 
  "\nBut " "if " "my " si "lence " "made " "you " "leave, " 
  "\nthen " "that " "would " "be "  "my " "worst " mis "take. "
  "\nSo " "I " "will " "share "  "this " "room " "with " "you. " 
  "\nAnd " "you " "can " "have " "this "  "heart " "to " "break. "
  "\nHm. "  "hm "  "(h) "  "(h) "  "(h) "
  "\nAnd " "this " "is " "why "  "my " "eyes " "are " "closed, "
  "\nit’s " "just " "as " "well "  "for " "all " "I've " "seen. " 
  "\nAnd " "so " "it " "goes, "  "and " "so " "it " "goes, " 
  "\nand " "you’re " "the " on "ly " "one " "who " "knows, " 
  "\nSo " "I " "would " "choose " "to " "be " "with " "you. " 
  "\nThat’s " "if " "the " "choice "  "were " "mine " "to " "make. "
  "\nBut " "you " "can " "make "  de ci "sions " "too. " 
  "\nAnd " "you " "can " "have " "this "  "heart " "to " "break. "
  "\nHm "  "hm "  "(h) "
  "\nAnd " "so " "it " "goes, "  "and " "so " "it " "goes, "
  "\nand " "you’re " "the " on "ly "  "one " "who " "knows. "
}

alto = \relative {
  \global
  r4 r8 d' d <cis d> | d4. 8 8. cis16 | 4(b) r8 e |
  d8. e16 d16 8. 8. 16 | cis4 r8 d d <cis d> | d4. 8 16 e8. |
  e4(d) r8 e | d d d8. 16 b8. 16 | a4 r8 d d <cis d> |
  d4. 8 8. cis16 | cis4(b) r8 e | d8. e16 d8 8 8. 16 | % 4a
  cis4 r8 d8 16 <cis d>8. | d4~8 8 8 e | e4(d) r8 e |
  d8 8 8. 16 b8. 16 | a4 r8 d d d | fis4~8 8 d8. 16 |
  \time 2/4 d4 r8 d \time 3/4 | d d d d b8. 16 | d4(cis8\fermata) d d d |
  fis4~8 8 d8 16 16~ | \time 2/4 4 r8 d \time 3/4 | d d d d e8. 16 | % 5a
  e4~8\fermata d d <cis d> | d8 4 r8 d8. cis16 | 4(b) r8 e |
  d8 e16 d~8 8 8. 16 | cis4 r8 d d <cis d> | d4~8 8 8. e16 |
  \tag #'joint {
    e4(d\fermata) r8 e | d8 8 8. 16 b8. 16 | a4 r8 \hideNotes d8 fis a | b4. a8 b8. a16 |
    fis2 r8 e | fis a8 8. fis32 e d8. 16 | d4 \unHideNotes r8 d d d | fis4~8 8 d8. 16 | % 6a
  }
  \tag #'single {
    e4(d\fermata) r8 e | d8 8 8. 16 b8. 16 | a4 r8 d8(fis a | b4. a8 b8. a16 |
    fis2) r8 e( | fis a8) 8.(fis32 e d8.) 16 | d4 r8 d d d | fis4~8 8 d8. 16 | % 6a
  }
  \time 2/4 d4 r8 d \time 3/4 | d8 16 16~8. 16 b8 8 | d4(cis8\fermata) d d d |
  fis4~8 8 d8 16 16~ | \time 2/4 4 r8 d \time 3/4 | 8. 16 8 8 e8. 16 |
  e4~8 d d <cis d> | d4. 8 8. cis16 | 4(b) r8 e |
  d8 e16 d~8 8 8. 16 | cis4 r8 d d <cis d> | d4~8 8 8 e | % 7a
  \tag #'joint {
    e4(d\fermata) r8 e | d8 8 8. 16 b8. 16 | a4 r8 \hideNotes d fis a |
    b4. a8 b8. a16 | fis2 r8 e | fis e fis a8 8. fis16 | e4 \unHideNotes r8 d d d |
  }
  \tag #'single {
    e4(d\fermata) r8 e | d8 8 8. 16 b8. 16 | a4 r8 d(fis a |
    b4. a8 b8. a16 | fis2) r8 e( | fis e fis a8) 8.(fis16 | e4) r8 d d d |
  }
  fis4~8 8 d8. 16 | d2\fermata r8 d | 8. 16 8. 16 b8. 16 | a2. |
  \bar "|."
}

tenor = \relative {
  \global
  r4 r8 fis a a | g4. a8 g8. e16 | 4(d) r8 a' |
  a8. 16 16 8. b8. 16 | a4 r8 fis a a | 4(g8) a b16 cis8. |
  cis4(b) r8 a | a a b8. 16 g8. 16 | fis4 r8 fis a a |
  g4. a8 g8. e16 | 4(d) r8 a' | 8. 16 8 8 b8. 16 | % 4a
  a4 r8 fis a16 8. | 4(g8) a b cis | 4(b) r8 a |
  a8 8 b8. 16 g8. 16 | fis4 r8 8 a fis | a4~8 8 g8. 16 |
  \time 2/4 g4 r8 e \time 3/4 | fis8 8 8 8 e8. 16 | 4(a8\fermata) fis a fis |
  a4~8 8 g8 16 16~ | \time 2/4 4 r8 e \time 3/4 | fis8 8 8 8 gis8. b16 | % 5a
  d4(cis8\fermata) fis, a a | g a4 r8 g8. e16 | 4(d) r8 a' |
  a8 16 16~8 8 b8. 16 | a4 r8 fis a a | 4(g8) a b8. c16 |
  \tag #'joint {
    cis4(b\fermata) r8 a | a a b8. 16 g8. 16 | fis4 r8 \ov d (fis a | b4. a8 b8. a16 |
    fis2) r8 e( | fis a8) 8.(fis16 d8.) 16 | 4 \vo r8 fis a fis | a4~8 8 g8. 16 | % 6a
  }
  \tag #'single {
    cis4(b\fermata) r8 a | a a b8. 16 g8. 16 | fis4 r8 d (fis a | b4. a8 b8. a16 |
    fis2) r8 e( | fis a8) 8.(fis16 d8.) 16 | 4 r8 fis a fis | a4~8 8 g8. 16 | % 6a
  }
  \time 2/4 g4 r8 e \time 3/4 | fis8 16 16~8. 16 e8 e | 4(a8\fermata) fis a fis |
  a4~8 8 g8 16 16~ | \time 2/4 4 r8 e \time 3/4 | fis8. 16 8 8 gis8. b16 |
  d4(cis8\fermata) fis, a a | g4. a8 g8. e16 | 4(d) r8 a' |
  a8 16 16~8 8 b8. 16 | a4 r8 fis a a | 4(g8) a b cis | % 7a
  \tag #'joint {
    cis4(b\fermata) r8 a | a a b8. 16 g8. 16 | fis4 r8 \ov d(fis a |
    b4. a8 b8. a16 | fis2) r8 e( | fis e fis a8) 8.(fis16 | e4) \vo r8 fis a fis |
  }
  \tag #'single {
    cis'4(b\fermata) r8 a | a a b8. 16 g8. 16 | fis4 r8 d(fis a |
    b4. a8 b8. a16 | fis2) r8 e( | fis e fis a8) 8.(fis16 | e4) r8 fis a fis |
  }
  a4~8 8 g8. 16 | 2\fermata r8 e | a8. 16 b8. 16 g8. 16 | fis2.\fermata |
  \bar "|."
}

bass = \relative {
  \global
  r4 r8 d d fis, | g4. fis8 g8. a16 | b2 r8 cis |
  d8. cis16 d fis,8. g8. b16 | a4 r8 d d fis, | g4. fis8 g16 a8. |
  b2 r8 cis | d fis, g8. b16 a8. 16 | d4 r8 d d fis, |
  g4. fis8 g8. a16 | b2 r8 cis | d8. cis16 d8 fis, g8. b16 | % 4a
  a4 r8 d8 16 fis,8. | g4. fis8 g a | b2 r8 cis |
  d8 fis, g8. b16 a8. 16 | d4 r8 8 8 8 | c4~8 8 b8. 16 |
  \time 2/4 bes4 r8 8 \time 3/4 | a8 8 b b gis8. 16 | a4~8 d d d |
  c4~8 8 b8 16 bes16~ | \time 2/4 4 r8 bes8 \time 3/4 | a8 a b b e8. gis,16 | % 5a
  a4~8\fermata d d fis, | g fis4 r8 g8. a16 | b2 r8 cis |
  d8 cis16 d~8 fis, g8. b16 | a4 r8 d d fis, | g4~8 fis g8. a16 |
  \tag #'joint {
    b2\fermata r8 cis | d fis, g8. b16 a8. 16 | d4 r8 \hideNotes 8 fis a | b4. a8 b8. a16 |
    fis2 r8 e | fis a8 8. fis32 e d8. 16 | 4 r8 \unHideNotes 8 8 8 | c4~8 8 b8. 16 | % 6a
  }
  \tag #'single {
    b2\fermata r8 cis | d fis, g8. b16 a8. 16 | d4 r8 8(fis a | b4. a8 b8. a16 |
    fis2) r8 e( | fis a8) 8.(fis32 e d8.) 16 | 4 r8 8 8 8 | c4~8 8 b8. 16 | % 6a
  }
  \time 2/4 bes4 r8 8 \time 3/4 | a8 16  b~8. 16 gis8 8 | a4~8\fermata d d d |
  c4~8 8 b8 16 bes~ | \time 2/4 4 r8 bes \time 3/4 | a8. 16 b8 8 e8. gis,16 |
  a4~8\fermata d d fis, | g4. fis8 g8. a16 | b2 r8 cis |
  d8 cis16 d~8 fis, g8. b16 | a4 r8 d d fis, | g4~8 fis g a | % 7a
  \tag #'joint {
    b2\fermata r8 cis | f fis, g8. b16 a8. 16 | d4 r8 \hideNotes d fis a |
    b4. a8 b8.  a16 | fis2 r8 e8 | fis e fis a8 8. fis16 | e4 r8 \unHideNotes d d d |
  }
  \tag #'single {
    b2\fermata r8 cis | f fis, g8. b16 a8. 16 | d4 r8 d(fis a |
    b4. a8 b8.  a16 | fis2) r8 e8( | fis e fis a8) 8.(fis16 | e4) r8 d d d |
  }
  c4~8 8 b8. 16 | bes2\fermata r8 bes | a8. fis16 g8. b16 a8. 16 | <d, d'>2.\fermata |
  \bar "|."
}

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            \accidentalStyle Score.modern
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = women} \dynamicsVocal
            \new Voice {\vo \keepWithTag #'joint \soprano}
            \new Voice {\vt \keepWithTag #'joint \alto}
%            \new Voice \partCombine \soprano \alto
            \new NullVoice { \keepWithTag #'joint \soprano }
            \addlyrics \words
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            \accidentalStyle Score.modern
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsVocal
            \new Voice {\vo \keepWithTag #'joint \tenor}
            \new Voice {\vt \keepWithTag #'joint \bass}
%            \new Voice \partCombine \tenor \bass
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

#(set-global-staff-size 17)

\book {
  \paper {
    output-suffix = single-sep
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
  }
  \score {
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
            \new Voice \keepWithTag #'single \soprano
            \addlyrics \words
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
            \new Voice \keepWithTag #'single \alto
            \addlyrics \words
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVocal
            \new Voice \keepWithTag #'single \tenor
            \addlyrics \words
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVocal
            \new Voice \keepWithTag #'single \bass
            \addlyrics \words
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
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
            \new Voice \keepWithTag #'single \soprano
            \addlyrics \words
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsVocal
            \new Voice \keepWithTag #'single \alto
%            \addlyrics {\tiny \words}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsVocal
            \new Voice \keepWithTag #'single \tenor
%            \addlyrics {\tiny \words}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsVocal
            \new Voice \keepWithTag #'single \bass
%            \addlyrics {\tiny \words}
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
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsVocal
            \new Voice \keepWithTag #'single \soprano
%            \addlyrics {\tiny \words}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
            \new Voice \keepWithTag #'single \alto
            \addlyrics \words
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsVocal
            \new Voice \keepWithTag #'single \tenor
%            \addlyrics {\tiny \words}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsVocal
            \new Voice \keepWithTag #'single \bass
%            \addlyrics {\tiny \words}
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
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsVocal
            \new Voice \keepWithTag #'single \soprano
%            \addlyrics {\tiny \words}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsVocal
            \new Voice \keepWithTag #'single \alto
%            \addlyrics {\tiny \words}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVocal
            \new Voice \keepWithTag #'single \tenor
            \addlyrics \words
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsVocal
            \new Voice \keepWithTag #'single \bass
%            \addlyrics {\tiny \words}
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
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsVocal
            \new Voice \keepWithTag #'single \soprano
%            \addlyrics {\tiny \words}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsVocal
            \new Voice \keepWithTag #'single \alto
%            \addlyrics {\tiny \words}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsVocal
            \new Voice \keepWithTag #'single \tenor
%            \addlyrics {\tiny \words}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVocal
            \new Voice \keepWithTag #'single \bass
            \addlyrics \words
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
    output-suffix = midi
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
            \new Voice \keepWithTag #'single \soprano
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
            \new Voice \keepWithTag #'single \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVocal
            \new Voice \keepWithTag #'single \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVocal
            \new Voice \keepWithTag #'single \bass
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
