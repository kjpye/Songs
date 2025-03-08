\version "2.25.24"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Be Still My Soul"
  subtitle    = "Finlandia"
  subsubtitle = "“Allan’s” version"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Jean Sibelius"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Katharina von Schlegel"
  meter       = "Tr. Jane Borthwick"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 4/4
}

TempoTrackA = {
  \tempo "Andante cantabile" 4=120
  \set Score.tempoHideNote = ##t
  s1*22 \tempo "rit." 4=110 s1*2
}

TempoTrackB = {
  \tempo "a tempo" 4=120
  \set Score.tempoHideNote = ##t
  s1*22 \tempo "rit." 4=110 s1*2
}

TempoTrackC = {
  \tempo "a tempo" 4=120
  \set Score.tempoHideNote = ##t
  s1*22 \tempo "rit." 4=110 s1*2
}

RehearsalTrackA = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" } s1*3
  \textMark \markup { \box "1b" } s1*5
  \textMark \markup { \box "2a" } s1*4
  \textMark \markup { \box "2b" } s1*4
  \textMark \markup { \box "3a" } s1*4
  \textMark \markup { \box "3b" } s1*4
}

RehearsalTrackB = {
  \textMark \markup { \box "4a" } s1*4
  \textMark \markup { \box "4b" } s1*4
  \textMark \markup { \box "5a" } s1*4
  \textMark \markup { \box "5b" } s1*4
  \textMark \markup { \box "6a" } s1*4
  \textMark \markup { \box "6b" } s1*4
}

dynamicsVocalA = {
  \override DynamicTextSpanner.style = #'none
  s4 s2.\p\< | s2.\> s4 \! s1 |
  s1 | s4 s2\< s4\! | s2.\> s4\! | s1*2 |
  s4 s2\< s4\! | s1\mf | s1*2 | % 2a
  s4 s2\> s4\! | s1 | s2.\< s4\! | s1 |
  s4 s2\< s4\! | s1\f | s1*2 | % 3a
  s4 s2\> s4\! | s1 | s2\< s4\> s\! | s1\p |
}

dynamicsVocalB = {
  \override DynamicTextSpanner.style = #'none
  s4 s2.\p\< | s2.\> s4 \! s1 |
  s1 | s4 s2\< s4\! | s2.\> s4\! | s1*2 |
  s4 s2\< s4\! | s1\f | s1*2 | % 2a
  s4 s2\> s4\! | s1 | s2.\< s4\! | s1 |
  s4 s2\< s4\! | s1\ff | s1*2 | % 3a
  s4 s2\> s4\! | s2. s4\< | s2 s4\> s\! | s1\p |
}

soprano = \relative {
  r4 c'' bes c | des2. c4 | bes c aes4. bes8 |
  bes4 c2.~ | 4 4 bes c | des2. c4 | bes c aes4. bes8 | c1~ |
  c4 ees-- ees-- ees-- | f2.-> c4 | c ees ees4. bes8 | 4 des2.~ | % 2a
  des4 4 c bes | c2. aes4 | 4 bes2 c4 | 1~ |
  c4 ees-- ees-- ees-- | f2.-> c4 | c ees ees4. bes8 | 4 des2.~ | % 3a
  des4 4 c bes | c2. aes4 | 4 bes2 aes4 | 1 \section |
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Be still, my soul: The Lord is al -- ways near thee; __
  Bear pa -- tient -- ly the cross of grief or pain. __
  Leave to thy God to com -- fort and to cheer thee, __
  In ev -- ’ry change He faith -- ful re -- mains. __
  Be still, my soul: thy heav’n -- ly Friend will steer thee __
  Through thorn -- y ways to His own do -- main.
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  Be still, my soul: thy God has un -- der -- tak -- en __
  To be thy guide, as al -- ways in the past. __
  Thy hope, thy love, let no -- thing ev -- er shak -- en: __
  All things un -- known shall be learned at last. __
  Be still, my soul: the winds and wa -- ters still know __
  He who ruled them while He dwelt be -- low.
  
}

wordsThree = \lyricmode {
  \set stanza = "3."
  Be still my soul: when dear -- est friends are tak -- en, __
  And all is dark with -- in the vale of tears; __
  Than shalt thou know He has not thee for -- sak -- en, __
  But comes to soothe the sor -- rows and fears. __
  Be still, my soul: thy God will al -- ways re -- pay __
  In His own time, all He takes a -- way.
}

