\version "2.25.16"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Sunlight in my Soul."
  subtitle    = "Sankey No. 862"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. S. Weeden."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. W. van de Venter."
  meter       = \markup\smallCaps "C.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key e \major
  \time 4/4
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s8 s1 s2..
  \textMark \markup { \box \bold "B" } s8 s1*2
  \textMark \markup { \box \bold "C" }    s1*3
  \textMark \markup { \box \bold "D" }    s1*2 s2
  \textMark \markup { \box \bold "E" } s2 s1 s2..
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  b8 | e8. 16 8. fis16 gis8. 16 8. a16 | b8. 16 8. cis16 b4. \bar "|" \break
  b8 | cis8. 16 a8. cis16 b8. 16 8. gis16 | fis8. b16 dis8. cis16 <<{b2} \new Voice {s4. \tiny \vth cis16[dis]}>>
  \section \sectionLabel \markup\smallCaps Chorus. \break
  e4 dis cis b | a8. 16 8. 16 2 | dis4 cis b a |
  gis8. a16 b8. cis16 b2 | gis8. fis16 gis8. a16 b4 cis | dis8. 16 8. 16 \bar "|" \break
  dis2 | e8. 16 dis8. cis16 b8. cis16 b8. a16 | gis4 fis e4.\fermata
}

alto = \relative {
  b8 | 8. 16 8. dis16 e8. 16 8. fis16 | gis8. 16 8. a16 gis4.
  gis8 | a8. 16 8. 16 gis8. 16 8. e16 | dis8. 16  fis8. e16 dis2 | \section
  gis4 4 4 4 | dis8. 16 8. 16 2 | 4 4 4 4 |
  e8. fis16 gis8. a16 gis2 | e8. dis16 e8. fis16 gis4 4 | a8. 16 8. 16
  fis8. gis16 a4 | gis8. 16 8. 16 8. a16 gis8. fis16 | e4 dis e4.
}

tenor = \relative {
  gis8 | 8. 16 8. a16 b8. 16 8. 16 | e8. 16 8. 16 4.
  e8 | 8. 16 cis8. e16 8. 16 8. b16 | 8. 16 ais8. 16 b2 \section |
  b4 4 4 4 | 8. 16 8. 16 2 | fis4 a fis b |
  b8. 16 e8. 16 8. b16 gis4 | b8. 16 8. 16 e4 b | 8. 16 8. 16
  b2 | 8. 16 8. 16 e8. 16 8. cis16 | b4 a gis4._\fermata \section
}

bass = \relative {
  e8 | 8. 16 8. 16 8. 16 8. 16 | 8. 16 8. 16 4.
  e8 | a8. 16 8. 16 e8. 16 8. 16 | fis8. 16 8. 16 | b,2 | \section
  e4 4 4 4 | fis8. 16 8. 16 8. b16 fis8 dis | b4 4 4 4 |
  e8. 16 8. 16 2 | 8. 16 8. 16 4 4 | b8. 16 8. 16
  b2 | e8. 16 8. 16 8. 16 8. a,16 | b4 4 e4.
}

chorus = \lyricmode {
  Sun -- light, sun -- light in my soul to -- day,
  Sun -- light, sun -- light all a -- long the way:
  Since the Sa -- viour found me,
  took a -- way my sin,
  I have had the sun -- light of His love with -- in.
}

chorusAlto = \lyricmode {
  \tiny 
  \repeat unfold 28 \skip 1
  \repeat unfold 28 \skip 1
  load of sin,
  \repeat unfold 11 \skip 1
}

chorusTenor = \lyricmode {
  \tiny
  \repeat unfold 28 \skip 1
  \repeat unfold 17 \skip 1
  nar -- row way;
  \repeat unfold 22 \skip 1
}

