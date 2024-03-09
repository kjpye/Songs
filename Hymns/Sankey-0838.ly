\version "2.25.13"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Children of the Heavenly King"
  subtitle    = "Sankey No. 838"
  subsubtitle = "Sankey 880 No. 502"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "T. C. O'Kane."
  arranger    = "Arr. Ira D. Sankey."
%  opus        = "opus"

  poet        = \markup\smallCaps "J Cennick."
  meter       = \markup\smallCaps "7s."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4  s2.*3 s2
  \textMark \markup { \box \bold "B" } s4  s2.*3 s2
  \textMark \markup { \box \bold "C" } s4. s1.*2
  \textMark \markup { \box \bold "D" }     s1.*2 s2. s4.
  \textMark \markup { \box \bold "E" } s4. s1.*2 s2. s4.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff \time 3/4 \partial 4
  ees'8. 16 | aes4. bes8 aes8. g16 | bes2 g8. aes16 | bes4. ees,8 f8. ees16 | c'2 \bar "|" \break
  c8. des16 | ees4. c8 8. bes16 | aes2 g8. aes16 | bes4. ees,8 f8. g16 | aes2
  \section \sectionLabel \markup\smallCaps Chorus \break \time 12/8 \partial 4.
  aes8[bes] c | des2.~4 8 8[c] bes | c2.~4. 8[bes] aes |
  bes2.~4 8 8[aes] g | aes2.~4. 8[bes] c | des2.~4 8 \bar "|" \break
  des8[c] bes | c2.~4. 4 des8 | ees4.~4 des8 c4. bes | aes2.~4.
}

alto = \relative {
  \autoBeamOff
  c'8. 16 | ees4. 8 8. 16 | 2 8. 16 | g4. ees8 des8. ees16 2
  ees8. 16 | aes4. ees8 8. 16 | f2 ees8. 16 | g4. ees8 des8. 16 | c2 \section
  c8[des] ees | f2.~4 8 8[ees] des | ees2.~4. \apart r4 r8 |
  ees4 8 4 8 4. r4 r8 | ees4 8 4 8 c4. \auto 8[des] ees | f2.~4 8
  f8[ees] des | ees2.~4. 4 8 | aes4.~4 f8 ees4. 4. | 2.~4.
}

tenor = \relative {
  \autoBeamOff
  aes8. 16 | c4. g8 aes8. 16 | g2 bes8. c16 | des4. c8 bes8. g16 | aes2
  aes8. bes16 | c4. aes8 8. ees16 | aes2 des8. c16 | ees4. c8 bes8. 16 | aes2 \section
  r4 r8 | aes4 8 4 8 4. r4 r8 | 4 8 4 8 4. \apart ees'8[des] c |
  des2.~4 8 8[c] bes | ees,4.~(4. aes) \auto r4 r8 | 4 8 4 8 4.
  r4 r8 | aes4 8 4 8 4. 4 bes8 | c4.~4 aes8 4. des | c2.~4.
}

bass = \relative {
  \autoBeamOff
  aes,8. 16 | 4. 8 8. c16 | ees2 8. 16 | 4. 8 8. 16 | aes,2
  aes'8. 16 | 4. 8 8. c,16 | des2 ees8. 16 | 4. 8 8. 16 | aes,2 \section
  r4 r8 | des4 8 4 8 4. r4 r8 | aes4 8 4 8 4. r4 r8 |
  ees'4 8 4 8 4. r4 r8 | aes,4 8 4 8 4. r4 r8 | des4 8 4 8 4.
  r4 r8 | aes4 8 4 8 4. aes'4 8 | 4.~4 des,8 ees4. 4. | aes,2.~4.
}

chorus = \lyricmode {
  We are trav -- 'lling home to God, __
  In the way __ Our fa -- thers trod. __
  They are hap -- py now, and we __
  Soon their hap -- pi -- ness shall see.
}

chorusAlto = \lyricmode {
  \tiny 
  \repeat unfold 28 \skip 1
  _ _ _ _ _ _ _
  In the nar -- row way, way our fa -- thers trod;
  \repeat unfold 14 \skip 1
}

chorusMen = \lyricmode {
  \tiny
  \repeat unfold 28 \skip 1
  We are trav -- 'lling home,
  trav -- 'lling home to God,
  _ _ _ _ _ _ _
  They are hap -- py now,
  hap -- py now, and we _ _ _ _ _ _ _
}