wordsFour = \lyricmode {
  \set stanza = "4."
  Be still, my soul: the hour is fast ap -- proach -- ing __
  When we shall be for -- ev -- er with the Lord. __
  Then will our fears no long -- er be en -- croach -- ing, __
  Sor -- rows for -- got and our joy re -- stored. __
  Be still, my soul: when world -- ly troub -- les have passed, __
  All safe and blest, we shall meet at last.
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "Be " "still, " "my " "soul: " "The " "Lord " "is " al "ways " "near " "thee; " 
  "\nBear " pa tient "ly " "the " "cross " "of " "grief " "or " "pain. " 
  "\nLeave " "to " "thy " "God " "to " com "fort " "and " "to " "cheer " "thee, " 
  "\nIn " ev "’ry " "change " "He " faith "ful " re "mains. " 
  "\nBe " "still, " "my " "soul: " "thy " heav’n "ly " "Friend " "will " "steer " "thee " 
  "\nThrough " thorn "y " "ways " "to " "His " "own " do "main.\n"

  \set stanza = "2."
  "\nBe " "still, " "my " "soul: " "thy " "God " "has " un der tak "en " 
  "\nTo " "be " "thy " "guide, " "as " al "ways " "in " "the " "past. " 
  "\nThy " "hope, " "thy " "love, " "let " no "thing " ev "er " shak "en: " 
  "\nAll " "things " un "known " "shall " "be " "learned " "at " "last. " 
  "\nBe " "still, " "my " "soul: " "the " "winds " "and " wa "ters " "still " "know " 
  "\nHe " "who " "ruled " "them " "while " "He " "dwelt " be "low.\n"
  

  \set stanza = "3."
  "\nBe " "still " "my " "soul: " "when " dear "est " "friends " "are " tak "en, " 
  "\nAnd " "all " "is " "dark " with "in " "the " "vale " "of " "tears; " 
  "\nThan " "shalt " "thou " "know " "He " "has " "not " "thee " for sak "en, " 
  "\nBut " "comes " "to " "soothe " "the " sor "rows " "and " "fears. " 
  "\nBe " "still, " "my " "soul: " "thy " "God " "will " al "ways " re "pay " 
  "\nIn " "His " "own " "time, " "all " "He " "takes " a "way.\n"

  \set stanza = "4."
  "\nBe " "still, " "my " "soul: " "the " "hour " "is " "fast " ap proach "ing " 
  "\nWhen " "we " "shall " "be " for ev "er " "with " "the " "Lord. " 
  "\nThen " "will " "our " "fears " "no " long "er " "be " en croach "ing, " 
  "\nSor" "rows " for "got " "and " "our " "joy " re "stored. " 
  "\nBe " "still, " "my " "soul: " "when " world "ly " troub "les " "have " "passed, " 
  "\nAll " "safe " "and " "blest, " "we " "shall " "meet " "at " "last. "
}

wordsMidiOne = \lyricmode {
  \set stanza = "1."
  "Be " "still, " "my " "soul: " "The " "Lord " "is " al "ways " "near " "thee; " 
  "\nBear " pa tient "ly " "the " "cross " "of " "grief " "or " "pain. " 
  "\nLeave " "to " "thy " "God " "to " com "fort " "and " "to " "cheer " "thee, " 
  "\nIn " ev "’ry " "change " "He " faith "ful " re "mains. " 
  "\nBe " "still, " "my " "soul: " "thy " heav’n "ly " "Friend " "will " "steer " "thee " 
  "\nThrough " thorn "y " "ways " "to " "His " "own " do "main.\n"
}

wordsMidiTwo = \lyricmode {
  \set stanza = "2."
  "\nBe " "still, " "my " "soul: " "thy " "God " "has " un der tak "en " 
  "\nTo " "be " "thy " "guide, " "as " al "ways " "in " "the " "past. " 
  "\nThy " "hope, " "thy " "love, " "let " no "thing " ev "er " shak "en: " 
  "\nAll " "things " un "known " "shall " "be " "learned " "at " "last. " 
  "\nBe " "still, " "my " "soul: " "the " "winds " "and " wa "ters " "still " "know " 
  "\nHe " "who " "ruled " "them " "while " "He " "dwelt " be "low.\n"
}

