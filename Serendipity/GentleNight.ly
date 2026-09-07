\version "2.27.2"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Gentle Night"
  subtitle    = "Air by Martini"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Evelyn Wales"
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
  \key f \major
  \time 6/8
}

TempoTrack = {
  \tempo 4=120
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1b" } s2.*4
  \textMark \markup { \box "2a" } s2.*4
  \textMark \markup { \box "2b" } s2.*4
  \textMark \markup { \box "2c" } s2.*6
  \textMark \markup { \box "3a" } s2.*4
  \textMark \markup { \box "3b" } s2.*5
  \textMark \markup { \box "3c" } s2.*5
  \textMark \markup { \box "4a" } s2.*4
  \textMark \markup { \box "4b" } s2.*4
  \textMark \markup { \box "4c" } s2.*5
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
}

soprano = \relative {
  \global
  R2. | r4. r4 c'8 | f4. g | a~4 8 |
  bes4 8 a(g) a | g4. r4 c,8 | d4. e | f8 g a d, g bes |
  a4. g | f r4 8 | c'4. d | c8 d e f e d | % 2a
  c4. bes4 8 | a4. r4 8 | b4. c4 cis8 | d4 e8 f e d |
  c4. b4 8 | c2. | R2.*4 \section \key aes \major |
  aes8 8 8 4 8 | g4. 4 8 | aes4 8 bes4 aes8 | g4. r4 g8 | % 3a
  aes4. bes | c8(bes) c des(ees) f | c4. bes4 r8 | R2. | bes4. 8(c) des |
  ees2. | bes8 8 8 8(d) des | ees4(c8) aes4 r8 | 4. g4 e8 | f4.~8 r c' |
  bes4 8 aes(f) aes | 4. g8 r \section \key f \major c, | f4. g | a4.~8 r a | % 4a
  bes4 8 a(g) a | g4. r4 c,8 | d4. e | f8 g a d, g bes |
  a4.(g4) e8 | f4. r4 g8 | a4.^\dim c | <<{\vt c2.\omit\p~c} \new Voice {\vo \tiny f2.~2.}>> |
  \bar "|."
}

wordsSop = \lyricmode {
  The moon looks down,
  The sil -- ver stars shine clear,
  The night wind car -- ries the note of a song -- bird near.
  The world, so rest -- less in day -- time, % 2a
  With sleep now is blest,
  And all Na -- ture, tired with play -- time,
  At last is at rest.
  Si -- lent the stream is gli -- ding, % 3a
  As ’neath some faër -- ie spell;
  All thought of sad -- ness now is end -- ed.
  O gen -- tle Night,
  Grant us thy peace for ev -- er,
  Bind us in dreams,
  Sweet dreams that nought shall sev -- er.
  The stars shine bright, % 4a
  The moon is calm on high,
  The night wind sighs to the earth
  A soft lul -- la -- by,
  A lul -- la -- by.
}

