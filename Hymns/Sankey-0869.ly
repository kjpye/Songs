\version "2.25.16"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Dwelling in Love."
  subtitle    = "Sankey No. 869"
  subsubtitle = "C. C. No. 262"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "D. W. Whittle."
  meter       = \markup\smallCaps "7.6."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s8  s2.*4 s4.
  \textMark \markup { \box \bold "B" } s4. s2.*4
  \textMark \markup { \box \bold "C" }     s2.*4
  \textMark \markup { \box \bold "D" }     s2.*4
  \textMark \markup { \box \bold "E" }     s2.*3
  \textMark \markup { \box \bold "F" }     s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  ees'8 | 4 c'8 des4 c8 | 4. bes4 ees,8 | 4 bes'8 4 bes8 | aes4.~4 8 | f4 aes8 \bar "|" \break
  des4 f,8 | ees4. c'4 8 | 4 bes8 f4 bes8 | 4.~4 r8 |
  \section \sectionLabel \markup\smallCaps Chorus.
  c4.~8 b c |
  aes4.~4 r8 | 4.~8 g aes | f4.~4 r8 | ees4.~8 aes c |
  ees4.~8 c aes | bes4.~4.~ | 4.~4 r8 | c4.~8 b c |
  aes4.~4 r8 | 4.~8 g aes | f4.~4 r8 |
  ees4.~8 aes c | c4(f,8) g4 es8 | aes2.~ | 4.~4
}

alto = \relative {
  c'8 | 4 ees8 f4 ees8 | 4. 4 des8 | 4 8 ees4 des8 | c4.~4 8 | des4 f8
  f4 des8 | c4. ees4 8 | d4 8 4 8 | ees4.~4 r8 \section | 4.~8 d ees |
  c4.~4 r8 | 4.~8 e f | des4.~4 r8 | c4.~8 ees aes |
  c4.~8 aes8 8 | g8. 16 8 f8. 16 d8 | ees4.~4 r8 | 4.~8 d ees |
  c4.~4 r8 | f4.~8 e f | des4.~4 r8 |
  c4.~8 8 ees | des4. 4 8 | c4. des4 bes8 | c4.~4
}

tenor = \relative {
  aes8 | 4 8 4 8 | 4. g4 8 | 4 8 4 8 | aes4.~4 8 | 4 8
  aes4 8 | 4. 4 8 | 4 8 4 8 | g4.~4 r8 \section | aes8 8 8 4 r8 |
  ees8 8 8 4 r8 | f8 aes des8 4 r8 | aes8 8 8 4 r8 | 8. 16 8 4 r8 |
  aes8. 16 8 4 r8 | ees'8. 16 8 d8. 16 bes8 | g4.~4 r8 | aes8 8 8 4 r8 |
  ees8 8 8 4 r8 | f aes des8 4 r8 | aes8 8 8 4 r8 |
  aes8 8 8 4 8 | g4(bes8) 4 g8 | aes4. f4 fes8 | ees4.~4
}

bass = \relative {
  aes,8 | 4 8 4 8 | ees'4. 4 8 | 4 8 4 8 | aes,4.~4 8 | des4 8
  des4 8 | aes4. 4 8 | bes4 8 4 8 | ees4.~4 r8 \section aes,8 8 8 4 r8 |
  aes8 8 8 4 r8 | des8 8 8 4 r8 | 8 8 8 4 r8 | aes8. 16 8 4 r8 |
  aes'8. 16 8 4 r8 | bes8. 16 8 bes,8. 16 8 | ees4.~4 r8 | aes,8 8 8 4 r8 |
  aes8 8 8 4 r8 | des8 8 8 4 r8 | 8 8 8 4 r8 |
  ees8 8 8 4 8 | 4. 4 8 | aes,2.~ | 4.~4
}