chorusBass = \lyricmode {
  \tiny
  \repeat unfold 28 \skip 1
  \repeat unfold 10 \skip 1
  In the nar -- row way, way our fa -- thers trod;
  \repeat unfold 17 \skip 1
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Chil -- dren of the heav'n -- ly King,
  As we jour -- ney let us sing;
  Sing our Sa -- viour's wor -- thy praise,
  Glo -- rious in His works and ways.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Lift your eyes, ye sons of light—
  Zi -- on's ci -- ty is in sight;
  There our end -- less home shall be,
  There our Lord we soon shall see.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Fear not, breth -- ren! joy -- ful stand
  On the bor -- ders of our land;
  Je -- sus Christ, our Fa -- ther's Son,
  Bids us un -- dis -- mayed go on.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Lord, o -- be -- dient -- ly we'll go,
  Glad -- ly leav -- ing all be -- low;
  On -- ly Thou our Lead -- er be,
  And we still will fol -- low Thee.
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "Chil" "dren " "of " "the " heav'n "ly " "King, "
  "\nAs " "we " jour "ney " "let " "us " "sing; "
  "\nSing " "our " Sa "viour's " wor "thy " "praise, "
  "\nGlo" "rious " "in " "His " "works " "and " "ways. "
  "\nWe " "are " trav "'lling " "home " "to " "God, " 
  "\nIn " "the " "way "  "Our " fa "thers " "trod. " 
  "\nThey " "are " hap "py " "now, " "and " "we " 
  "\nSoon " "their " hap pi "ness " "shall " "see.\n"

  \set stanza = "2."
  "\nLift " "your " "eyes, " "ye " "sons " "of " "light— "
  "\nZi" "on's " ci "ty " "is " "in " "sight; "
  "\nThere " "our " end "less " "home " "shall " "be, "
  "\nThere " "our " "Lord " "we " "soon " "shall " "see. "
  "\nWe " "are " trav "'lling " "home " "to " "God, " 
  "\nIn " "the " "way "  "Our " fa "thers " "trod. " 
  "\nThey " "are " hap "py " "now, " "and " "we " 
  "\nSoon " "their " hap pi "ness " "shall " "see.\n"

  \set stanza = "3."
  "\nFear " "not, " breth "ren! " joy "ful " "stand "
  "\nOn " "the " bor "ders " "of " "our " "land; "
  "\nJe" "sus " "Christ, " "our " Fa "ther's " "Son, "
  "\nBids " "us " un dis "mayed " "go " "on. "
  "\nWe " "are " trav "'lling " "home " "to " "God, " 
  "\nIn " "the " "way "  "Our " fa "thers " "trod. " 
  "\nThey " "are " hap "py " "now, " "and " "we " 
  "\nSoon " "their " hap pi "ness " "shall " "see.\n"

  \set stanza = "4."
  "\nLord, " o be dient "ly " "we'll " "go, "
  "\nGlad" "ly " leav "ing " "all " be "low; "
  "\nOn" "ly " "Thou " "our " Lead "er " "be, "
  "\nAnd " "we " "still " "will " fol "low " "Thee. "
  "\nWe " "are " trav "'lling " "home " "to " "God, " 
  "\nIn " "the " "way "  "Our " fa "thers " "trod. " 
  "\nThey " "are " hap "py " "now, " "and " "we " 
  "\nSoon " "their " hap pi "ness " "shall " "see. "
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "Chil" "dren " "of " "the " heav'n "ly " "King, "
  "\nAs " "we " jour "ney " "let " "us " "sing; "
  "\nSing " "our " Sa "viour's " wor "thy " "praise, "
  "\nGlo" "rious " "in " "His " "works " "and " "ways. "
  "\nWe " "are " trav "'lling " "home " "to " "God, " 
  "\nIn " "the " nar "row " "way, " "way " "our " fa "thers " "trod. " 
  "\nThey " "are " hap "py " "now, " "and " "we " 
  "\nSoon " "their " hap pi "ness " "shall " "see.\n"

  \set stanza = "2."
  "\nLift " "your " "eyes, " "ye " "sons " "of " "light— "
  "\nZi" "on's " ci "ty " "is " "in " "sight; "
  "\nThere " "our " end "less " "home " "shall " "be, "
  "\nThere " "our " "Lord " "we " "soon " "shall " "see. "
  "\nWe " "are " trav "'lling " "home " "to " "God, " 
  "\nIn " "the " nar "row " "way, " "way " "our " fa "thers " "trod. " 
  "\nThey " "are " hap "py " "now, " "and " "we " 
  "\nSoon " "their " hap pi "ness " "shall " "see.\n"

  \set stanza = "3."
  "\nFear " "not, " breth "ren! " joy "ful " "stand "
  "\nOn " "the " bor "ders " "of " "our " "land; "
  "\nJe" "sus " "Christ, " "our " Fa "ther's " "Son, "
  "\nBids " "us " un dis "mayed " "go " "on. "
  "\nWe " "are " trav "'lling " "home " "to " "God, " 
  "\nIn " "the " nar "row " "way, " "way " "our " fa "thers " "trod. " 
  "\nThey " "are " hap "py " "now, " "and " "we " 
  "\nSoon " "their " hap pi "ness " "shall " "see.\n"

  \set stanza = "4."
  "\nLord, " o be dient "ly " "we'll " "go, "
  "\nGlad" "ly " leav "ing " "all " be "low; "
  "\nOn" "ly " "Thou " "our " Lead "er " "be, "
  "\nAnd " "we " "still " "will " fol "low " "Thee. "
  "\nWe " "are " trav "'lling " "home " "to " "God, " 
  "\nIn " "the " nar "row " "way, " "way " "our " fa "thers " "trod. " 
  "\nThey " "are " hap "py " "now, " "and " "we " 
  "\nSoon " "their " hap pi "ness " "shall " "see. "
}

