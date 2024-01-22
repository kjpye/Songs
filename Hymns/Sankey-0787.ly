\version "2.25.12"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Will there be any Stars?"
  subtitle    = "Sankey No. 787"
%  subsubtitle = "Sankey 880 No. "
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Jno. R. Sweney."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "E. E. Hewitt."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key a \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*2
  \textMark \markup { \box \bold "B" }    s1*3
  \textMark \markup { \box \bold "C" }    s1*2 s2.
  \textMark \markup { \box \bold "D" } s4 s1*2
  \textMark \markup { \box \bold "E" }    s1*3
  \textMark \markup { \box \bold "F" }    s1*2 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  cis'8 d | e4 dis8 e a4 cis8. b16 | a4 gis8 a b,4 8 cis |
  d4 gis8 fis e4 d8 e | cis2. 8 d | e4 dis8 e a4 cis8. b16 |
  a4 gis8 a b,4 8 cis | d4 gis8 fis e4 b'8 cis | a2.
  \section \sectionLabel \markup\smallCaps Chorus. \break
  cis8. b16 | a4 b16 a8. e4 cis16 e8. | a4 8 b cis4 8 d |
  e4 cis8 b a4 b8 cis | b2~4\fermata d8 d | cis4 a8 8 cis4 8 b |
  a4 fis8 8 a4\fermata gis8 fis | e4 a8 8 gis4 b8 cis | a2~4\fermata
}

alto = \relative {
  \autoBeamOff
  a8 b | cis4 bis8 cis8 4 e8. d16 | cis4 d8 cis b4 8 ais8 |
  b4 | d8 8 b4 8 gis | a2. 8 b | cis4 bis8 cis8 4 e8. d16 |
  cis4 d8 c b4 8 ais | b4 d8 8 4 8 e | cis2. \section
  e8. d16 | cis4 d16 cis8. 4 16 e8. | a4 e8 8 4 8 8 |
  e4 a8 gis a4 gis8 a | g4 fis8 8 g4\fermata 8 8 | e4 cis8 8 e4 8 8 |
  fis4 d8 8 fis4\fermata bis,8 8 | cis4 e8 8 d4 8 e | cis4 e8 d cis4
}

tenor = \relative {
  \autoBeamOff
  e8 8 | a4 8 8 e4 8. 16 | 4 8 8 fis4 8 8 |
  fis4 e8 a gis4 8 e | 2. 8 8 | a4 8 8 e4 8. 16 |
  e4 8 8 fis4 8 8 | 4 e8 a gis4 8 8 | a2. \section
  a8. e16 | 4 16 8. a4 cis,16 e8. | a4 8 gis a4 8 b |
  cis4 e8 8 4 8 8 | 4 dis8 8 e4\fermata b8 8 | a4 e8 8 a4 8 8 |
  a4 8 8 d4\fermata a8 8 | 4 cis8 8 b4 gis8 8 | a4 gis8 fis e4\fermata
}

bass = \relative {
  \autoBeamOff
  a,8 8 | 4 8 8 4 8. 16 | 4 b8 cis d4 8 cis |
  b4 e8 8 4 8 8 | a,2. 8 8 | 4 8 8 4 8. 16 |
  a4 b8 cis d4 8 cis | b4 e8 8 4 8 8 | a,2. \section
  a8. 16 | 4 16 8. 4 cis16 e8. | a4 cis,8 e a4 8 8 |
  a4 8 a cis4 b8 a | e4 b8 8 e4\fermata 8 8 | a,4 8 8 4 cis8 8 |
  d4 8 8 4\fermata dis8 8 | e4 8 8 4 8 8 | a,2~4\fermata
}

chorus = \lyricmode {
  Will there be an -- y stars, an -- y stars in my crown,
  When at ev -- 'ning the sun go -- eth down? __
  When I wake with the blest
  In the man -- sions of rest,
  Will there be an -- y stars in my crown? __
}

