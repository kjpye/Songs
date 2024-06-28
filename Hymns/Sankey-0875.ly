\version "2.25.17"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I will Sing the Wondrous Story,"
  subtitle    = "Sankey No. 875"
  subsubtitle = "Sankey 880 No. 571"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Peter Bilhorn."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "F. H. Rawley."
  meter       = \markup\smallCaps "8.7."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*3 s2
  \textMark \markup { \box \bold "B" } s4 s2.*3 s2
  \textMark \markup { \box \bold "C" } s4 s1    s2.
  \textMark \markup { \box \bold "D" } s4 s1    s2.
  \textMark \markup { \box \bold "E" } s4 s1    s2.
  \textMark \markup { \box \bold "F" } s4 s1    s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  g'8. aes16 | bes4. 8 c8. bes16 | ees4 bes4 8. 16 | 4. 8 c8. bes16 | 2 \bar "|" \break
  g8. aes16 | bes4. 8 c8. bes16 | ees4 bes4 8. ees16 | d4. bes8 aes8. f16 | ees2
  \section \sectionLabel \markup\smallCaps Chorus. \break \time 4/4 \partial 4
  \tuplet 3/2 {bes'8[c] d} | ees2~8. 16 d8. c16 | bes2 g4 \bar "|" \break
  bes8. 16 | 2~8. 16 c8. bes16 | 2~8 r \bar "|" \break
  \tuplet 3/2 {bes8[c] d} | ees2~8. 16 d8. c16 | bes2 g4 \bar "|" \break
  bes8. ees16 | d2~8. bes16 aes8. f16 | ees2.\fermata
}