wordsMidiTenor = \lyricmode {
  \set stanza = "1."
  "Chil" "dren " "of " "the " heav'n "ly " "King, "
  "\nAs " "we " jour "ney " "let " "us " "sing; "
  "\nSing " "our " Sa "viour's " wor "thy " "praise, "
  "\nGlo" "rious " "in " "His " "works " "and " "ways. "
  "\nWe " "are " trav "'lling " "home, " trav "'lling " "home " "to " "God, " 
  "\nIn " "the " "way "  "Our " fa "thers " "trod. " 
  "\nThey " "are " hap "py " "now, " hap "py " "now " "and " "we " 
  "\nSoon " "their " hap pi "ness " "shall " "see.\n"

  \set stanza = "2."
  "\nLift " "your " "eyes, " "ye " "sons " "of " "light— "
  "\nZi" "on's " ci "ty " "is " "in " "sight; "
  "\nThere " "our " end "less " "home " "shall " "be, "
  "\nThere " "our " "Lord " "we " "soon " "shall " "see. "
  "\nWe " "are " trav "'lling " "home, " trav "'lling " "home " "to " "God, " 
  "\nIn " "the " "way "  "Our " fa "thers " "trod. " 
  "\nThey " "are " hap "py " "now, " hap "py " "now " "and " "we " 
  "\nSoon " "their " hap pi "ness " "shall " "see.\n"

  \set stanza = "3."
  "\nFear " "not, " breth "ren! " joy "ful " "stand "
  "\nOn " "the " bor "ders " "of " "our " "land; "
  "\nJe" "sus " "Christ, " "our " Fa "ther's " "Son, "
  "\nBids " "us " un dis "mayed " "go " "on. "
  "\nWe " "are " trav "'lling " "home, " trav "'lling " "home " "to " "God, " 
  "\nIn " "the " "way "  "Our " fa "thers " "trod. " 
  "\nThey " "are " hap "py " "now, " hap "py " "now " "and " "we " 
  "\nSoon " "their " hap pi "ness " "shall " "see.\n"

  \set stanza = "4."
  "\nLord, " o be dient "ly " "we'll " "go, "
  "\nGlad" "ly " leav "ing " "all " be "low; "
  "\nOn" "ly " "Thou " "our " Lead "er " "be, "
  "\nAnd " "we " "still " "will " fol "low " "Thee. "
  "\nWe " "are " trav "'lling " "home, " trav "'lling " "home " "to " "God, " 
  "\nIn " "the " "way "  "Our " fa "thers " "trod. " 
  "\nThey " "are " hap "py " "now, " hap "py " "now " "and " "we " 
  "\nSoon " "their " hap pi "ness " "shall " "see. "
}