chorusMen = \lyricmode {
  \repeat unfold 42 \skip 1
  \repeat unfold 21 \skip 1
  go -- eth down?
  \repeat unfold 18 \skip 1
  an -- y stars in my crown?
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  I am think -- ing to -- day of that beau -- ti -- ful land
  I shall reach when the sun go -- eth down;
  When thro' won -- der -- ful grace by my Sa -- viour I stand,
  Will there be an -- y stars in my crown?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  In the strength of the Lord let me la -- bour and pray,
  Let me watch as a win -- ner of souls,
  That bright stars may be mine in the glo -- ri -- ous day
  When His praise like the sea- bil -- low rolls.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, what joy will it be when His face I be -- hold,
  liv -- ing gems at His feet to lay down;
  It would sweet -- en my bliss in the ci -- ty of gold,
  Should there be an -- y stars in my crown.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I " "am " think "ing " to "day " "of " "that " beau ti "ful " "land "
  "\nI " "shall " "reach " "when " "the " "sun " go "eth " "down; "
  "\nWhen " "thro' " won der "ful " "grace " "by " "my " Sa "viour " "I " "stand, "
  "\nWill " "there " "be " an "y " "stars " "in " "my " "crown? "
  "\nWill " "there " "be " an "y " "stars, " an "y " "stars " "in " "my " "crown, "
  "\nWhen " "at " ev "'ning " "the " "sun " go "eth " "down? " 
  "\nWhen " "I " "wake " "with " "the " "blest "
  "\nIn " "the " man "sions " "of " "rest, "
  "\nWill " "there " "be " an "y " "stars " "in " "my " "crown?\n" 

  \set stanza = "2."
  "\nIn " "the " "strength " "of " "the " "Lord " "let " "me " la "bour " "and " "pray, "
  "\nLet " "me " "watch " "as " "a " win "ner " "of " "souls, "
  "\nThat " "bright " "stars " "may " "be " "mine " "in " "the " glo ri "ous " "day "
  "\nWhen " "His " "praise " "like " "the " sea bil "low " "rolls. "
  "\nWill " "there " "be " an "y " "stars, " an "y " "stars " "in " "my " "crown, "
  "\nWhen " "at " ev "'ning " "the " "sun " go "eth " "down? " 
  "\nWhen " "I " "wake " "with " "the " "blest "
  "\nIn " "the " man "sions " "of " "rest, "
  "\nWill " "there " "be " an "y " "stars " "in " "my " "crown?\n" 

  \set stanza = "3."
  "\nOh, " "what " "joy " "will " "it " "be " "when " "His " "face " "I " be "hold, "
  "\nliv" "ing " "gems " "at " "His " "feet " "to " "lay " "down; "
  "\nIt " "would " sweet "en " "my " "bliss " "in " "the " ci "ty " "of " "gold, "
  "\nShould " "there " "be " an "y " "stars " "in " "my " "crown. "
  "\nWill " "there " "be " an "y " "stars, " an "y " "stars " "in " "my " "crown, "
  "\nWhen " "at " ev "'ning " "the " "sun " go "eth " "down? " 
  "\nWhen " "I " "wake " "with " "the " "blest "
  "\nIn " "the " man "sions " "of " "rest, "
  "\nWill " "there " "be " an "y " "stars " "in " "my " "crown? " 
}