wordsMidiThree = \lyricmode {
  \set stanza = "3."
  "\nBe " "still " "my " "soul: " "when " dear "est " "friends " "are " tak "en, " 
  "\nAnd " "all " "is " "dark " with "in " "the " "vale " "of " "tears; " 
  "\nThan " "shalt " "thou " "know " "He " "has " "not " "thee " for sak "en, " 
  "\nBut " "comes " "to " "soothe " "the " sor "rows " "and " "fears. " 
  "\nBe " "still, " "my " "soul: " "thy " "God " "will " al "ways " re "pay " 
  "\nIn " "His " "own " "time, " "all " "He " "takes " a "way.\n"
}

wordsMidiFour = \lyricmode {
  \set stanza = "4."
  "\nBe " "still, " "my " "soul: " "the " "hour " "is " "fast " ap proach "ing " 
  "\nWhen " "we " "shall " "be " for ev "er " "with " "the " "Lord. " 
  "\nThen " "will " "our " "fears " "no " long "er " "be " en croach "ing, " 
  "\nSor" "rows " for "got " "and " "our " "joy " re "stored. " 
  "\nBe " "still, " "my " "soul: " "when " world "ly " troub "les " "have " "passed, " 
  "\nAll " "safe " "and " "blest, " "we " "shall " "meet " "at " "last. "
}

alto = \relative {
  r4 aes' g aes | g2. aes4 | g aes f4. g8 |
  g4 ees2.~ | 4 aes g aes | g2. aes4 | g aes f4. g8 | ees1~ |
  ees4 ees-- aes-- aes-- | aes2.-> 4 | 4 g g4. 8 | 4 f2.~ | % 2a
  f4 des ees f | aes2. ees4 | f4 2 e4 | 1~ |
  e4 ees-- aes-- aes-- | 2.-> 4 | 4 g4 4. 8 | 4 f2.~ | % 3a
  f4 des ees f | aes2. ees4 | 4 des2 4 | c1 \section |
}

tenor = \relative {
  r4 ees' ees ees | 2. 4 | 4 4 des4. 8 |
  des4 c2.~ | 4 ees ees ees | 2. 4 | 4 4 des4. 8 | c1~ |
  c4 c-- c-- c-- | 2.-> 4 | aes4 4 4. bes8 | 4 2.~ | % 2a
  bes4 f a bes | ees2. c4 | d bes(g) g | c1~ |
  c4 c-- c-- c-- | 2.-> 4 | aes4 4 4. bes8 | 4 2.~ | % 3a
  bes4 f a bes | ees2. c4 | c aes(g) aes | 1 |
}