wordsMidiBass = \lyricmode {
  \set stanza = "1."
  "Chil" "dren " "of " "the " heav'n "ly " "King, "
  "\nAs " "we " jour "ney " "let " "us " "sing; "
  "\nSing " "our " Sa "viour's " wor "thy " "praise, "
  "\nGlo" "rious " "in " "His " "works " "and " "ways. "
  "\nWe " "are " trav "'lling " "home, " trav "'lling " "home " "to " "God, " 
  "\nIn " "the " nar "row " "way, " "way " "our " fa "thers " "trod. "
  "\nThey " "are " hap "py " "now, " nap "py " "now " "and " "we " 
  "\nSoon " "their " hap pi "ness " "shall " "see.\n"

  \set stanza = "2."
  "\nLift " "your " "eyes, " "ye " "sons " "of " "light— "
  "\nZi" "on's " ci "ty " "is " "in " "sight; "
  "\nThere " "our " end "less " "home " "shall " "be, "
  "\nThere " "our " "Lord " "we " "soon " "shall " "see. "
  "\nWe " "are " trav "'lling " "home, " trav "'lling " "home " "to " "God, " 
  "\nIn " "the " nar "row " "way, " "way " "our " fa "thers " "trod. "
  "\nThey " "are " hap "py " "now, " nap "py " "now " "and " "we " 
  "\nSoon " "their " hap pi "ness " "shall " "see.\n"

  \set stanza = "3."
  "\nFear " "not, " breth "ren! " joy "ful " "stand "
  "\nOn " "the " bor "ders " "of " "our " "land; "
  "\nJe" "sus " "Christ, " "our " Fa "ther's " "Son, "
  "\nBids " "us " un dis "mayed " "go " "on. "
  "\nWe " "are " trav "'lling " "home, " trav "'lling " "home " "to " "God, " 
  "\nIn " "the " nar "row " "way, " "way " "our " fa "thers " "trod. "
  "\nThey " "are " hap "py " "now, " nap "py " "now " "and " "we " 
  "\nSoon " "their " hap pi "ness " "shall " "see.\n"

  \set stanza = "4."
  "\nLord, " o be dient "ly " "we'll " "go, "
  "\nGlad" "ly " leav "ing " "all " be "low; "
  "\nOn" "ly " "Thou " "our " Lead "er " "be, "
  "\nAnd " "we " "still " "will " fol "low " "Thee. "
  "\nWe " "are " trav "'lling " "home, " trav "'lling " "home " "to " "God, " 
  "\nIn " "the " nar "row " "way, " "way " "our " fa "thers " "trod. "
  "\nThey " "are " hap "py " "now, " nap "py " "now " "and " "we " 
  "\nSoon " "their " hap pi "ness " "shall " "see. "
}

\book {
  \paper {
    output-suffix = midi-sop
  }
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidiSop
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
          >>
        >>
    \midi {}
  }
}

\book {
  \paper {
    output-suffix = midi-alto
  }
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics \wordsMidiAlto
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
          >>
        >>
    \midi {}
  }
}

\book {
  \paper {
    output-suffix = midi-tenor
  }
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
            \addlyrics \wordsMidiTenor
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
          >>
        >>
    \midi {}
  }
}

\book {
  \paper {
    output-suffix = midi-bass
  }
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
            \addlyrics \wordsMidiBass
          >>
        >>
    \midi {}
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
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "alignerS" \soprano
            \new NullVoice = "alignerA" \alto
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "alignerA"   \chorusAlto
            \new Lyrics \lyricsto "alignerS" { \wordsOne \chorus }
            \new Lyrics \lyricsto "alignerS"   \wordsTwo
            \new Lyrics \lyricsto "alignerS"   \wordsThree
            \new Lyrics \lyricsto "alignerS"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT \tenor
            \new NullVoice = alignerB \bass
            \addlyrics \chorusBass
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "alignerS" { \repeat unfold \verses \soprano }
            \new NullVoice = "alignerA" { \repeat unfold \verses \alto    }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "alignerS" { \wordsOne   \chorus
                                               \wordsTwo   \chorus
                                               \wordsThree \chorus
                                               \wordsFour  \chorus
                                             }
            \new Lyrics \lyricsto alignerA {\repeat unfold \verses \chorusAlto}
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
            \new NullVoice = alignerB { \repeat unfold \verses \bass  }
            \addlyrics { \repeat unfold \verses \chorusBass }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \paper {
    output-suffix = single
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
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