wordsMidiAT = \lyricmode {
  \set stanza = "1."
  "I " "am " think "ing " to "day " "of " "that " beau ti "ful " "land "
  "\nI " "shall " "reach " "when " "the " "sun " go "eth " "down; "
  "\nWhen " "thro' " won der "ful " "grace " "by " "my " Sa "viour " "I " "stand, "
  "\nWill " "there " "be " an "y " "stars " "in " "my " "crown? "
  "\nWill " "there " "be " an "y " "stars, " an "y " "stars " "in " "my " "crown, "
  "\nWhen " "at " ev "'ning " "the " "sun " go "eth " "down, " go "eth " "down? " 
  "\nWhen " "I " "wake " "with " "the " "blest "
  "\nIn " "the " man "sions " "of " "rest, "
  "\nWill " "there " "be " an "y " "stars, " an "y " "stars " "in " "my " "crown?\n" 

  \set stanza = "2."
  "\nIn " "the " "strength " "of " "the " "Lord " "let " "me " la "bour " "and " "pray, "
  "\nLet " "me " "watch " "as " "a " win "ner " "of " "souls, "
  "\nThat " "bright " "stars " "may " "be " "mine " "in " "the " glo ri "ous " "day "
  "\nWhen " "His " "praise " "like " "the " sea bil "low " "rolls. "
  "\nWill " "there " "be " an "y " "stars, " an "y " "stars " "in " "my " "crown, "
  "\nWhen " "at " ev "'ning " "the " "sun " go "eth " "down, " go "eth " "down? " 
  "\nWhen " "I " "wake " "with " "the " "blest "
  "\nIn " "the " man "sions " "of " "rest, "
  "\nWill " "there " "be " an "y " "stars, " an "y " "stars " "in " "my " "crown?\n" 

  \set stanza = "3."
  "\nOh, " "what " "joy " "will " "it " "be " "when " "His " "face " "I " be "hold, "
  "\nliv" "ing " "gems " "at " "His " "feet " "to " "lay " "down; "
  "\nIt " "would " sweet "en " "my " "bliss " "in " "the " ci "ty " "of " "gold, "
  "\nShould " "there " "be " an "y " "stars " "in " "my " "crown. "
  "\nWill " "there " "be " an "y " "stars, " an "y " "stars " "in " "my " "crown, "
  "\nWhen " "at " ev "'ning " "the " "sun " go "eth " "down, " go "eth " "down? " 
  "\nWhen " "I " "wake " "with " "the " "blest "
  "\nIn " "the " man "sions " "of " "rest, "
  "\nWill " "there " "be " an "y " "stars, " an "y " "stars " "in " "my " "crown? " 
}

wordsMidiBass = \lyricmode {
  \set stanza = "1."
  "I " "am " think "ing " to "day " "of " "that " beau ti "ful " "land "
  "\nI " "shall " "reach " "when " "the " "sun " go "eth " "down; "
  "\nWhen " "thro' " won der "ful " "grace " "by " "my " Sa "viour " "I " "stand, "
  "\nWill " "there " "be " an "y " "stars " "in " "my " "crown? "
  "\nWill " "there " "be " an "y " "stars, " an "y " "stars " "in " "my " "crown, "
  "\nWhen " "at " ev "'ning " "the " "sun " go "eth " "down, " go "eth " "down? " 
  "\nWhen " "I " "wake " "with " "the " "blest "
  "\nIn " "the " man "sions " "of " "rest, "
  "\nWill " "there " "be " an "y " "stars, " "in " "my " "crown?\n" 

  \set stanza = "2."
  "\nIn " "the " "strength " "of " "the " "Lord " "let " "me " la "bour " "and " "pray, "
  "\nLet " "me " "watch " "as " "a " win "ner " "of " "souls, "
  "\nThat " "bright " "stars " "may " "be " "mine " "in " "the " glo ri "ous " "day "
  "\nWhen " "His " "praise " "like " "the " sea bil "low " "rolls. "
  "\nWill " "there " "be " an "y " "stars, " an "y " "stars " "in " "my " "crown, "
  "\nWhen " "at " ev "'ning " "the " "sun " go "eth " "down, " go "eth " "down? " 
  "\nWhen " "I " "wake " "with " "the " "blest "
  "\nIn " "the " man "sions " "of " "rest, "
  "\nWill " "there " "be " an "y " "stars, " "in " "my " "crown?\n" 

  \set stanza = "3."
  "\nOh, " "what " "joy " "will " "it " "be " "when " "His " "face " "I " be "hold, "
  "\nliv" "ing " "gems " "at " "His " "feet " "to " "lay " "down; "
  "\nIt " "would " sweet "en " "my " "bliss " "in " "the " ci "ty " "of " "gold, "
  "\nShould " "there " "be " an "y " "stars " "in " "my " "crown. "
  "\nWill " "there " "be " an "y " "stars, " an "y " "stars " "in " "my " "crown, "
  "\nWhen " "at " ev "'ning " "the " "sun " go "eth " "down, " go "eth " "down? " 
  "\nWhen " "I " "wake " "with " "the " "blest "
  "\nIn " "the " man "sions " "of " "rest, "
  "\nWill " "there " "be " an "y " "stars, " "in " "my " "crown? " 
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
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
  \bookOutputSuffix "midi-at"
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
            \addlyrics \wordsMidiAT
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
  \bookOutputSuffix "midi-bass"
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
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
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
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
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