chorusBass = \lyricmode {
  \tiny
  \repeat unfold 28 \skip 1
  \repeat unfold 9 \skip 1
  to -- day, yes,
  \repeat unfold 31 \skip 1
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  I wan -- dered in the shades of night,
  Till Je -- sus came to me,
  And with the sun -- light of His love
  Bid all my dark -- ness flee.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Tho’ clouds may ga -- ther in the sky,
  And bil -- lows round me roll,
  How -- ev -- er dark the world may be,
  I've sun -- light in my soul.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  While walk -- ing in the light of God
  I sweet com -- mu -- nion find;
  I press with ho -- ly vig -- our on,
  And leave the world be -- hind.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  I cross the wide ex -- tend -- ed fields,
  I jour -- ney o’er the plain,
  And in the sun -- light of His love
  I reap the gold -- en grain.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Soon I shall see Him as He is,
  Who gave Him -- self for me;
  Be -- hold the bright -- ness of His face
  Thro’ all e -- ter -- ni -- ty.
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "I " wan "dered " "in " "the " "shades " "of " "night, "
  "\nTill " Je "sus " "came " "to " "me, "
  "\nAnd " "with " "the " sun "light " "of " "His " "love "
  "\nBid " "all " "my " dark "ness " "flee. "
  "\nSun" "light, " sun "light " "in " "my " "soul " to "day, "
  "\nSun" "light, " sun "light " "all " a "long " "the " "way: "
  "\nSince " "the " Sa "viour " "found " "me, "
  "\ntook " a "way " "my " "sin, "
  "\nI " "have " "had " "the " sun "light " "of " "His " "love " with "in.\n"

  \set stanza = "2."
  "\nTho’ " "clouds " "may " ga "ther " "in " "the " "sky, "
  "\nAnd " bil "lows " "round " "me " "roll, "
  "\nHow" ev "er " "dark " "the " "world " "may " "be, "
  "\nI've " sun "light " "in " "my " "soul. "
  "\nSun" "light, " sun "light " "in " "my " "soul " to "day, "
  "\nSun" "light, " sun "light " "all " a "long " "the " "way: "
  "\nSince " "the " Sa "viour " "found " "me, "
  "\ntook " a "way " "my " "sin, "
  "\nI " "have " "had " "the " sun "light " "of " "His " "love " with "in.\n"

  \set stanza = "3."
  "\nWhile " walk "ing " "in " "the " "light " "of " "God "
  "\nI " "sweet " com mu "nion " "find; "
  "\nI " "press " "with " ho "ly " vig "our " "on, "
  "\nAnd " "leave " "the " "world " be "hind. "
  "\nSun" "light, " sun "light " "in " "my " "soul " to "day, "
  "\nSun" "light, " sun "light " "all " a "long " "the " "way: "
  "\nSince " "the " Sa "viour " "found " "me, "
  "\ntook " a "way " "my " "sin, "
  "\nI " "have " "had " "the " sun "light " "of " "His " "love " with "in.\n"

  \set stanza = "4."
  "\nI " "cross " "the " "wide " ex tend "ed " "fields, "
  "\nI " jour "ney " "o’er " "the " "plain, "
  "\nAnd " "in " "the " sun "light " "of " "His " "love "
  "\nI " "reap " "the " gold "en " "grain. "
  "\nSun" "light, " sun "light " "in " "my " "soul " to "day, "
  "\nSun" "light, " sun "light " "all " a "long " "the " "way: "
  "\nSince " "the " Sa "viour " "found " "me, "
  "\ntook " a "way " "my " "sin, "
  "\nI " "have " "had " "the " sun "light " "of " "His " "love " with "in.\n"

  \set stanza = "5."
  "\nSoon " "I " "shall " "see " "Him " "as " "He " "is, "
  "\nWho " "gave " Him "self " "for " "me; "
  "\nBe" "hold " "the " bright "ness " "of " "His " "face "
  "\nThro’ " "all " e ter ni "ty. "
  "\nSun" "light, " sun "light " "in " "my " "soul " to "day, "
  "\nSun" "light, " sun "light " "all " a "long " "the " "way: "
  "\nSince " "the " Sa "viour " "found " "me, "
  "\ntook " a "way " "my " "sin, "
  "\nI " "have " "had " "the " sun "light " "of " "His " "love " with "in. "
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "I " wan "dered " "in " "the " "shades " "of " "night, "
  "\nTill " Je "sus " "came " "to " "me, "
  "\nAnd " "with " "the " sun "light " "of " "His " "love "
  "\nBid " "all " "my " dark "ness " "flee. "
  "\nSun" "light, " sun "light " "in " "my " "soul " to "day, "
  "\nSun" "light, " sun "light " "all " a "long " "the " "way: "
  "\nSince " "the " Sa "viour " "found " "me, "
  "\ntook " a "way " "my " "load " "of " "sin, "
  "\nI " "have " "had " "the " sun "light " "of " "His " "love " with "in.\n"

  \set stanza = "2."
  "\nTho’ " "clouds " "may " ga "ther " "in " "the " "sky, "
  "\nAnd " bil "lows " "round " "me " "roll, "
  "\nHow" ev "er " "dark " "the " "world " "may " "be, "
  "\nI've " sun "light " "in " "my " "soul. "
  "\nSun" "light, " sun "light " "in " "my " "soul " to "day, "
  "\nSun" "light, " sun "light " "all " a "long " "the " "way: "
  "\nSince " "the " Sa "viour " "found " "me, "
  "\ntook " a "way " "my " "load " "of " "sin, "
  "\nI " "have " "had " "the " sun "light " "of " "His " "love " with "in.\n"

  \set stanza = "3."
  "\nWhile " walk "ing " "in " "the " "light " "of " "God "
  "\nI " "sweet " com mu "nion " "find; "
  "\nI " "press " "with " ho "ly " vig "our " "on, "
  "\nAnd " "leave " "the " "world " be "hind. "
  "\nSun" "light, " sun "light " "in " "my " "soul " to "day, "
  "\nSun" "light, " sun "light " "all " a "long " "the " "way: "
  "\nSince " "the " Sa "viour " "found " "me, "
  "\ntook " a "way " "my " "load " "of " "sin, "
  "\nI " "have " "had " "the " sun "light " "of " "His " "love " with "in.\n"

  \set stanza = "4."
  "\nI " "cross " "the " "wide " ex tend "ed " "fields, "
  "\nI " jour "ney " "o’er " "the " "plain, "
  "\nAnd " "in " "the " sun "light " "of " "His " "love "
  "\nI " "reap " "the " gold "en " "grain. "
  "\nSun" "light, " sun "light " "in " "my " "soul " to "day, "
  "\nSun" "light, " sun "light " "all " a "long " "the " "way: "
  "\nSince " "the " Sa "viour " "found " "me, "
  "\ntook " a "way " "my " "load " "of " "sin, "
  "\nI " "have " "had " "the " sun "light " "of " "His " "love " with "in.\n"

  \set stanza = "5."
  "\nSoon " "I " "shall " "see " "Him " "as " "He " "is, "
  "\nWho " "gave " Him "self " "for " "me; "
  "\nBe" "hold " "the " bright "ness " "of " "His " "face "
  "\nThro’ " "all " e ter ni "ty. "
  "\nSun" "light, " sun "light " "in " "my " "soul " to "day, "
  "\nSun" "light, " sun "light " "all " a "long " "the " "way: "
  "\nSince " "the " Sa "viour " "found " "me, "
  "\ntook " a "way " "my " "load " "of " "sin, "
  "\nI " "have " "had " "the " sun "light " "of " "His " "love " with "in. "
}