chorus = \lyricmode {
  Known __ and be -- lieved, __
  Glad -- ly re -- ceived, __
  Won -- der -- ful, won -- der -- ful word: __
  Dwell -- ing in love, __
  Dwell -- ing in God, __
  Par -- doned and cleansed by the Blood. __
}

chorusMen = \lyricmode {
  \repeat unfold 26 \skip 1
  Known and be -- lieved, known and be -- lieved,
  Glad -- ly re -- ceived, glad -- ly re -- ceived,
  Won -- der -- ful word, won -- der -- ful word,
  Won -- der -- ful, won -- der -- ful word:
  Dwell -- ing in love, dwell -- ing in love,
  Dwell -- ing in God, Dwell -- ing in God,
  Par -- doned and cleansed, and cleansed by the Blood, by the Blood.
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, pre -- cious heaven -- ly know -- ledge,
  Su -- pass -- ing earth -- ly lore:
  The love of God in Je -- sus,
  In all its bound -- less store.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  By God's own Word this know -- ledge
  To us has been re -- vealed;
  The writ -- ten Word de -- clares it,
  Thro’ Him whom God hath sealed.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  By faith we have re -- cieved it,
  This love of God to men;
  At Cal -- v’ry we be -- lieved it,
  When He for -- gave our sin.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  The Spi -- rit in us dwell -- ing,
  Bears wit -- ness from a -- bove;
  The gra -- cious mes -- sage tell -- ing,
  That God in Christ is love.
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "Oh, " pre "cious " heaven "ly " know "ledge, "
  "\nSu" pass "ing " earth "ly " "lore: "
  "\nThe " "love " "of " "God " "in " Je "sus, "
  "\nIn " "all " "its " bound "less " "store. "
  "\nKnown "  "and " be "lieved, " 
  "\nGlad" "ly " re "ceived, " 
  "\nWon" der "ful, " won der "ful " "word: " 
  "\nDwell" "ing " "in " "love, " 
  "\nDwell" "ing " "in " "God, " 
  "\nPar" "doned " "and " "cleansed " "by " "the " "Blood.\n" 

  \set stanza = "2."
  "\nBy " "God's " "own " "Word " "this " know "ledge "
  "\nTo " "us " "has " "been " re "vealed; "
  "\nThe " writ "ten " "Word " de "clares " "it, "
  "\nThro’ " "Him " "whom " "God " "hath " "sealed. "
  "\nKnown "  "and " be "lieved, " 
  "\nGlad" "ly " re "ceived, " 
  "\nWon" der "ful, " won der "ful " "word: " 
  "\nDwell" "ing " "in " "love, " 
  "\nDwell" "ing " "in " "God, " 
  "\nPar" "doned " "and " "cleansed " "by " "the " "Blood.\n" 

  \set stanza = "3."
  "\nBy " "faith " "we " "have " re "cieved " "it, "
  "\nThis " "love " "of " "God " "to " "men; "
  "\nAt " Cal "v’ry " "we " be "lieved " "it, "
  "\nWhen " "He " for "gave " "our " "sin. "
  "\nKnown "  "and " be "lieved, " 
  "\nGlad" "ly " re "ceived, " 
  "\nWon" der "ful, " won der "ful " "word: " 
  "\nDwell" "ing " "in " "love, " 
  "\nDwell" "ing " "in " "God, " 
  "\nPar" "doned " "and " "cleansed " "by " "the " "Blood.\n" 

  \set stanza = "4."
  "\nThe " Spi "rit " "in " "us " dwell "ing, "
  "\nBears " wit "ness " "from " a "bove; "
  "\nThe " gra "cious " mes "sage " tell "ing, "
  "\nThat " "God " "in " "Christ " "is " "love. "
  "\nKnown "  "and " be "lieved, " 
  "\nGlad" "ly " re "ceived, " 
  "\nWon" der "ful, " won der "ful " "word: " 
  "\nDwell" "ing " "in " "love, " 
  "\nDwell" "ing " "in " "God, " 
  "\nPar" "doned " "and " "cleansed " "by " "the " "Blood. " 
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "Oh, " pre "cious " heaven "ly " know "ledge, "
  "\nSu" pass "ing " earth "ly " "lore: "
  "\nThe " "love " "of " "God " "in " Je "sus, "
  "\nIn " "all " "its " bound "less " "store. "
  "\nKnown " "and " be "lieved, " 
  "\nGlad" "ly " re "ceived, " 
  "\nWon" der "ful, " won der "ful, "
  "\nWon" der "ful, " won der "ful " "word: " 
  "\nDwell" "ing " "in " "love, " 
  "\nDwell" "ing " "in " "God, " 
  "\nPar" "doned " "and " "cleansed " "by " "the " "Blood, " "by " "the " "Blood.\n"

  \set stanza = "2."
  "\nBy " "God's " "own " "Word " "this " know "ledge "
  "\nTo " "us " "has " "been " re "vealed; "
  "\nThe " writ "ten " "Word " de "clares " "it, "
  "\nThro’ " "Him " "whom " "God " "hath " "sealed. "
  "\nKnown " "and " be "lieved, " 
  "\nGlad" "ly " re "ceived, " 
  "\nWon" der "ful, " won der "ful, "
  "\nWon" der "ful, " won der "ful " "word: " 
  "\nDwell" "ing " "in " "love, " 
  "\nDwell" "ing " "in " "God, " 
  "\nPar" "doned " "and " "cleansed " "by " "the " "Blood, " "by " "the " "Blood.\n"

  \set stanza = "3."
  "\nBy " "faith " "we " "have " re "cieved " "it, "
  "\nThis " "love " "of " "God " "to " "men; "
  "\nAt " Cal "v’ry " "we " be "lieved " "it, "
  "\nWhen " "He " for "gave " "our " "sin. "
  "\nKnown " "and " be "lieved, " 
  "\nGlad" "ly " re "ceived, " 
  "\nWon" der "ful, " won der "ful, "
  "\nWon" der "ful, " won der "ful " "word: " 
  "\nDwell" "ing " "in " "love, " 
  "\nDwell" "ing " "in " "God, " 
  "\nPar" "doned " "and " "cleansed " "by " "the " "Blood, " "by " "the " "Blood.\n"

  \set stanza = "4."
  "\nThe " Spi "rit " "in " "us " dwell "ing, "
  "\nBears " wit "ness " "from " a "bove; "
  "\nThe " gra "cious " mes "sage " tell "ing, "
  "\nThat " "God " "in " "Christ " "is " "love. "
  "\nKnown " "and " be "lieved, " 
  "\nGlad" "ly " re "ceived, " 
  "\nWon" der "ful, " won der "ful, "
  "\nWon" der "ful, " won der "ful " "word: " 
  "\nDwell" "ing " "in " "love, " 
  "\nDwell" "ing " "in " "God, " 
  "\nPar" "doned " "and " "cleansed " "by " "the " "Blood, " "by " "the " "Blood. "
}