alto = \relative {
  ees'8. f16 | g4. 8 aes8. g16 | 4 4 8. 16 | aes4. 8 8. 16 | g2
  ees8. f16 | g4. 8 aes8. g16 | 4 4 8. 16 | f4. d8 8. 16 | ees2 \section
  \apart \tuplet 3/2 {bes'8[a] aes} \auto | g2~8. 16 bes8. aes16 | g2 ees4
  g8. 16 | aes4 8. 16 8. 16 8. 16 | g8. 16 8. 16 8 r
  \apart \tuplet 3/2 {bes8[a] aes} \auto | g2~8. 16 bes8. aes16 | g2 ees4
  g8. 16 | f2~8. d16 8. 16 | bes8. 16 c8. 16 bes4\fermata
}

tenor = \relative {
  bes8. 16 | ees4. 8 8. 16 | bes4 ees4 8. 16 | d4. 8 8. 16 | ees2
  bes8. 16 | ees4. 8 8. 16 | bes4 ees4 8. bes16 | 4. 8 f8. aes16 | g2 \section
  r4 | r bes8. 16 8. r16 r4 | r8. ees16 8. 16 bes8. 16
  r4 | r d8. 16 8. r16 r4 | r8. ees16 8. 16 8 r8
  r4 | r bes8. 16 8. r16 r4 | r8. ees16 8. 16 bes8. 16
  r4 | r bes8. 16 8. 16 f8. aes16 | g8. 16 aes8. 16 g4\fermata
}

bass = \relative {
  ees8. 16 | 4. 8 8. 16 | 4 4 8. 16 | f4. 8 bes,8. 16 | ees2
  ees8. 16 | 4. 8 8. 16 | 4 4 8. 16 | bes4. 8 8. 16 | ees2 \section
  r4 | r ees8. 16 8. r16 r4 | r8. ees16 8. 16 8. 16
  r4 | r bes8. 16 8. r16 r4 | r8. ees16 8. 16 8 r8
  r4 | r ees8. 16 8. r16 r4 | r8. ees16 8. 16 8. 16
  r4 | r bes8. 16 8. 16 8. 16 | ees2.\fermata
}

chorus = \lyricmode {
  Yes, I’ll sing __ the won -- drous sto -- ry
  Of the Christ __ who died for me; __
  Sing it with __ the saints in glo -- ry,
  Ga -- thered by __ the cry -- stal sea. __
}

chorusMen = \lyricmode {
  \repeat unfold 30 \skip 1
  Yes, I’ll sing the won -- drous sto -- ry
  Of the Christ who died for me;
  Sing it with the saints in glo -- ry,
  Ga -- thered by the crys -- tal sea, the cry -- stal sea.
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  I will sing the won -- drous sto -- ry
  Of the Christ who died for me;
  How He left His home in glo -- ry,
  For the cross on Cal -- va -- ry.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I was lost; but Je -- sus found me—
  Found the sheep that went a -- stray;
  Threw His lov -- ing arms a -- round me,
  Drew me back in -- to His way.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  I was bruised; but Je -- sus healed me—
  Faint was I from many a fall;
  Sight was gone, and fears pos -- sessed me:
  But he freed me from them all.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Days of dark -- ness still come o’er me;
  Sor -- row’s paths I of -- ten tread;
  But the Sa -- viour still is with me,
  By His hand I’m safe -- ly led.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  He will keep me till the riv -- er
  Rolls its wa -- ters at my feet:
  Then He’ll bear me safe -- ly o -- ver,
  Where the loved ones I shall meet.
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "I " "will " "sing " "the " won "drous " sto "ry "
  "\nOf " "the " "Christ " "who " "died " "for " "me; "
  "\nHow " "He " "left " "His " "home " "in " glo "ry, "
  "\nFor " "the " "cross " "on " Cal va "ry. "
  "\nYes, " "I’ll " "sing "  "the " won "drous " sto "ry "
  "\nOf " "the " "Christ "  "who " "died " "for " "me; " 
  "\nSing " "it " "with "  "the " "saints " "in " glo "ry, "
  "\nGa" "thered " "by "  "the " cry "stal " "sea.\n" 

  \set stanza = "2."
  "\nI " "was " "lost; " "but " Je "sus " "found " "me— "
  "\nFound " "the " "sheep " "that " "went " a "stray; "
  "\nThrew " "His " lov "ing " "arms " a "round " "me, "
  "\nDrew " "me " "back " in "to " "His " "way. "
  "\nYes, " "I’ll " "sing "  "the " won "drous " sto "ry "
  "\nOf " "the " "Christ "  "who " "died " "for " "me; " 
  "\nSing " "it " "with "  "the " "saints " "in " glo "ry, "
  "\nGa" "thered " "by "  "the " cry "stal " "sea.\n" 

  \set stanza = "3."
  "\nI " "was " "bruised; " "but " Je "sus " "healed " "me— "
  "\nFaint " "was " "I " "from " "many " "a " "fall; "
  "\nSight " "was " "gone, " "and " "fears " pos "sessed " "me: "
  "\nBut " "he " "freed " "me " "from " "them " "all. "
  "\nYes, " "I’ll " "sing "  "the " won "drous " sto "ry "
  "\nOf " "the " "Christ "  "who " "died " "for " "me; " 
  "\nSing " "it " "with "  "the " "saints " "in " glo "ry, "
  "\nGa" "thered " "by "  "the " cry "stal " "sea.\n" 

  \set stanza = "4."
  "\nDays " "of " dark "ness " "still " "come " "o’er " "me; "
  "\nSor" "row’s " "paths " "I " of "ten " "tread; "
  "\nBut " "the " Sa "viour " "still " "is " "with " "me, "
  "\nBy " "His " "hand " "I’m " safe "ly " "led. "
  "\nYes, " "I’ll " "sing "  "the " won "drous " sto "ry "
  "\nOf " "the " "Christ "  "who " "died " "for " "me; " 
  "\nSing " "it " "with "  "the " "saints " "in " glo "ry, "
  "\nGa" "thered " "by "  "the " cry "stal " "sea.\n" 

  \set stanza = "5."
  "\nHe " "will " "keep " "me " "till " "the " riv "er "
  "\nRolls " "its " wa "ters " "at " "my " "feet: "
  "\nThen " "He’ll " "bear " "me " safe "ly " o "ver, "
  "\nWhere " "the " "loved " "ones " "I " "shall " "meet. "
  "\nYes, " "I’ll " "sing "  "the " won "drous " sto "ry "
  "\nOf " "the " "Christ "  "who " "died " "for " "me; " 
  "\nSing " "it " "with "  "the " "saints " "in " glo "ry, "
  "\nGa" "thered " "by "  "the " cry "stal " "sea. " 
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "I " "will " "sing " "the " won "drous " sto "ry "
  "\nOf " "the " "Christ " "who " "died " "for " "me; "
  "\nHow " "He " "left " "His " "home " "in " glo "ry, "
  "\nFor " "the " "cross " "on " Cal va "ry. "
  "\nYes, " "I’ll " "sing "  "the " won "drous " sto "ry "
  "\nOf " "the " "Christ, " "of " "the " "Christ " "who " "died " "for " "me, " "who " "died " "for " "me; "
  "\nSing " "it " "with "  "the " "saints " "in " glo "ry, "
  "\nGa" "thered " "by "  "the " cry "stal " "sea, " "the " cry "stal " "sea.\n"

  \set stanza = "2."
  "\nI " "was " "lost; " "but " Je "sus " "found " "me— "
  "\nFound " "the " "sheep " "that " "went " a "stray; "
  "\nThrew " "His " lov "ing " "arms " a "round " "me, "
  "\nDrew " "me " "back " in "to " "His " "way. "
  "\nYes, " "I’ll " "sing "  "the " won "drous " sto "ry "
  "\nOf " "the " "Christ, " "of " "the " "Christ " "who " "died " "for " "me, " "who " "died " "for " "me; "
  "\nSing " "it " "with "  "the " "saints " "in " glo "ry, "
  "\nGa" "thered " "by "  "the " cry "stal " "sea, " "the " cry "stal " "sea.\n"

  \set stanza = "3."
  "\nI " "was " "bruised; " "but " Je "sus " "healed " "me— "
  "\nFaint " "was " "I " "from " "many " "a " "fall; "
  "\nSight " "was " "gone, " "and " "fears " pos "sessed " "me: "
  "\nBut " "he " "freed " "me " "from " "them " "all. "
  "\nYes, " "I’ll " "sing "  "the " won "drous " sto "ry "
  "\nOf " "the " "Christ, " "of " "the " "Christ " "who " "died " "for " "me, " "who " "died " "for " "me; "
  "\nSing " "it " "with "  "the " "saints " "in " glo "ry, "
  "\nGa" "thered " "by "  "the " cry "stal " "sea, " "the " cry "stal " "sea.\n"

  \set stanza = "4."
  "\nDays " "of " dark "ness " "still " "come " "o’er " "me; "
  "\nSor" "row’s " "paths " "I " of "ten " "tread; "
  "\nBut " "the " Sa "viour " "still " "is " "with " "me, "
  "\nBy " "His " "hand " "I’m " safe "ly " "led. "
  "\nYes, " "I’ll " "sing "  "the " won "drous " sto "ry "
  "\nOf " "the " "Christ, " "of " "the " "Christ " "who " "died " "for " "me, " "who " "died " "for " "me; "
  "\nSing " "it " "with "  "the " "saints " "in " glo "ry, "
  "\nGa" "thered " "by "  "the " cry "stal " "sea, " "the " cry "stal " "sea.\n"

  \set stanza = "5."
  "\nHe " "will " "keep " "me " "till " "the " riv "er "
  "\nRolls " "its " wa "ters " "at " "my " "feet: "
  "\nThen " "He’ll " "bear " "me " safe "ly " o "ver, "
  "\nWhere " "the " "loved " "ones " "I " "shall " "meet. "
  "\nYes, " "I’ll " "sing "  "the " won "drous " sto "ry "
  "\nOf " "the " "Christ, " "of " "the " "Christ " "who " "died " "for " "me, " "who " "died " "for " "me; "
  "\nSing " "it " "with "  "the " "saints " "in " glo "ry, "
  "\nGa" "thered " "by "  "the " cry "stal " "sea, " "the " cry "stal " "sea. "
}

wordsMidiTenor = \lyricmode {
  \set stanza = "1."
  "I " "will " "sing " "the " won "drous " sto "ry "
  "\nOf " "the " "Christ " "who " "died " "for " "me; "
  "\nHow " "He " "left " "His " "home " "in " glo "ry, "
  "\nFor " "the " "cross " "on " Cal va "ry. "
  "\nYes, " "I’ll " "sing " "the " won "drous " sto "ry "
  "\nOf " "the " "Christ " "who " "died " "for " "me; "
  "\nSing " "it " "with " "the " "saints " "in " glo "ry, "
  "\nGa" "thered " "by " "the " cry "stal " "sea, " "the " cry "stal " "sea.\n"

  \set stanza = "2."
  "\nI " "was " "lost; " "but " Je "sus " "found " "me— "
  "\nFound " "the " "sheep " "that " "went " a "stray; "
  "\nThrew " "His " lov "ing " "arms " a "round " "me, "
  "\nDrew " "me " "back " in "to " "His " "way. "
  "\nYes, " "I’ll " "sing " "the " won "drous " sto "ry "
  "\nOf " "the " "Christ " "who " "died " "for " "me; "
  "\nSing " "it " "with " "the " "saints " "in " glo "ry, "
  "\nGa" "thered " "by " "the " cry "stal " "sea, " "the " cry "stal " "sea.\n"

  \set stanza = "3."
  "\nI " "was " "bruised; " "but " Je "sus " "healed " "me— "
  "\nFaint " "was " "I " "from " "many " "a " "fall; "
  "\nSight " "was " "gone, " "and " "fears " pos "sessed " "me: "
  "\nBut " "he " "freed " "me " "from " "them " "all. "
  "\nYes, " "I’ll " "sing " "the " won "drous " sto "ry "
  "\nOf " "the " "Christ " "who " "died " "for " "me; "
  "\nSing " "it " "with " "the " "saints " "in " glo "ry, "
  "\nGa" "thered " "by " "the " cry "stal " "sea, " "the " cry "stal " "sea.\n"

  \set stanza = "4."
  "\nDays " "of " dark "ness " "still " "come " "o’er " "me; "
  "\nSor" "row’s " "paths " "I " of "ten " "tread; "
  "\nBut " "the " Sa "viour " "still " "is " "with " "me, "
  "\nBy " "His " "hand " "I’m " safe "ly " "led. "
  "\nYes, " "I’ll " "sing " "the " won "drous " sto "ry "
  "\nOf " "the " "Christ " "who " "died " "for " "me; "
  "\nSing " "it " "with " "the " "saints " "in " glo "ry, "
  "\nGa" "thered " "by " "the " cry "stal " "sea, " "the " cry "stal " "sea.\n"

  \set stanza = "5."
  "\nHe " "will " "keep " "me " "till " "the " riv "er "
  "\nRolls " "its " wa "ters " "at " "my " "feet: "
  "\nThen " "He’ll " "bear " "me " safe "ly " o "ver, "
  "\nWhere " "the " "loved " "ones " "I " "shall " "meet. "
  "\nYes, " "I’ll " "sing " "the " won "drous " sto "ry "
  "\nOf " "the " "Christ " "who " "died " "for " "me; "
  "\nSing " "it " "with " "the " "saints " "in " glo "ry, "
  "\nGa" "thered " "by " "the " cry "stal " "sea, " "the " cry "stal " "sea. "
}

wordsMidiBass = \lyricmode {
  \set stanza = "1."
  "I " "will " "sing " "the " won "drous " sto "ry "
  "\nOf " "the " "Christ " "who " "died " "for " "me; "
  "\nHow " "He " "left " "His " "home " "in " glo "ry, "
  "\nFor " "the " "cross " "on " Cal va "ry. "
  "\nYes, " "I’ll " "sing " "the " won "drous " sto "ry "
  "\nOf " "the " "Christ " "who " "died " "for " "me; " 
  "\nSing " "it " "with " "the " "saints " "in " glo "ry, "
  "\nGa" "thered " "by " "the " cry "stal " "sea.\n" 

  \set stanza = "2."
  "\nI " "was " "lost; " "but " Je "sus " "found " "me— "
  "\nFound " "the " "sheep " "that " "went " a "stray; "
  "\nThrew " "His " lov "ing " "arms " a "round " "me, "
  "\nDrew " "me " "back " in "to " "His " "way. "
  "\nYes, " "I’ll " "sing " "the " won "drous " sto "ry "
  "\nOf " "the " "Christ " "who " "died " "for " "me; " 
  "\nSing " "it " "with " "the " "saints " "in " glo "ry, "
  "\nGa" "thered " "by " "the " cry "stal " "sea.\n" 

  \set stanza = "3."
  "\nI " "was " "bruised; " "but " Je "sus " "healed " "me— "
  "\nFaint " "was " "I " "from " "many " "a " "fall; "
  "\nSight " "was " "gone, " "and " "fears " pos "sessed " "me: "
  "\nBut " "he " "freed " "me " "from " "them " "all. "
  "\nYes, " "I’ll " "sing " "the " won "drous " sto "ry "
  "\nOf " "the " "Christ " "who " "died " "for " "me; " 
  "\nSing " "it " "with " "the " "saints " "in " glo "ry, "
  "\nGa" "thered " "by " "the " cry "stal " "sea.\n" 

  \set stanza = "4."
  "\nDays " "of " dark "ness " "still " "come " "o’er " "me; "
  "\nSor" "row’s " "paths " "I " of "ten " "tread; "
  "\nBut " "the " Sa "viour " "still " "is " "with " "me, "
  "\nBy " "His " "hand " "I’m " safe "ly " "led. "
  "\nYes, " "I’ll " "sing " "the " won "drous " sto "ry "
  "\nOf " "the " "Christ " "who " "died " "for " "me; " 
  "\nSing " "it " "with " "the " "saints " "in " glo "ry, "
  "\nGa" "thered " "by " "the " cry "stal " "sea.\n" 

  \set stanza = "5."
  "\nHe " "will " "keep " "me " "till " "the " riv "er "
  "\nRolls " "its " wa "ters " "at " "my " "feet: "
  "\nThen " "He’ll " "bear " "me " safe "ly " o "ver, "
  "\nWhere " "the " "loved " "ones " "I " "shall " "meet. "
  "\nYes, " "I’ll " "sing " "the " won "drous " sto "ry "
  "\nOf " "the " "Christ " "who " "died " "for " "me; " 
  "\nSing " "it " "with " "the " "saints " "in " glo "ry, "
  "\nGa" "thered " "by " "the " cry "stal " "sea. " 
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
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
                                              \wordsFive  \chorus
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