wordsMidiTenor = \lyricmode {
  \set stanza = "1."
  "I " wan "dered " "in " "the " "shades " "of " "night, "
  "\nTill " Je "sus " "came " "to " "me, "
  "\nAnd " "with " "the " sun "light " "of " "His " "love "
  "\nBid " "all " "my " dark "ness " "flee. "
  "\nSun" "light, " sun "light " "in " "my " "soul " to "day, "
  "\nSun" "light, " sun "light " "all " a "long " "the " nar "row " "way: "
  "\nSince " "the " Sa "viour " "found " "me, "
  "\ntook " a "way " "my " "sin, "
  "\nI " "have " "had " "the " sun "light " "of " "His " "love " with "in.\n"

  \set stanza = "2."
  "\nTho’ " "clouds " "may " ga "ther " "in " "the " "sky, "
  "\nAnd " bil "lows " "round " "me " "roll, "
  "\nHow" ev "er " "dark " "the " "world " "may " "be, "
  "\nI've " sun "light " "in " "my " "soul. "
  "\nSun" "light, " sun "light " "in " "my " "soul " to "day, "
  "\nSun" "light, " sun "light " "all " a "long " "the " nar "row " "way: "
  "\nSince " "the " Sa "viour " "found " "me, "
  "\ntook " a "way " "my " "sin, "
  "\nI " "have " "had " "the " sun "light " "of " "His " "love " with "in.\n"

  \set stanza = "3."
  "\nWhile " walk "ing " "in " "the " "light " "of " "God "
  "\nI " "sweet " com mu "nion " "find; "
  "\nI " "press " "with " ho "ly " vig "our " "on, "
  "\nAnd " "leave " "the " "world " be "hind. "
  "\nSun" "light, " sun "light " "in " "my " "soul " to "day, "
  "\nSun" "light, " sun "light " "all " a "long " "the " nar "row " "way: "
  "\nSince " "the " Sa "viour " "found " "me, "
  "\ntook " a "way " "my " "sin, "
  "\nI " "have " "had " "the " sun "light " "of " "His " "love " with "in.\n"

  \set stanza = "4."
  "\nI " "cross " "the " "wide " ex tend "ed " "fields, "
  "\nI " jour "ney " "o’er " "the " "plain, "
  "\nAnd " "in " "the " sun "light " "of " "His " "love "
  "\nI " "reap " "the " gold "en " "grain. "
  "\nSun" "light, " sun "light " "in " "my " "soul " to "day, "
  "\nSun" "light, " sun "light " "all " a "long " "the " nar "row " "way: "
  "\nSince " "the " Sa "viour " "found " "me, "
  "\ntook " a "way " "my " "sin, "
  "\nI " "have " "had " "the " sun "light " "of " "His " "love " with "in.\n"

  \set stanza = "5."
  "\nSoon " "I " "shall " "see " "Him " "as " "He " "is, "
  "\nWho " "gave " Him "self " "for " "me; "
  "\nBe" "hold " "the " bright "ness " "of " "His " "face "
  "\nThro’ " "all " e ter ni "ty. "
  "\nSun" "light, " sun "light " "in " "my " "soul " to "day, "
  "\nSun" "light, " sun "light " "all " a "long " "the " nar "row " "way: "
  "\nSince " "the " Sa "viour " "found " "me, "
  "\ntook " a "way " "my " "sin, "
  "\nI " "have " "had " "the " sun "light " "of " "His " "love " with "in. "
}