wordsMidiTenor = \lyricmode {
  \set stanza = "1."
  "Oh, " pre "cious " heaven "ly " know "ledge, "
  "\nSu" pass "ing " earth "ly " "lore: "
  "\nThe " "love " "of " "God " "in " Je "sus, "
  "\nIn " "all " "its " bound "less " "store. "
  "\nKnown " "and " be "lieved, " "known " "and " be "lieved, "
  "\nGlad" "ly " re "ceived, " glad "ly " re "ceived, "
  "\nWon" der "ful " "word, " won der "ful " "word, "
  "\nWon" der "ful, " won der "ful " "word: "
  "\nDwell" "ing " "in " "love, " dwell "ing " "in " "love, "
  "\nDwell" "ing " "in " "God, " Dwell "ing " "in " "God, "
  "\nPar" "doned " "and " "cleansed, " "and " "cleansed " "by " "the " "Blood, " "by " "the " "Blood.\n"

  \set stanza = "2."
  "\nBy " "God's " "own " "Word " "this " know "ledge "
  "\nTo " "us " "has " "been " re "vealed; "
  "\nThe " writ "ten " "Word " de "clares " "it, "
  "\nThro’ " "Him " "whom " "God " "hath " "sealed. "
  "\nKnown " "and " be "lieved, " "known " "and " be "lieved, "
  "\nGlad" "ly " re "ceived, " glad "ly " re "ceived, "
  "\nWon" der "ful " "word, " won der "ful " "word, "
  "\nWon" der "ful, " won der "ful " "word: "
  "\nDwell" "ing " "in " "love, " dwell "ing " "in " "love, "
  "\nDwell" "ing " "in " "God, " Dwell "ing " "in " "God, "
  "\nPar" "doned " "and " "cleansed, " "and " "cleansed " "by " "the " "Blood, " "by " "the " "Blood.\n"

  \set stanza = "3."
  "\nBy " "faith " "we " "have " re "cieved " "it, "
  "\nThis " "love " "of " "God " "to " "men; "
  "\nAt " Cal "v’ry " "we " be "lieved " "it, "
  "\nWhen " "He " for "gave " "our " "sin. "
  "\nKnown " "and " be "lieved, " "known " "and " be "lieved, "
  "\nGlad" "ly " re "ceived, " glad "ly " re "ceived, "
  "\nWon" der "ful " "word, " won der "ful " "word, "
  "\nWon" der "ful, " won der "ful " "word: "
  "\nDwell" "ing " "in " "love, " dwell "ing " "in " "love, "
  "\nDwell" "ing " "in " "God, " Dwell "ing " "in " "God, "
  "\nPar" "doned " "and " "cleansed, " "and " "cleansed " "by " "the " "Blood, " "by " "the " "Blood.\n"

  \set stanza = "4."
  "\nThe " Spi "rit " "in " "us " dwell "ing, "
  "\nBears " wit "ness " "from " a "bove; "
  "\nThe " gra "cious " mes "sage " tell "ing, "
  "\nThat " "God " "in " "Christ " "is " "love. "
  "\nKnown " "and " be "lieved, " "known " "and " be "lieved, "
  "\nGlad" "ly " re "ceived, " glad "ly " re "ceived, "
  "\nWon" der "ful " "word, " won der "ful " "word, "
  "\nWon" der "ful, " won der "ful " "word: "
  "\nDwell" "ing " "in " "love, " dwell "ing " "in " "love, "
  "\nDwell" "ing " "in " "God, " Dwell "ing " "in " "God, "
  "\nPar" "doned " "and " "cleansed, " "and " "cleansed " "by " "the " "Blood, " "by " "the " "Blood. "
}