bass = \relative {
  r4 aes des c | bes2. aes4 | des4 c des4. bes8 |
  bes4 aes2.~ | 4 4 des c | bes2. aes4 | des4 c des4. bes8 | aes1~ |
  aes4 4-- 4-- g-- | f2.-> 4 | 4 c4 4. ees8 | 4 bes2.~ | % 2a
  bes4 4 c des | ees2. 4 | des4 2 c4 | 1~ |
  c4 aes'-- 4-- 4-- | f2.-> 4 | 4 c4 4. ees8 | 4 bes2.~ | % 3a
  bes4 4 c des | ees2. 4 | 4 2 4 | <<{aes,1} \new Voice {\tiny aes'}>> \section |
}

pianoRH = \relative {
  r4 <c' ees c'>4(<bes ees bes'> <c ees c'> |
  <des ees des'>2.) <c ees c'>4(
  <bes ees bes'>4 <c ees c'> <des f aes>4. <des ees bes'>8 |
  <des ees bes'>4 <c ees c'>2.~ | % 1b
  q4) q(<bes ees bes'> <c ees c'> |
  <des ees des'>2.) <c ees c'>4( |
  <bes des bes'>4 <c ees c'> <des f aes>4. <des ees bes'>8 |
  <c ees c'>1~ |
  q4) <ees aes c ees>-- q-- q-- | % 2a
  <f aes c f>2.-> <f aes c>4( |
  q4 <ees g ees'>4 4. <ees g bes>8 |
  q4 <des f des'>2.~ |
  q4) q( <ees f c'> <f bes> | % 2b
  <ees aes c>2.)  <c ees aes>4( |
  <des f aes>4~<f bes>2 <c e c'>4 |
  <c e c'>1~ |
  q4) <ees aes c ees>4 4 4 | % 3a
  <f aes c f>2.-> <f aes c>4( |
  q4 <ees g ees'>4 4. <ees g bes>8 |
  q4 <des f des'>2.~ |
  q4) q(<ees f c'> <f bes> | % 3b
  <ees aes c>2.) <c ees aes>4( |
  <c ees aes>4 <des ees bes'> q <aes des ees aes> |
  <aes c ees aes>1) \section |
}

dynamicsPianoA = {
  \override DynamicTextSpanner.style = #'none
  s1\p\< | s2.\> s4 \! s1 |
  s1 | s4 s2\< s4\! | s2.\> s4\! | s1*2 |
  s4 s2\< s4\! | s1\mf | s1*2 | % 2a
  s4 s2\> s4\! | s1 | s2.\< s4\! | s1 |
  s4 s2\< s4\! | s1\f | s1*2 | % 3a
  s4 s2\> s4\! | s1 | s4\< s\! s\> s\! | s1\p |
}

dynamicsPianoB = {
  \override DynamicTextSpanner.style = #'none
  s1\p\< | s2.\> s4 \! s1 |
  s1 | s4 s2\< s4\! | s2.\> s4\! | s1*2 |
  s4 s2\< s4\! | s1\f | s1*2 | % 2a
  s4 s2\> s4\! | s1 | s2.\< s4\! | s1 |
  s4 s2\< s4\! | s1\ff | s1*2 | % 3a
  s4 s2\> s4\! | s2. s4\< | s4 s\! s\> s\! | s1\p |
}

pianoLH = \relative {
  <aes,, aes'>4-- <aes' aes'> <des g> <c aes'> |
  <bes g'>2. <aes aes'>4 |
  <des g>4 <c aes'> <des aes'>4. <bes g'>8 |
  <bes g'>4 <aes aes'>2.~ | % 1b
  q4 4 <des g> <c aes'> |
  <bes g'>2. <aes aes'>4 |
  <des g>4 <c aes'> <des aes'>4. <bes g'>8 | <aes aes'>1~ |
  q4 <aes' c>-- q-- <g aes c>-- | % 2a
  <f aes c>2.-> 4 |
  q4 <c aes' c>4 4. <ees bes'>8 |
  q4 <bes f' bes>2.~( |
  q4) <bes f'> <c f a> <des f bes> | % 2b
  <ees aes c>2. <ees aes>4 |
  <<{\vo aes bes(g) g} \new Voice {\vt des4 2 c4}>> \ov |
  <c, c'>1~ |
  q4 <aes' ees' aes>-- q-- <g ees' g>-- | % 3a
  <f c' f>2.-> <f' aes c>4 |
  q4 <c aes' c>4 4. <ees bes'>8 |
  q4 <bes f' bes>2.~( |
  q4) <bes f'> <c f a> <des f bes> | % 3b
  <ees aes c>4 <ees,, ees'>2 <ees' ees'>4 |
  q4 <<{\vo aes'(g)} \new Voice {\vt ees2}>> \ov q4 |
  <aes,, aes'>1 \section |
}

#(set-global-staff-size 16)

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
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = dynsop} {\TempoTrackA \TempoTrackB}
            \new Dynamics = dynsop \with {alignAboveContext = soprano} {\dynamicsVocalA \dynamicsVocalB}
            \new Voice {\RehearsalTrackA \RehearsalTrackB}
            \new Voice {\global \soprano \soprano \bar "|."}
            \addlyrics {\wordsOne \wordsTwo}
            \addlyrics {\wordsThree \wordsFour}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} {\dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \alto \alto}
            \addlyrics {\wordsOne \wordsTwo}
            \addlyrics {\wordsThree \wordsFour}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \tenor \tenor}
            \addlyrics {\wordsOne \wordsTwo}
            \addlyrics {\wordsThree \wordsFour}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \bass \bass}
            \addlyrics {\wordsOne \wordsTwo}
            \addlyrics {\wordsThree \wordsFour}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice {\TempoTrackA \TempoTrackB}
            \new Voice {\global \repeat unfold 2 \pianoRH}
          >>
          \new Dynamics {\dynamicsPianoA \dynamicsPianoB}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice {\global \repeat unfold 2 \pianoLH}
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

