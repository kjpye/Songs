\version "2.25.14"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Bush Night-Song"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "William G. James"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Richard Baylis"
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
  \tempo 4=90
  \set Score.tempoHideNote = ##t
  s2.*32
  \tempo 4=85 s2.*2 \tempo 4=90
  s2.*8
  s2 \tempo 4=80
  s2.
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1b" } s2.*4
  \textMark \markup { \box "2a" } s2.*4
  \textMark \markup { \box "2b" } s2.*4
  \textMark \markup { \box "3a" } s2.*4
  \textMark \markup { \box "3b" } s2.*5
  \textMark \markup { \box "4a" } s2.*4
  \textMark \markup { \box "4b" } s2.*5
  \textMark \markup { \box "5a" } s2.*5
  \textMark \markup { \box "5b" } s2.*5
}

sopranoI = \relative {
  \global
  R2.*5
  d''8^\p e d4 b^\> % 1b+
  a8 b a4(fis)\!
  d8 e d4^\< 4
  fis8 a a2\! % 2a
  d8^\p e d4 b
  cis8^\> d cis4(a)
  b2^\< g4\!
  e2.^\> % 2b
  d'8^\pp e d4 b^\>
  a8 b a4(fis)\!
  d8 e d4 e
  fis8 a8 4^\cresc(ais) % 3a
  b8 d d4. cis8
  d8^\< fis8 4(e)\! \breathe
  d2.--^\mp
  cis2.--^\> % 3b
  r4 b4--^\pp (bes--)
  a2.~^\>
  a4\! r r
  d8\omit\pp^\markup{\dynamic pp \italic "(sotto voce)"} e d4 b
  a8^\> b a4(fis)\! % 4a
  d8 e^\< d4 e
  fis8 a a2\!
  d8^\mp e d4 b
  cis8^\> d cis4(a\!) % 4b
  b2 g4
  <<{e2 s4 d'8^\ppp^\markup\bold "Poco meno mosso"} \new Voice {s4^\< s2^\> s8\!}>>
  e d4 b
  a8 b a4(fis)
  d8^\markup\bold "a tempo" e^\< d4 e % 5a
  fis8\! a a4^\cresc(ais)
  b8 d8 4. cis8
  d8^\< fis fis4(e) \breathe
  d2.\!--^\p
  cis2.--^\> % 5b
  r4\! b^\pp (d)
  fis2.~ ^\>
  fis2.~
  fis2 r4\!
  \bar "|."
}

wordsSopI = \lyricmode {
  Where the gol -- den wat -- tles rise, __
  Up in -- to the pur -- ple skies,
  Where the west wind soft -- ly sighs, __
  Cool and deep;
  Where the camp fire glim -- mers bright __
  Near the salt -- bush sil -- ver white, __
  Where the Cross gleams thro' the night. __
  Sleep, sleep, Oh! __ sleep! __

  Till the eas -- tern fires shall stain __
  grey and gold the track -- less plain.
  Till the bell -- bird wakes a -- gain, __
  Day shall peep;
  Slum -- ber till the night is done __
  Dream of goals that shall be won __
  With the ri -- sing of the sun, __
  Sleep! sleep! oh! __ sleep! __
}

wordsSopIMidi = \lyricmode {
  "Where " "the " gol "den " wat "tles " "rise, " 
  "\nUp " in "to " "the " pur "ple " "skies, "
  "\nWhere " "the " "west " "wind " soft "ly " "sighs, " 
  "\nCool " "and " "deep; "
  "\nWhere " "the " "camp " "fire " glim "mers " "bright " 
  "\nNear " "the " salt "bush " sil "ver " "white, " 
  "\nWhere " "the " "Cross " "gleams " "thro' " "the " "night. " 
  "\nSleep, " "sleep, " "Oh! "  "sleep!\n" 

  "\nTill " "the " eas "tern " "fires " "shall " "stain " 
  "\ngrey " "and " "gold " "the " track "less " "plain. "
  "\nTill " "the " bell "bird " "wakes " a "gain, " 
  "\nDay " "shall " "peep; "
  "\nSlum" "ber " "till " "the " "night " "is " "done " 
  "\nDream " "of " "goals " "that " "shall " "be " "won " 
  "\nWith " "the " ri "sing " "of " "the " "sun, " 
  "\nSleep! " "sleep! " "oh! "  "sleep! " 
}

sopranoII = \relative {
  \global
  R2.*5
  a'8^\p 8 4 fis^\> % 1b+
  fis8 8 4(cis)\!
  d8 e d4^\< 4
  d8 fis8 2\! % 2a
  fis8^\p 8 4 4
  a8^\> 8 4(fis)
  g2^\< (e4)\!
  b8^\> cis d4(e)\! % 2b
  fis8^\pp a8 4 fis^\>
  fis8 8 4(cis)\!
  d8 e d4 4
  d8 fis fis2^\cresc % 3a
  g8 8 fis4~8 e
  fis8^\< a gis2 \breathe
  a4^\pp (fis2
  a8 b a4 fis)\! % 3b
  d8^\ppp \( ( e) d4(e)
               fis2.^\> ~
               fis4\! \) r r
  d8\omit\pp^\markup{\dynamic pp \italic "(sotto voce)"} g a4 gis
  a8^\> e fis4(d\!) % 4a
  d8 e^\< d4 4
  d8 fis fis2\!
  fis8^\mp g a4 gis
  a8^\> gis a4(fis\!) % 4b
  g2 e4
  b8^\< (cis d4^\> e)
  fis8^\ppp g a4 gis
  a8 e fis4(d)
  d8 e^\< d4 4 % 5a
  d8\! fis8 2
  g8^\cresc 8 fis4~8 e
  fis8 a gis2 \breathe
  a4^\pp (fis2
  a8^\> b a4 fis\!) % 5b
  d8^\ppp (g b4 bes) \breathe a4^\<( d^\> a
  aes4^\< d^\> a
  a2) r4\!
  \bar "|."
}

words = \lyricmode {
  Where the gol -- den wat -- tles rise, __
  Up in -- to the pur -- ple skies,
  Where the west wind soft -- ly sighs, __
  Cool, __ cool and deep;
  Where the camp fire glim -- mers bright __
  Near the salt -- bush sil -- ver white, __
  Where the Cross gleams thro' the night. __
  \markup{Mm \italic "(closed lips)"} __ Sleep, __ Oh! sleep! __

  Till the eas -- tern fires shall stain __
  grey and gold the track -- less plain.
  Till the bell -- bird wakes a -- gain, __
  Day shall peep;
  Slum -- ber till the night is done __
  Dream of goals that shall be won __
  With the ri -- sing of the sun, __
  \markup{Mm \italic "(closed lips)"} __ Mm __ Mm __
}

wordsMidi = \lyricmode {
  "Where " "the " gol "den " wat "tles " "rise, " 
  "\nUp " in "to " "the " pur "ple " "skies, "
  "\nWhere " "the " "west " "wind " soft "ly " "sighs, " 
  "\nCool, "  "cool " "and " "deep; "
  "\nWhere " "the " "camp " "fire " glim "mers " "bright " 
  "\nNear " "the " salt "bush " sil "ver " "white, " 
  "\nWhere " "the " "Cross " "gleams " "thro' " "the " "night. " 
  "\nMm " "Sleep, " "Oh! " "sleep!\n"

  "\nTill " "the " eas "tern " "fires " "shall " "stain " 
  "\ngrey " "and " "gold " "the " track "less " "plain. "
  "\nTill " "the " bell "bird " "wakes " a "gain, " 
  "\nDay " "shall " "peep; "
  "\nSlum" "ber " "till " "the " "night " "is " "done " 
  "\nDream " "of " "goals " "that " "shall " "be " "won " 
  "\nWith " "the " ri "sing " "of " "the " "sun, " 
  "Mm " "Mm " "Mm"
}

alto = \relative {
  \global
  R2.*5
  fis'8^\p 8 4 d^\> % 1b
  cis8 8 4(a\!)
  b8 e bes4^\< 4
  a8 d8 2\! % 2a
  b8^\p 8 4 d
  fis8^\> 8 4(cis)
  b8^\< (cis d4 b\!)
  g8^\> a b4(cis) % 2b
  d8^\pp fis8 4 d^\>
  cis8 8 4(a\!)
  b8 8 bes4 4
  a8 d d4^\cresc(c) % 3a
  b8 8 ais4 4
  b8^\< 8 d2 \breathe
  fis8^\pp(e d4 b
  fis'2^\> a,4) % 3b
  b4^\ppp( \( g) g
              d'2.^\< ~
              d4 \) r\! r
  d8\omit\pp^\markup{\dynamic pp \italic "(sotto voce)"} cis b4 d
  c8^\> 8 d4(c\!) % 4a
  b8 8^\< bes4 4
  a8 d d4\!(cis)
  b8^\mp 8 4 d
  cis8^\> dis fis4(cis\!) % 4b
  b8(cis d4) b
  g8^\<(a b4^\> cis)
  d8^\ppp cis b4 d
  c8 8 d4(c)
  b8 8^\< bes4 4 % 5a
  a8\! d8 4(c)
  b8^\cresc 8 ais4 4
  b8 8 d2 \breathe
  fis8^\pp(e d4 b
  fis'2^\> a,4) % 5b
  b4^\ppp(d e) \breathe
  b8^\<( e d2^\> ~
  d8^\< e d2^\> ~
  d2\omit\ppp) r4
  \bar "|."
}

pianoRHone = \relative {
  \global
  <d'' fis a d>8(<e fis a e'> <d fis a d>4 <b d fis b>
  <a cis fis a>8 <b cis fis b> <a cis fis a>4 <fis a cis fis>)
  <d g b d>8( <e e'> <d g bes d>4 <e g bes e>
  <fis a d fis>8 <a a'> <a d fis a>2~
  q4) r r % 1b
  <d fis a d>8(<e fis a e'> <d fis a d>4 <b d fis b>
  <a cis fis a>8 <b cis fis b> <a cis fis a>4 <fis a cis fis>)
  <d g b d>8( <e e'> <d g bes d>4 <e g bes e>
  <fis a d fis>8 <a a'> <a d fis a>2) % 2a
  <d fis b d>8(<e fis b e> <d fis b d>4 <b d fis b>
  <cis fis a cis>8 <d fis a d> <cis fis a cis>4 <a cis fis a>)
  <b d g b>8( <cis g' cis> <b d g b>4 <g b e g>
  <e g e'>2.) % 2b
  <d' fis a d>8(<e fis a e'> <d fis a d>4 <b d fis d>
  <a cis fis a>8 <b cis fis b> <a cis fis a>4 <fis a cis fis>)
  <d g b d>8(<e e'> <d g bes d>4 <e g bes e>
  <fis a d fis>8 <a a'> <a d fis a>4 <ais d fis ais>) % 3a
  <b d g b>8( <d g b d> <d fis ais d>4. <cis fis a cis>8)
  <d fis b d>8( <fis b d fis> <fis gis b d fis>4 <e g b e>4) \breathe
  <d fis a f>8( <e fis a e'> <d fis a d>4 <b d fis b>
  <a cis fis a>8 <b cis fis b> <a cis fis a>4 <fis a cis fis>) % 3b
  <d g b d>8(<e e'> <d g b d>4 <e g bes e>
  <fis a d fis>8 <a a'> <a d fis a>2~
  q4) r r
  <a' d>8(<e b'> <d a'>4 <b fis' b>
  <a e' a>4 <fis c' fis>2) % 4a
  <d g b d>8(<e e'> <d g bes d>4 <e g bes e>
  <fis a d fis>8 <a a'> <a d fis a>2)
  <fis' d'>8 (<e b' e> <d a' d>4 <b f' b>)
  <eis a>8(<d eis> <a cis fis>2) % 4b
  <b d g b>8(<cis g' cis> <b d g b>4 <g b e g>
  <e g e'>2.)
  <a' d>8^\markup\bold "Poco meno mosso" (<e b'> <d a'>4 <b fis' b>
  <a e' a>4 <fis c' fis>2)
  <d g b d>8^\markup\bold "a tempo" (<e e'> <d g bes d>4 <e g b e> % 5a
  <fis a d fis>8 <a a'> <a d fis a>4 <ais d fis ais>)
  <b d g b>8(<d g b d> <d fis ais d>4. <cis fis a cis>8)
  <d fis b d>8(<fis b d fis> <fis gis b d fis>4 <e gis b e>) \breathe
  <d fis a d>8(<e fis a e'> <d fis a d>4 <b d fis b>
  <a cis fis a>8 <b cis fis b> <a cis fis a>4 <fis a cis fis>) % 5b
  <d g b d>8(<e e'> <d g b d>4 <e g bes e>
  <fis a d fis>8 <a a'> <a d fis a>2)
  <d fis ais d>8 (<fis fis'> <fis a d fis>2^\markup\bold rit.
  <a b d fis a>4) r r
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  s2.*12
  b'8 cis b4(a) % 2b
  s2.*18
  b8(cis b4 a) % 4b++
  s2.*12
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\pp-\>
  s2 s4\!
  s2.\<
  s4 s\! s\>
  s2 s4\! % 1b
  s2\pp s4\>
  s2 s4\!
  s4 s2\<
  s4 s2\! % 2a
  s2.\p
  s2.\>
  s2\< s4\!
  s2\> s4\! % 2b
  s2\pp s4\>
  s2 s4\!
  s2.
  s4 s2\cresc % 3a
  s2.
  s2\< s4\!
  s2.\pp^\markup\italic "colla voce"
  s2\> s4\! % 3b
  s4\ppp s2-\markup\italic "colla voce"
  s2.\>
  s8 s8\! s2
  s2.\pp
  s2.\> % 4a
  s2.\<
  s4 s2\!
  s2.\mp
  s2.\> % 4b
  s2.\!
  s4\< s2\>
  s2.\ppp
  s2.\>
  s8\! s\< s2 % 5a
  s8\! s\cresc s2
  s2.
  s4\< s2-\markup\italic "colla voce"
  s2.\>
  s2. % 5b
  s2.\omit\pp-\markup{\dynamic pp \italic "colla voce"}
  s2.\>
  s4\ppp s2\>
  s4 s2\!
}

pianoLH = \relative {
  \global \ov
  <d, d'>8_( a'' <d fis>4) a
  fis,8_( a' <cis fis>4) a
  g,8_(b bes'4) d,4~
  <d, d'>8_( a'' <d fis>4) a
  <d,, d'>8(a'' <d fis>4) a % 1b
  <d,, d'>8( a'' <d fis>4) a
  fis,8(a' <cis fis>4) a
  g,8(d' bes'4) d,~
  <d, d'>8(a'' <d fis>4) a % 2a
  b,8(fis' <d' fis>4 fis,
  fis,8a' <cis fis>4) fis,
  g,8(d' b'4) e,,
  a8_(e' d'4)(cis) % 2b
  <d,, d'>8(a'' <d fis>4) a
  fis,8(a' <cis fis>4) a
  g,8(d' bes'4) d,~
  <d, d'>8( a'' <d fis>4) c % 3a
  g,8([<b' d g>]) fis,(<ais' e' fis>4) <cis e gis a>8
  b,8([<b' d fis>]) fis,8(<gis' b d e>4) <b d fis ais>8
  a,8(a' <d fis>4) a
  fis,8(a' <cis fis>4) a % 3b
  fis,8(d' b'4) d,4~
  <d, d'>8(a'' <d fis>4) a
  <d,, d'>8(a'' <d fis>4) a \clef treble
  <d' fis>8(<g, cis> <f b>4 <d gis>
  <c fis>4) \clef bass <a d>4(<d,, d'>4) % 4a
  g8(d' bes'4) d,~
  <d, d'>8( a'' <d fis>4) a \clef treble
  <b' d>8( <g cis> <f b>4 <d gis>) \clef bass
  <cis b'>8(<b gis'> <a fis'>4)(<fis, fis'>) % 4b
  g8(d' b'4) e,,
  a8(e' d'4 cis) \clef treble
  <d' fis>8( <g, cis> <f b>4 <d gis>
  <c fis>4 \clef bass <a d>4) <d,, d'>
  g8( d' bes'4) d,~ % 5a
  <d, d'>8(a'' <d fis>4) c
  g,8([<b' d g>]) g,8(<ais' e' fis>4) <c e fis ais>8
  b,8([<b' d fis>]) e,,8(<gis' a d e>4) <b d e gis>8
      a,8( a' <d fis>4) a
      g,8(a' <cis fis>4) a % 5b
      g,8(d' b'4) d,~
      <d, d'>8(a'' <d fis>4) a
      d8([fis] \clef treble ais[fis] ais[d]~
      <d fis>4) \clef bass <d,,, d'> r
  \bar "|."
}

pedal = {
  \set Staff.pedalSustainStyle = #'mixed
  s2. \sustainOn
  s2. \sustainOff \sustainOn
  s2 \sustainOff \sustainOn s4 \sustainOff
  s2.\sustainOn
  \repeat unfold 13 {s2.\sustainOff\sustainOn}
  s4\sustainOff\sustainOn s2\sustainOff\sustainOn
  s4\sustainOff\sustainOn s2\sustainOff\sustainOn
  \repeat unfold 17 {s2.\sustainOff\sustainOn}
  s4\sustainOff\sustainOn s2\sustainOff\sustainOn
  s4\sustainOff\sustainOn s2\sustainOff\sustainOn
  \repeat unfold 5 {s2.\sustainOff\sustainOn}
  s2\sustainOff\sustainOn s4\sustainOff
}
      
#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = sopranoI \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"I"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics \wordsSopI
          >>
                                % Single soprano II staff
          \new Staff = sopII \with {
            instrumentName = #"Sop II"
            shortInstrumentName = #"II"
          }
          <<
            \new Voice \sopranoII
            \addlyrics \words
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \words
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
          \new Dynamics \pedal
        >>
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = sopranoI \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"I"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics \wordsSopI
          >>
                                % Single soprano II staff
          \new Staff = sopII \with {
            instrumentName = #"Sop II"
            shortInstrumentName = #"II"
          }
          <<
            \new Voice \sopranoII
            \addlyrics \words
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \words
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
          \new Dynamics \pedal
        >>
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
    output-suffix = "singlepage-sop1"
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = sopranoI \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"I"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics \wordsSopI
          >>
                                % Single soprano II staff
          \new Staff = sopII \with {
            instrumentName = #"Sop II"
            shortInstrumentName = #"II"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \sopranoII
            \addlyrics {\tiny \words}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \words}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
          \new Dynamics \pedal
        >>
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
    output-suffix = "singlepage-sop2"
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = sopranoI \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"I"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single soprano II staff
          \new Staff = sopII \with {
            instrumentName = #"Sop II"
            shortInstrumentName = #"II"
          }
          <<
            \new Voice \sopranoII
            \addlyrics \words
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \words}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
          \new Dynamics \pedal
        >>
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = sopranoI \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"I"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single soprano II staff
          \new Staff = sopII \with {
            instrumentName = #"Sop II"
            shortInstrumentName = #"II"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \sopranoII
            \addlyrics {\tiny \words}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \words
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
          \new Dynamics \pedal
        >>
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

\book {
  \paper {
    output-suffix = "midi-sop1"
  }
  \score {
%   \articulate
    <<
      \new ChoirStaff <<
                                % Single soprano I staff
        \new Staff = sopranoI \with {
          instrumentName = #"Soprano I"
          shortInstrumentName = #"I"
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \sopranoI
          \addlyrics \wordsSopIMidi
        >>
                                % Single soprano II staff
        \new Staff = sopII \with {
          instrumentName = #"Sop II"
          shortInstrumentName = #"II"
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \sopranoII
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \alto
        >>
      >>
      \new PianoStaff = piano <<
        \new Staff \with {
          midiInstrument = "acoustic grand piano"
        }
        <<
          \new Voice \pianoRHone
          \new Voice \pianoRHtwo
          \new Dynamics \dynamicsPiano
          \new Voice \pianoLH
          \new Dynamics \pedal
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
    output-suffix = midi
  }
  \score {
%   \articulate
    <<
      \new ChoirStaff <<
                                % Single soprano I staff
        \new Staff = sopranoI \with {
          instrumentName = #"Soprano I"
          shortInstrumentName = #"I"
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \sopranoI
        >>
                                % Single soprano II staff
        \new Staff = sopII \with {
          instrumentName = #"Sop II"
          shortInstrumentName = #"II"
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \sopranoII
          \addlyrics \wordsMidi
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \alto
        >>
      >>
      \new PianoStaff = piano <<
        \new Staff \with {
          midiInstrument = "acoustic grand piano"
        }
        <<
          \new Voice \pianoRHone
          \new Voice \pianoRHtwo
          \new Dynamics \dynamicsPiano
          \new Voice \pianoLH
          \new Dynamics \pedal
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