wordsSopMidi = \lyricmode {
  "The " "moon " "looks " "down, "
  "\nThe " sil "ver " "stars " "shine " "clear, "
  "\nThe " "night " "wind " car "ries " "the " "note " "of " "a " song "bird " "near. "
  "\nThe " "world, " "so " rest "less " "in " day "time, " % 2a
  "\nWith " "sleep " "now " "is " "blest, "
  "\nAnd " "all " Na "ture, " "tired " "with " play "time, "
  "\nAt " "last " "is " "at " "rest. "
  "\nSi" "lent " "the " "stream " "is " gli "ding, " % 3a
  "\nAs " "’neath " "some " faër "ie " "spell; "
  "\nAll " "thought " "of " sad "ness " "now " "is " end "ed. "
  "\nO " gen "tle " "Night, "
  "\nGrant " "us " "thy " "peace " "for " ev "er, "
  "\nBind " "us " "in " "dreams, "
  "\nSweet " "dreams " "that " "nought " "shall " sev "er. "
  "\nThe " "stars " "shine " "bright, " % 4a
  "\nThe " "moon " "is " "calm " "on " "high, "
  "\nThe " "night " "wind " "sighs " "to " "the " "earth "
  "\nA " "soft " lul la "by, "
  "\nA " lul la "by. "
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative {
  \global
  R2. | r4. r4 c'8 | f4. e | f4.~4 8 |
  g4 8 f(e) f | e4. r4 c8 | d4. c | 8 e f d d g |
  f4. e | f r4 8 | a4. bes | a8 bes c d c bes | % 2a
  a4. g4 8 | f4. r4 8 | g4. 4 8 | f4 g8 a g f |
  e4. d4 f8 | e2. | R2.*4 \section \key aes \major |
  f8 8 8 4 8 | e4. 4 8 | f4 8 g4 f8 | e4. r4 e8 | % 3a
  f4. g | aes8(g) aes f(aes) 8 | 4. g4 r8 | R2.*2 |
  aes4. g4 c,8 | ees2. | 4 aes8 c4 r8 | r4. bes | aes~8 r8 8 |
  g4 8 f(c) f | 4. e8 r \section \key f \major c | f4. e | f~8 r f | % 4a
  g4 8 f(e) f | e4. r4 c8 | d4. c | 8 e f d d g |
  f4.(e4) 8 | d4. r4 g8 | a4. gis | a2.~ | a |
}

wordsAlto = \lyricmode {
  The moon looks down,
  The sil -- ver stars shine clear,
  The night wind car -- ries the note of a song -- bird near.
  The world, so rest -- less in day -- time, % 2a
  With sleep now is blest,
  And all Na -- ture, tired with play -- time,
  At last is at rest.
  Si -- lent the stream is gli -- ding, % 3a
  As ’neath some faër -- ie spell;
  All thought of sad -- ness now is end -- ed.
  O gen -- tle Night,
  grant us peace in dreams,
  Sweet dreams that nought shall sev -- er.
  The stars shine bright, % 4a
  The moon is calm on high,
  The night wind sighs to the earth
  A soft lul -- la -- by,
  A lul -- la -- by.
}

wordsAltoMidi = \lyricmode {
  "The " "moon " "looks " "down, "
  "\nThe " sil "ver " "stars " "shine " "clear, "
  "\nThe " "night " "wind " car "ries " "the " "note " "of " "a " song "bird " "near. "
  "\nThe " "world, " "so " rest "less " "in " day "time, " % 2a
  "\nWith " "sleep " "now " "is " "blest, "
  "\nAnd " "all " Na "ture, " "tired " "with " play "time, "
  "\nAt " "last " "is " "at " "rest. "
  "\nSi" "lent " "the " "stream " "is " gli "ding, " % 3a
  "\nAs " "’neath " "some " faër "ie " "spell; "
  "\nAll " "thought " "of " sad "ness " "now " "is " end "ed. "
  "\nO " gen "tle " "Night, "
  "\ngrant " "us " "peace " "in " "dreams, "
  "\nSweet " "dreams " "that " "nought " "shall " sev "er. "
  "\nThe " "stars " "shine " "bright, " % 4a
  "\nThe " "moon " "is " "calm " "on " "high, "
  "\nThe " "night " "wind " "sighs " "to " "the " "earth "
  "\nA " "soft " lul la "by, "
  "\nA " lul la "by. "
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
}

tenor = \relative {
  \global
  R2. | r4. r4 c'8 | a4. bes | c4.~4 8 |
  c4 8 4 8 | 4. r4 8 | b4. bes | a8 bes c bes bes d |
  c4. bes | a r4 c8 | f4. f | 8 8 8 8 8 8 | % 2a
  f4. e4 8 | f4. r4 8 | d4. e4 8 | f4 e8 d e f |
  g4. f4 d8 | c2. | R2.*4 \section \key aes \major |
  c8 8 8 4 des8 | c4. 4 8 | 4 f8 fes(ees) des | c4. r4 8 | % 3a
  c4. des | ees8(des) c des4 8 | ees4. 4 r8 | R2. | g4. ees4 8 |
  c4. ees4 aes8 | g4. ees4 8 | 2. | r4. c | 4.~8 r f |
  e4 8 f4 c8 | 4. 8 r \section \key f \major c | a4. bes | c4.~8 r c | % 4a
  c4 8 4 8 | 4. r4 8 | b4. bes | aes8 bes c bes bes des |
  c4.~4 8 <<{\vo d4.} \new Voice {\vt a}>> \ov r4 des8 | c4. e | f2.~f |
}

wordsTenor = \lyricmode {
  The moon looks down,
  The sil -- ver stars shine clear,
  The night wind car -- ries the note of a song -- bird near.
  The world, so rest -- less in day -- time, % 2a
  With sleep now is blest,
  And all Na -- ture, tired with play -- time,
  At last is at rest.
  Si -- lent the stream is gli -- ding, % 3a
  As ’neath some faër -- ie spell;
  All thought of sad -- ness now is end -- ed.
  O gen -- tle Night, gen -- tle night,
  Grant us peace,
  In dreams,
  Sweet dreams that nought shall sev -- er.
  The stars shine bright, % 4a
  The moon is calm on high,
  The night wind sighs to the earth
  A soft lul -- la -- by,
  A lul -- la -- by.
}

wordsTenorMidi = \lyricmode {
  "The " "moon " "looks " "down, "
  "\nThe " sil "ver " "stars " "shine " "clear, "
  "\nThe " "night " "wind " car "ries " "the " "note " "of " "a " song "bird " "near. "
  "\nThe " "world, " "so " rest "less " "in " day "time, " % 2a
  "\nWith " "sleep " "now " "is " "blest, "
  "\nAnd " "all " Na "ture, " "tired " "with " play "time, "
  "\nAt " "last " "is " "at " "rest. "
  "\nSi" "lent " "the " "stream " "is " gli "ding, " % 3a
  "\nAs " "’neath " "some " faër "ie " "spell; "
  "\nAll " "thought " "of " sad "ness " "now " "is " end "ed. "
  "\nO " gen "tle " "Night, " gen "tle " "night, "
  "\nGrant " "us " "peace, "
  "\nIn " "dreams, "
  "\nSweet " "dreams " "that " "nought " "shall " sev "er. "
  "\nThe " "stars " "shine " "bright, " % 4a
  "\nThe " "moon " "is " "calm " "on " "high, "
  "\nThe " "night " "wind " "sighs " "to " "the " "earth "
  "\nA " "soft " lul la "by, "
  "\nA " lul la "by. "
}

pianoRHone = \relative {
  \global
  <c'' e>8. <bes d>16 <a c> <g bes> <f a>8 <g bes> <bes, e> |
  q8 <a f'>8 8 4 c8 |f a, c g' bes, e | a a, c f c f |
  bes8 c, e a c, f | g c, e g c c, | d g, b e g, c | f g a d, g bes | % 1b
  a8 c, f g bes, e | f a, c f c f | c' f, a d f, bes | c d e f e d | % 2a
  a8 c, f bes c, e | a c, f a f a | \vo b d, g c e, cis' | d4 e8 f e d |
  \ov c8 e, g b d, f | c' e, g c e g | <f aes>4.(<des f>4 <f aes>8 | % 2c
  <e g>2.) | <f, aes>4. <des f>4 <f aes>8 |
  \vo <e g>2. \section \key aes \major |
  \ov <f aes>4 aes8 a4 aes8 | <e g>4.~4 g8 | <f aes>4. <g bes>4 <f aes>8 | % 3a
  <e g>4.~4 g8 |
  aes8 c, f bes des, g | c bes c des ees f | c ees, aes bes ees, g | % 3b
  \vo c'4.(bes) \ov bes,4. 8 c des |
  ees2. | bes4. 8 c des | ees4 c8 aes4 r8 | 8 ees c g' ees c | f c f aes c aes | % 3c
  bes8 e, c aes' f c | aes' c aes <e g> r \section \key f \major c | % 4a
  f8 a, c g' bes, e | a a, c f c f |
  bes8 c, g' a c, f | g c, e g c c, | d g, b e g, c | % 4b
  f8 g a d, e bes' |
  a8 f c <e g>4. | a8 a, d f a bes | c a f <e gis>4. | % 4c
  a8 a, c f a c | f2.\fermata |
}