#(set-global-staff-size 18)

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
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = dynsop} {\TempoTrackA \TempoTrackB \TempoTrackC \TempoTrackB}
            \new Dynamics = dynsop \with {alignAboveContext = soprano} {\dynamicsVocalA \dynamicsVocalB \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\RehearsalTrackA \RehearsalTrackB \RehearsalTrackA \RehearsalTrackB}
            \new Voice {\global \soprano \break \soprano \break \soprano \break \soprano \bar "|."}
            \addlyrics {\wordsOne \wordsTwo \wordsThree \wordsFour}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} {\dynamicsVocalA \dynamicsVocalB \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \alto \alto \alto \alto}
            \addlyrics {\wordsOne \wordsTwo \wordsThree \wordsFour}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\dynamicsVocalA \dynamicsVocalB \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \tenor \tenor \tenor \tenor}
            \addlyrics {\wordsOne \wordsTwo \wordsThree \wordsFour}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\dynamicsVocalA \dynamicsVocalB \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \bass \bass \bass \bass}
            \addlyrics {\wordsOne \wordsTwo \wordsThree \wordsFour}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice {\TempoTrackA \TempoTrackB \TempoTrackC \TempoTrackB}
            \new Voice {\global \repeat unfold 4 \pianoRH}
          >>
          \new Dynamics {\dynamicsPianoA \dynamicsPianoB \dynamicsPianoA \dynamicsPianoB}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice {\global \repeat unfold 4 \pianoLH}
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

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = "single134"
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = dynsop} {\TempoTrackA \TempoTrackC \TempoTrackB}
            \new Dynamics = dynsop \with {alignAboveContext = soprano} {\dynamicsVocalA \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\RehearsalTrackA \RehearsalTrackA \RehearsalTrackB}
            \new Voice {\global \soprano \break \soprano \break \soprano \bar "|."}
            \addlyrics {\wordsOne \wordsThree \wordsFour}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} {\dynamicsVocalA \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \alto \alto \alto}
            \addlyrics {\wordsOne \wordsThree \wordsFour}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\dynamicsVocalA \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \tenor \tenor \tenor}
            \addlyrics {\wordsOne \wordsThree \wordsFour}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\dynamicsVocalA \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \bass \bass \bass}
            \addlyrics {\wordsOne \wordsThree \wordsFour}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice {\TempoTrackA \TempoTrackC \TempoTrackB}
            \new Voice {\global \repeat unfold 3 \pianoRH}
          >>
          \new Dynamics {\dynamicsPianoA \dynamicsPianoA \dynamicsPianoB}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice {\global \repeat unfold 3 \pianoLH}
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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = dynsop} {\TempoTrackA \TempoTrackB \TempoTrackC \TempoTrackB}
            \new Dynamics = dynsop \with {alignAboveContext = soprano} {\dynamicsVocalA \dynamicsVocalB \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\RehearsalTrackA \RehearsalTrackB \RehearsalTrackA \RehearsalTrackB}
            \new Voice {\global \soprano \break \soprano \break \soprano \break \soprano \bar "|."}
            \addlyrics {\wordsOne \wordsTwo \wordsThree \wordsFour}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} {\dynamicsVocalA \dynamicsVocalB \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \alto \alto \alto \alto}
            \addlyrics {\wordsOne \wordsTwo \wordsThree \wordsFour}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\dynamicsVocalA \dynamicsVocalB \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \tenor \tenor \tenor \tenor}
            \addlyrics {\wordsOne \wordsTwo \wordsThree \wordsFour}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\dynamicsVocalA \dynamicsVocalB \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \bass \bass \bass \bass}
            \addlyrics {\wordsOne \wordsTwo \wordsThree \wordsFour}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice {\TempoTrackA \TempoTrackB \TempoTrackC \TempoTrackB}
            \new Voice {\global \repeat unfold 4 \pianoRH}
          >>
          \new Dynamics {\dynamicsPianoA \dynamicsPianoB \dynamicsPianoA \dynamicsPianoB}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice {\global \repeat unfold 4 \pianoLH}
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = dynsop} {\TempoTrackA \TempoTrackB \TempoTrackC \TempoTrackB}
            \new Dynamics = dynsop \with {alignAboveContext = soprano} {\dynamicsVocalA \dynamicsVocalB \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\RehearsalTrackA \RehearsalTrackB \RehearsalTrackA \RehearsalTrackB}
            \new Voice {\global \soprano \break \soprano \break \soprano \break \soprano \bar "|."}
            \addlyrics {\wordsOne \wordsTwo \wordsThree \wordsFour}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsVocalA \dynamicsVocalB \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \alto \alto \alto \alto}
            \addlyrics {\tiny \wordsOne \wordsTwo \wordsThree \wordsFour}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsVocalA \dynamicsVocalB \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \tenor \tenor \tenor \tenor}
            \addlyrics {\tiny \wordsOne \wordsTwo \wordsThree \wordsFour}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsVocalA \dynamicsVocalB \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \bass \bass \bass \bass}
            \addlyrics {\tiny \wordsOne \wordsTwo \wordsThree \wordsFour}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice {\TempoTrackA \TempoTrackB \TempoTrackC \TempoTrackB}
            \new Voice {\global \repeat unfold 4 \pianoRH}
          >>
          \new Dynamics {\teeny \dynamicsPianoA \dynamicsPianoB \dynamicsPianoA \dynamicsPianoB}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice {\global \repeat unfold 4 \pianoLH}
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = dynsop} {\TempoTrackA \TempoTrackB \TempoTrackC \TempoTrackB}
            \new Dynamics = dynsop \with {alignAboveContext = soprano} {\teeny \dynamicsVocalA \dynamicsVocalB \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\RehearsalTrackA \RehearsalTrackB \RehearsalTrackA \RehearsalTrackB}
            \new Voice {\global \soprano \break \soprano \break \soprano \break \soprano \bar "|."}
            \addlyrics {\tiny \wordsOne \wordsTwo \wordsThree \wordsFour}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} {\dynamicsVocalA \dynamicsVocalB \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \alto \alto \alto \alto}
            \addlyrics {\wordsOne \wordsTwo \wordsThree \wordsFour}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsVocalA \dynamicsVocalB \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \tenor \tenor \tenor \tenor}
            \addlyrics {\tiny \wordsOne \wordsTwo \wordsThree \wordsFour}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsVocalA \dynamicsVocalB \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \bass \bass \bass \bass}
            \addlyrics {\tiny \wordsOne \wordsTwo \wordsThree \wordsFour}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice {\TempoTrackA \TempoTrackB \TempoTrackC \TempoTrackB}
            \new Voice {\global \repeat unfold 4 \pianoRH}
          >>
          \new Dynamics {\teeny \dynamicsPianoA \dynamicsPianoB \dynamicsPianoA \dynamicsPianoB}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice {\global \repeat unfold 4 \pianoLH}
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = dynsop} {\TempoTrackA \TempoTrackB \TempoTrackC \TempoTrackB}
            \new Dynamics = dynsop \with {alignAboveContext = soprano} {\teeny \dynamicsVocalA \dynamicsVocalB \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\RehearsalTrackA \RehearsalTrackB \RehearsalTrackA \RehearsalTrackB}
            \new Voice {\global \soprano \break \soprano \break \soprano \break \soprano \bar "|."}
            \addlyrics {\tiny \wordsOne \wordsTwo \wordsThree \wordsFour}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsVocalA \dynamicsVocalB \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \alto \alto \alto \alto}
            \addlyrics {\tiny \wordsOne \wordsTwo \wordsThree \wordsFour}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\dynamicsVocalA \dynamicsVocalB \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \tenor \tenor \tenor \tenor}
            \addlyrics {\wordsOne \wordsTwo \wordsThree \wordsFour}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsVocalA \dynamicsVocalB \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \bass \bass \bass \bass}
            \addlyrics {\tiny \wordsOne \wordsTwo \wordsThree \wordsFour}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice {\TempoTrackA \TempoTrackB \TempoTrackC \TempoTrackB}
            \new Voice {\global \repeat unfold 4 \pianoRH}
          >>
          \new Dynamics {\teeny \dynamicsPianoA \dynamicsPianoB \dynamicsPianoA \dynamicsPianoB}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice {\global \repeat unfold 4 \pianoLH}
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = dynsop} {\TempoTrackA \TempoTrackB \TempoTrackC \TempoTrackB}
            \new Dynamics = dynsop \with {alignAboveContext = soprano} {\teeny \dynamicsVocalA \dynamicsVocalB \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\RehearsalTrackA \RehearsalTrackB \RehearsalTrackA \RehearsalTrackB}
            \new Voice {\global \soprano \break \soprano \break \soprano \break \soprano \bar "|."}
            \addlyrics {\tiny \wordsOne \wordsTwo \wordsThree \wordsFour}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsVocalA \dynamicsVocalB \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \alto \alto \alto \alto}
            \addlyrics {\tiny \wordsOne \wordsTwo \wordsThree \wordsFour}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsVocalA \dynamicsVocalB \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \tenor \tenor \tenor \tenor}
            \addlyrics {\tiny \wordsOne \wordsTwo \wordsThree \wordsFour}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\dynamicsVocalA \dynamicsVocalB \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \bass \bass \bass \bass}
            \addlyrics {\wordsOne \wordsTwo \wordsThree \wordsFour}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice {\TempoTrackA \TempoTrackB \TempoTrackC \TempoTrackB}
            \new Voice {\global \repeat unfold 4 \pianoRH}
          >>
          \new Dynamics {\teeny \dynamicsPianoA \dynamicsPianoB \dynamicsPianoA \dynamicsPianoB}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice {\global \repeat unfold 4 \pianoLH}
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
    output-suffix = "singlepage134"
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
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = dynsop} {\TempoTrackA \TempoTrackC \TempoTrackB}
            \new Dynamics = dynsop \with {alignAboveContext = soprano} {\dynamicsVocalA \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\RehearsalTrackA \RehearsalTrackA \RehearsalTrackB}
            \new Voice {\global \soprano \break \soprano \break \soprano \bar "|."}
            \addlyrics {\wordsOne \wordsThree \wordsFour}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} {\dynamicsVocalA \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \alto \alto \alto}
            \addlyrics {\wordsOne \wordsThree \wordsFour}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\dynamicsVocalA \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \tenor \tenor \tenor}
            \addlyrics {\wordsOne \wordsThree \wordsFour}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\dynamicsVocalA \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \bass \bass \bass}
            \addlyrics {\wordsOne \wordsThree \wordsFour}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice {\TempoTrackA \TempoTrackC \TempoTrackB}
            \new Voice {\global \repeat unfold 3 \pianoRH}
          >>
          \new Dynamics {\dynamicsPianoA \dynamicsPianoA \dynamicsPianoB}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice {\global \repeat unfold 3 \pianoLH}
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
    output-suffix = "singlepage134-sop"
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
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = dynsop} {\TempoTrackA \TempoTrackC \TempoTrackB}
            \new Dynamics = dynsop \with {alignAboveContext = soprano} {\dynamicsVocalA \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\RehearsalTrackA \RehearsalTrackA \RehearsalTrackB}
            \new Voice {\global \soprano \break \soprano \break \soprano \bar "|."}
            \addlyrics {\wordsOne \wordsThree \wordsFour}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsVocalA \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \alto \alto \alto}
            \addlyrics {\tiny \wordsOne \wordsThree \wordsFour}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsVocalA \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \tenor \tenor \tenor}
            \addlyrics {\tiny \wordsOne \wordsThree \wordsFour}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsVocalA \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \bass \bass \bass}
            \addlyrics {\tiny \wordsOne \wordsThree \wordsFour}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice {\TempoTrackA \TempoTrackC \TempoTrackB}
            \new Voice {\global \repeat unfold 3 \pianoRH}
          >>
          \new Dynamics {\teeny \dynamicsPianoA \dynamicsPianoA \dynamicsPianoB}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice {\global \repeat unfold 3 \pianoLH}
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
    output-suffix = "singlepage134-alto"
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
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = dynsop} {\TempoTrackA \TempoTrackC \TempoTrackB}
            \new Dynamics = dynsop \with {alignAboveContext = soprano} {\teeny \dynamicsVocalA \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\RehearsalTrackA \RehearsalTrackA \RehearsalTrackB}
            \new Voice {\global \soprano \break \soprano \break \soprano \bar "|."}
            \addlyrics {\tiny \wordsOne \wordsThree \wordsFour}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} {\dynamicsVocalA \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \alto \alto \alto}
            \addlyrics {\wordsOne \wordsThree \wordsFour}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsVocalA \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \tenor \tenor \tenor}
            \addlyrics {\tiny \wordsOne \wordsThree \wordsFour}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsVocalA \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \bass \bass \bass}
            \addlyrics {\tiny \wordsOne \wordsThree \wordsFour}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice {\TempoTrackA \TempoTrackC \TempoTrackB}
            \new Voice {\global \repeat unfold 3 \pianoRH}
          >>
          \new Dynamics {\teeny \dynamicsPianoA \dynamicsPianoA \dynamicsPianoB}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice {\global \repeat unfold 3 \pianoLH}
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
    output-suffix = "singlepage134-tenor"
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
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = dynsop} {\TempoTrackA \TempoTrackC \TempoTrackB}
            \new Dynamics = dynsop \with {alignAboveContext = soprano} {\teeny \dynamicsVocalA \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\RehearsalTrackA \RehearsalTrackA \RehearsalTrackB}
            \new Voice {\global \soprano \break \soprano \break \soprano \bar "|."}
            \addlyrics {\tiny \wordsOne \wordsThree \wordsFour}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsVocalA \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \alto \alto \alto}
            \addlyrics {\tiny \wordsOne \wordsThree \wordsFour}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\dynamicsVocalA \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \tenor \tenor \tenor}
            \addlyrics {\wordsOne \wordsThree \wordsFour}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsVocalA \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \bass \bass \bass}
            \addlyrics {\tiny \wordsOne \wordsThree \wordsFour}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice {\TempoTrackA \TempoTrackC \TempoTrackB}
            \new Voice {\global \repeat unfold 3 \pianoRH}
          >>
          \new Dynamics {\teeny \dynamicsPianoA \dynamicsPianoA \dynamicsPianoB}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice {\global \repeat unfold 3 \pianoLH}
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
    output-suffix = "singlepage134-bass"
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
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = dynsop} {\TempoTrackA \TempoTrackC \TempoTrackB}
            \new Dynamics = dynsop \with {alignAboveContext = soprano} {\teeny \dynamicsVocalA \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\RehearsalTrackA \RehearsalTrackA \RehearsalTrackB}
            \new Voice {\global \soprano \break \soprano \break \soprano \bar "|."}
            \addlyrics {\tiny \wordsOne \wordsThree \wordsFour}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsVocalA \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \alto \alto \alto}
            \addlyrics {\tiny \wordsOne \wordsThree \wordsFour}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsVocalA \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \tenor \tenor \tenor}
            \addlyrics {\tiny \wordsOne \wordsThree \wordsFour}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\dynamicsVocalA \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \bass \bass \bass}
            \addlyrics {\wordsOne \wordsThree \wordsFour}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice {\TempoTrackA \TempoTrackC \TempoTrackB}
            \new Voice {\global \repeat unfold 3 \pianoRH}
          >>
          \new Dynamics {\teeny \dynamicsPianoA \dynamicsPianoA \dynamicsPianoB}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice {\global \repeat unfold 3 \pianoLH}
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
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = dynsop} {\TempoTrackA \TempoTrackB \TempoTrackC \TempoTrackB}
            \new Dynamics = dynsop \with {alignAboveContext = soprano} {\dynamicsVocalA \dynamicsVocalB \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\RehearsalTrackA \RehearsalTrackB \RehearsalTrackA \RehearsalTrackB}
            \new Voice {\global \soprano \break \soprano \break \soprano \break \soprano \bar "|."}
            \addlyrics {\wordsMidiOne \wordsMidiTwo \wordsMidiThree \wordsMidiFour}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} {\dynamicsVocalA \dynamicsVocalB \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \alto \alto \alto \alto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\dynamicsVocalA \dynamicsVocalB \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \tenor \tenor \tenor \tenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\dynamicsVocalA \dynamicsVocalB \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \bass \bass \bass \bass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice {\TempoTrackA \TempoTrackB \TempoTrackC \TempoTrackB}
            \new Voice {\global \repeat unfold 4 \pianoRH}
            \new Dynamics {\dynamicsPianoA \dynamicsPianoB \dynamicsPianoA \dynamicsPianoB}
            \new Voice {\global \repeat unfold 4 \pianoLH}
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
    output-suffix = "midi134"
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = dynsop} {\TempoTrackA \TempoTrackC \TempoTrackB}
            \new Dynamics = dynsop \with {alignAboveContext = soprano} {\dynamicsVocalA \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\RehearsalTrackA \RehearsalTrackA \RehearsalTrackB}
            \new Voice {\global \soprano \break \soprano \break \soprano \bar "|."}
            \addlyrics {\wordsMidiOne \wordsMidiThree \wordsMidiFour}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} {\dynamicsVocalA \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \alto \alto \alto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\dynamicsVocalA \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \tenor \tenor \tenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\dynamicsVocalA \dynamicsVocalA \dynamicsVocalB}
            \new Voice {\global \bass \bass \bass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice {\TempoTrackA \TempoTrackC \TempoTrackB}
            \new Voice {\global \repeat unfold 3 \pianoRH}
            \new Dynamics {\dynamicsPianoA \dynamicsPianoA \dynamicsPianoB}
            \new Voice {\global \repeat unfold 3 \pianoLH}
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