wordsMidiBass = \lyricmode {
  \set stanza = "1."
  "I " wan "dered " "in " "the " "shades " "of " "night, "
  "\nTill " Je "sus " "came " "to " "me, "
  "\nAnd " "with " "the " sun "light " "of " "His " "love "
  "\nBid " "all " "my " dark "ness " "flee. "
  "\nSun" "light, " sun "light " "in " "my " "soul " to "day, "
  "\nto" "day, " "yes, "
  "\nSun" "light, " sun "light " "all " a "long " "the " "way: "
  "\nSince " "the " Sa "viour " "found " "me, "
  "\ntook " a "way " "my " "sin, "
  "\nI " "have " "had " "the " sun "light " "of " "His " "love " with "in.\n"

  \set stanza = "2."
  "\nTho’ " "clouds " "may " ga "ther " "in " "the " "sky, "
  "\nAnd " bil "lows " "round " "me " "roll, "
  "\nHow" ev "er " "dark " "the " "world " "may " "be, "
  "\nI've " sun "light " "in " "my " "soul. "
  "\nSun" "light, " sun "light " "in " "my " "soul " to "day, "
  "\nto" "day, " "yes, "
  "\nSun" "light, " sun "light " "all " a "long " "the " "way: "
  "\nSince " "the " Sa "viour " "found " "me, "
  "\ntook " a "way " "my " "sin, "
  "\nI " "have " "had " "the " sun "light " "of " "His " "love " with "in.\n"

  \set stanza = "3."
  "\nWhile " walk "ing " "in " "the " "light " "of " "God "
  "\nI " "sweet " com mu "nion " "find; "
  "\nI " "press " "with " ho "ly " vig "our " "on, "
  "\nAnd " "leave " "the " "world " be "hind. "
  "\nSun" "light, " sun "light " "in " "my " "soul " to "day, "
  "\nto" "day, " "yes, "
  "\nSun" "light, " sun "light " "all " a "long " "the " "way: "
  "\nSince " "the " Sa "viour " "found " "me, "
  "\ntook " a "way " "my " "sin, "
  "\nI " "have " "had " "the " sun "light " "of " "His " "love " with "in.\n"

  \set stanza = "4."
  "\nI " "cross " "the " "wide " ex tend "ed " "fields, "
  "\nI " jour "ney " "o’er " "the " "plain, "
  "\nAnd " "in " "the " sun "light " "of " "His " "love "
  "\nI " "reap " "the " gold "en " "grain. "
  "\nSun" "light, " sun "light " "in " "my " "soul " to "day, "
  "\nto" "day, " "yes, "
  "\nSun" "light, " sun "light " "all " a "long " "the " "way: "
  "\nSince " "the " Sa "viour " "found " "me, "
  "\ntook " a "way " "my " "sin, "
  "\nI " "have " "had " "the " sun "light " "of " "His " "love " with "in.\n"

  \set stanza = "5."
  "\nSoon " "I " "shall " "see " "Him " "as " "He " "is, "
  "\nWho " "gave " Him "self " "for " "me; "
  "\nBe" "hold " "the " bright "ness " "of " "His " "face "
  "\nThro’ " "all " e ter ni "ty. "
  "\nSun" "light, " sun "light " "in " "my " "soul " to "day, "
  "\nto" "day, " "yes, "
  "\nSun" "light, " sun "light " "all " a "long " "the " "way: "
  "\nSince " "the " Sa "viour " "found " "me, "
  "\ntook " a "way " "my " "sin, "
  "\nI " "have " "had " "the " sun "light " "of " "His " "love " with "in. "
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

#(set-global-staff-size 19)

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
            \new NullVoice = alignerS \keepWithTag #'dash \soprano
            \new NullVoice = alignerA \keepWithTag #'dash \alto
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto alignerS { \wordsOne \chorus }
            \new Lyrics \lyricsto alignerS   \wordsTwo
            \new Lyrics \lyricsto alignerS   \wordsThree
            \new Lyrics \lyricsto alignerS   \wordsFour
            \new Lyrics \lyricsto alignerS   \wordsFive
          >>
          \new Lyrics \with {alignBelowContext = women} \lyricsto alignerA \chorusAlto
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
            \new NullVoice = alignerT { \keepWithTag #'dash \tenor }
            \new NullVoice = alignerB { \keepWithTag #'dash \bass  }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusTenor
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerB \chorusBass
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
            \new NullVoice = alignerS { \repeat-verses \verses \soprano }
            \new NullVoice = alignerA { \repeat-verses \verses \alto }
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses \soprano \bar "|." }
                                    { \global \repeat-verses \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto alignerS { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
          \new Lyrics \with {alignBelowContext = women} \lyricsto alignerA { \repeat unfold \verses \chorusAlto }
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses { \tenor \nl } }
                                    { \global \repeat-verses \verses \bass }
            \new NullVoice = alignerT { \repeat-verses \verses \tenor }
            \new NullVoice = alignerB { \repeat-verses \verses \bass  }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusTenor }
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerB { \repeat unfold \verses \chorusBass  }
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