pianoRHtwo = \relative {
  \global \vt
  s2.*8 |
  s2.*6 | b'4. c8 e, g | a f g a g f | s2.*5 | r8 c d e f g | % 2
  s2.*7 | c'8 ees, aes bes ees, g | s2.*6 |
  s2.*13 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4.\mf s\> s s\! s2.*2 | s2.*4 |
  s2.*3 s4.\< s\> | s2.*3\! s4.\< s\! | s2.\> s4. s\< s s\> s s\! s2. s\< | % 2
  s2.\< s\> s4.\< s\> s\< s\> | s2.\! s\< s\> s\p\> s\< | s2.*5\! |
  s2.*10 s2.\dim s4-\markup\italic rit. s2\> s2.\pp |
}

pianoLHone = \relative {
  \global
  bes,8 bes'4 c,4 8 | f4 c8 f,4 r8 | f'4. c | f,2. |
  g'4. d | c2. | b4. bes | a8 g f bes4 g8 |
  c4. c, | f2. | \vo a'4. bes | a8 bes c d c bes | % 2a
  \ov a4. g | f2. | 4. e4 a8 | f4 e8 d e f |
  g4. g, | c2. \clef treble c'8 f aes b aes f | c e g c g e \clef bass | % 2c
  c,8 f aes b aes f | c2. \section \key aes \major |
  f,8 f' g aes bes b | c des c bes aes g | % 3a
  f8 c' f fes ees des | c des c bes aes g |
  f4. ees | aes8 g aes f ees des | \vo aes'4.(g) \clef treble aes'4. g | % 3b
  \ov \clef bass des,8 ees g bes g ees |
  c8 ees aes c aes ees | des ees g bes g ees | % 3c
  c8 ees aes c aes ees | bes4. bes' | aes,2. |
  g4. f | c'4. c'8 r \section \key f \major r | f,,4. c' | f2. | % 4a
  e4. f | c2. | b4. bes | a8 g f bes4 g8 |
  c4. bes' | d,4.~4 des8 | <c a'>4.(<c bes'>) | <f, c'>2.~ | <f c' a'> |
}

pianoLHtwo = \relative {
  \global \vt
  s2.*8 |
  s2.*2 | f2. f | s2.*10 | % 2
  s2.*6 | ees2. | ees' | s2.*6 |
  s2.*13 |
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
                                % Single soprano staff
          \new Staff = soprano \with {
%            instrumentName = #""
%            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
%            instrumentName = #"Alto"
%            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
%            instrumentName = #"Tenor"
%            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
        >>
        \new PianoStaff = piano <<
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-top
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
%            instrumentName = #"Soprano"
%            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
%            instrumentName = #"Alto"
%            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
%            instrumentName = #"Tenor"
%            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
        >>
        \new PianoStaff = piano <<
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-middle
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
%            instrumentName = #"Soprano"
%            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
%            instrumentName = #"Alto"
%            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
%            instrumentName = #"Tenor"
%            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
        >>
        \new PianoStaff = piano <<
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-bottom
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
%            instrumentName = #"Soprano"
%            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
%            instrumentName = #"Alto"
%            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
%            instrumentName = #"Tenor"
%            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
        >>
        \new PianoStaff = piano <<
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-bass
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
%            instrumentName = #"Soprano"
%            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
%            instrumentName = #"Alto"
%            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
%            instrumentName = #"Tenor"
%            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef bass
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \transpose c c, \tenor
            \addlyrics \wordsTenor
          >>
        >>
        \new PianoStaff = piano <<
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-top
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
                                % Single soprano staff
          \new Staff = soprano \with {
%            instrumentName = #"Soprano"
%            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
%            instrumentName = #"Alto"
%            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
%            instrumentName = #"Tenor"
%            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
        >>
        \new PianoStaff = piano <<
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-middle
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
                                % Single soprano staff
          \new Staff = soprano \with {
%            instrumentName = #"Soprano"
%            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
%            instrumentName = #"Alto"
%            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
%            instrumentName = #"Tenor"
%            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
        >>
        \new PianoStaff = piano <<
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-bottom
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
                                % Single soprano staff
          \new Staff = soprano \with {
%            instrumentName = #"Soprano"
%            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
%            instrumentName = #"Alto"
%            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
%            instrumentName = #"Tenor"
%            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
        >>
        \new PianoStaff = piano <<
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
      \context { \Lyrics
        autoExtenders = ##t
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
                                % Single soprano staff
          \new Staff = soprano \with {
%            instrumentName = #"Soprano"
%            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
%            instrumentName = #"Alto"
%            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
%            instrumentName = #"Tenor"
%            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef bass
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \transpose c c, \tenor
            \addlyrics \wordsTenor
          >>
        >>
        \new PianoStaff = piano <<
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi-top
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = top \with {
%            instrumentName = #"Soprano"
%            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = middle \with {
%            instrumentName = #"Alto"
%            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
%            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = bottom \with {
%            instrumentName = #"Tenor"
%            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianor \with {
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
    output-suffix = midi-middle
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = top \with {
%            instrumentName = #"Soprano"
%            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = middle \with {
%            instrumentName = #"Alto"
%            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = bottom \with {
%            instrumentName = #"Tenor"
%            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianor \with {
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
    output-suffix = midi-bottom
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = top \with {
%            instrumentName = #"Soprano"
%            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = middle \with {
%            instrumentName = #"Alto"
%            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
%            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = bottom \with {
%            instrumentName = #"Tenor"
%            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianor \with {
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