wordsMidiBass = \lyricmode {
  \set stanza = "1."
  "Oh, " pre "cious " heaven "ly " know "ledge, "
  "\nSu" pass "ing " earth "ly " "lore: "
  "\nThe " "love " "of " "God " "in " Je "sus, "
  "\nIn " "all " "its " bound "less " "store. "
  "\nKnown " "and " be "lieved, " "known " "and " be "lieved, "
  "\nGlad" "ly " re "ceived, " glad "ly " re "ceived, "
  "\nWon" der "ful " "word, " won der "ful " "word, "
  "\nWon" der "ful, " won der "ful " "word: "
  "\nDwell" "ing " "in " "love, " dwell "ing " "in " "love, "
  "\nDwell" "ing " "in " "God, " Dwell "ing " "in " "God, "
  "\nPar" "doned " "and " "cleansed, " "and " "cleansed " "by " "the " "Blood\n" 

  \set stanza = "2."
  "\nBy " "God's " "own " "Word " "this " know "ledge "
  "\nTo " "us " "has " "been " re "vealed; "
  "\nThe " writ "ten " "Word " de "clares " "it, "
  "\nThro’ " "Him " "whom " "God " "hath " "sealed. "
  "\nKnown " "and " be "lieved, " "known " "and " be "lieved, "
  "\nGlad" "ly " re "ceived, " glad "ly " re "ceived, "
  "\nWon" der "ful " "word, " won der "ful " "word, "
  "\nWon" der "ful, " won der "ful " "word: "
  "\nDwell" "ing " "in " "love, " dwell "ing " "in " "love, "
  "\nDwell" "ing " "in " "God, " Dwell "ing " "in " "God, "
  "\nPar" "doned " "and " "cleansed, " "and " "cleansed " "by " "the " "Blood.\n" 

  \set stanza = "3."
  "\nBy " "faith " "we " "have " re "cieved " "it, "
  "\nThis " "love " "of " "God " "to " "men; "
  "\nAt " Cal "v’ry " "we " be "lieved " "it, "
  "\nWhen " "He " for "gave " "our " "sin. "
  "\nKnown " "and " be "lieved, " "known " "and " be "lieved, "
  "\nGlad" "ly " re "ceived, " glad "ly " re "ceived, "
  "\nWon" der "ful " "word, " won der "ful " "word, "
  "\nWon" der "ful, " won der "ful " "word: "
  "\nDwell" "ing " "in " "love, " dwell "ing " "in " "love, "
  "\nDwell" "ing " "in " "God, " Dwell "ing " "in " "God, "
  "\nPar" "doned " "and " "cleansed, " "and " "cleansed " "by " "the " "Blood.\n" 

  \set stanza = "4."
  "\nThe " Spi "rit " "in " "us " dwell "ing, "
  "\nBears " wit "ness " "from " a "bove; "
  "\nThe " gra "cious " mes "sage " tell "ing, "
  "\nThat " "God " "in " "Christ " "is " "love. "
  "\nKnown " "and " be "lieved, " "known " "and " be "lieved, "
  "\nGlad" "ly " re "ceived, " glad "ly " re "ceived, "
  "\nWon" der "ful " "word, " won der "ful " "word, "
  "\nWon" der "ful, " won der "ful " "word: "
  "\nDwell" "ing " "in " "love, " dwell "ing " "in " "love, "
  "\nDwell" "ing " "in " "God, " Dwell "ing " "in " "God, "
  "\nPar" "doned " "and " "cleansed, " "and " "cleansed " "by " "the " "Blood. " 
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
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack     }
            \new Voice { \global \repeat-verses \verses \soprano \bar "|." }
            \addlyrics \wordsMidiSop
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat-verses \verses \alto \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat-verses \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat-verses \verses \bass }
          >>
        >>
    \midi { \context { \Staff autoBeaming = ##f } }
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
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack     }
            \new Voice { \global \repeat-verses \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat-verses \verses \alto \bar "|." }
            \addlyrics \wordsMidiAlto
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat-verses \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat-verses \verses \bass }
          >>
        >>
    \midi { \context { \Staff autoBeaming = ##f } }
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
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack     }
            \new Voice { \global \repeat-verses \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat-verses \verses \alto \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat-verses \verses \tenor }
            \addlyrics \wordsMidiTenor
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat-verses \verses \bass }
          >>
        >>
    \midi { \context { \Staff autoBeaming = ##f } }
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
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack     }
            \new Voice { \global \repeat-verses \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat-verses \verses \alto \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat-verses \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat-verses \verses \bass }
            \addlyrics \wordsMidiBass
          >>
        >>
    \midi { \context { \Staff autoBeaming = ##f } }
  }
}

#(set-global-staff-size 18)

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
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
            \new NullVoice = alignerT { \keepWithTag #'dash \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat-verses \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses \soprano \bar "|." }
                                    { \global \repeat-verses \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses { \tenor \nl } }
                                    { \global \repeat-verses \verses \bass }
            \new NullVoice = alignerT { \repeat-verses \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
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
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
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
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}
