\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Perfect Peace."
  subtitle    = "Sankey No. 741"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
  meter       = \markup\smallCaps "8.7."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key a \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4  s2.*3
  \textMark \markup { \box \bold "B" }     s2.*3
  \textMark \markup { \box \bold "C" }     s2. s2 s1.
  \textMark \markup { \box \bold "D" }     s1.*2 s2. s4.
  \textMark \markup { \box \bold "E" } s4. s1.*2
  \textMark \markup { \box \bold "F" }     s1.*2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \time 3/4 \autoBeamOff
  e'8. fis16 | e4. a8 d8. cis16 | 4 b4 8. a16 | gis4. a8 cis8. b16 |
  a2 8. 16 | 4. cis,8 a'8. gis16 | 4 fis4 8. 16 |
  fis4. gis8 a8. cis16 | \partial 2 b2
  \section \sectionLabel \markup\smallCaps "Chorus." \time 12/8 |
  cis2.~4 b8 8 fis gis |
  fis4 e8 2. aes4. | d2.~4 a8 gis4 a8 | cis2.~4. \bar "|" \break
  cis4. | b2.~4 a8 gis a b | a2.~4. 4. |
  e2.~4 a8 a gis b | a2.~4. r4 r8 |
}

alto = \relative {
  \autoBeamOff
  cis'8. d16 | cis4. 8 fis8. e16 |4 d4 8. cis16 | d4. cis8 e8. d16 |
  cis2 fis8. 16 | 4. cis8 fis8. eis16 | 4 fis eis8. 16 |
  dis4. 8 8. 16 | e2 \section | 2.~4 8 8 8 8 |
  d4 cis8 2. e4. | fis2.~4 8 eis4 fis8 | e2.~4.
  e4. | d2.~4 fis8 e fis gis | a4. g8 8 8 fis4. 4. |
  cis2.~4 e8 d d d | cis4. 8 b d cis4. r4 r8 |
}

tenor = \relative {
  \autoBeamOff
  a8. 16 | 4. e8 a8. 16 | 4 gis4 8. a16 | b4. a8 8. gis16 |
  a2 cis8. 16 | 4. a8 c8. b16 | 4 a ais8. 16 |
  b4. 8 fis8. a16 | gis2 \section | a4. 4. 4 8 gis a b |
  a4 8 2. 4. | 4. 4. 4 8 b4 a8 | 4. 4 8 4.
  a4. | gis4. 4. 4 a8 b b d | cis4. 8 8 8 d4. a |
  a4. 4. 4 cis8 b b gis | a4. e8 d fis e4. r4 r8 |
}

bass = \relative {
  \autoBeamOff
  a,8. 16 | 4. 8 8. cis16 | e4 4 8. 16 | 4. 8 8. 16 |
  a,2 fis'8. 16 | 4. 8 cis8. 16 | d4 4 cis8. 16 |
  b4. 8 8. 16 | e2 \section | a,4. 4. 4 e'8 8 8 8 |
  a,4 8 2. cis4. | d4. 4. 4 8 4 8 | a4. 4 8 4.
  a4. | e'4. 4. 4 8 8 8 8 | a,4. 8 8 8 d4. d |
  e4. 4. 4 8 8 8 8 | a,2.~4. r4 r8 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  “Thou __ wilt keep him in per -- fect peace,
  whose mind __ is stay'd on Thee. __
  Be -- cause __ he trust -- eth in Thee, __
  be -- cause __ he trust -- eth in Thee.” __
}

chorusMen = \lyricmode {
  \tiny
  \repeat unfold 30 _
  Thou wilt, Thou _ _ _ _ _ _ _ _ _
  whose mind _ _ _ _ stay'd on Thee,
  _ _ be -- cause _ _ _ _ _ trust -- eth in Thee,
  _ _ be -- cause _ _ _ _ _ trust -- eth in Thee.”
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Pre -- cious words, like mu -- sic steal -- ing
  O'er the trou -- bled heart op -- prest;
  To the wea -- ry, faint -- ing spi -- rit,
  Breath -- ing com -- fort, hope, and rest:
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Pre -- cious words, that cheer us on -- ward,
  When the day is dark and drear;
  Light -- ing up the path be -- fore us,
  While their lov -- ing tunes we hear:
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Pre -- cious words of ho -- ly pro -- mise,
  From the home of an -- gels bright;
  By the Spi -- rit soft -- ly whis -- per'd
  In the si -- lent hours of night.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Pre -- cious words, that lift us up -- ward,
  All our earth -- ly cares a -- bove.
  To the Fount of life e -- ter -- nal,
  And the source of end -- less love:
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "Pre" "cious " "words, " "like " mu "sic " steal "ing "
  "\nO'er " "the " trou "bled " "heart " op "prest; "
  "\nTo " "the " wea "ry, " faint "ing " spi "rit, "
  "\nBreath" "ing " com "fort, " "hope, " "and " "rest: "
  "\n“Thou "  "wilt " "keep " "him " "in " per "fect " "peace, "
  "\nwhose " "mind "  "is " "stay'd " "on " "Thee. " 
  "\nBe" "cause "  "he " trust "eth " "in " "Thee, " 
  "\nbe" "cause "  "he " trust "eth " "in " "Thee.”\n" 

  \set stanza = "2."
  "\nPre" "cious " "words, " "that " "cheer " "us " on "ward, "
  "\nWhen " "the " "day " "is " "dark " "and " "drear; "
  "\nLight" "ing " "up " "the " "path " be "fore " "us, "
  "\nWhile " "their " lov "ing " "tunes " "we " "hear: "
  "\n“Thou "  "wilt " "keep " "him " "in " per "fect " "peace, "
  "\nwhose " "mind "  "is " "stay'd " "on " "Thee. " 
  "\nBe" "cause "  "he " trust "eth " "in " "Thee, " 
  "\nbe" "cause "  "he " trust "eth " "in " "Thee.”\n" 

  \set stanza = "3."
  "\nPre" "cious " "words " "of " ho "ly " pro "mise, "
  "\nFrom " "the " "home " "of " an "gels " "bright; "
  "\nBy " "the " Spi "rit " soft "ly " whis "per'd "
  "\nIn " "the " si "lent " "hours " "of " "night. "
  "\n“Thou "  "wilt " "keep " "him " "in " per "fect " "peace, "
  "\nwhose " "mind "  "is " "stay'd " "on " "Thee. " 
  "\nBe" "cause "  "he " trust "eth " "in " "Thee, " 
  "\nbe" "cause "  "he " trust "eth " "in " "Thee.”\n" 

  \set stanza = "4."
  "\nPre" "cious " "words, " "that " "lift " "us " up "ward, "
  "\nAll " "our " earth "ly " "cares " a "bove. "
  "\nTo " "the " "Fount " "of " "life " e ter "nal, "
  "\nAnd " "the " "source " "of " end "less " "love: "
  "\n“Thou "  "wilt " "keep " "him " "in " per "fect " "peace, "
  "\nwhose " "mind "  "is " "stay'd " "on " "Thee. " 
  "\nBe" "cause "  "he " trust "eth " "in " "Thee, " 
  "\nbe" "cause "  "he " trust "eth " "in " "Thee.” " 
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "Pre" "cious " "words, " "like " mu "sic " steal "ing "
  "\nO'er " "the " trou "bled " "heart " op "prest; "
  "\nTo " "the " wea "ry, " faint "ing " spi "rit, "
  "\nBreath" "ing " com "fort, " "hope, " "and " "rest: "
  "\n“Thou "  "wilt " "keep " "him " "in " per "fect " "peace, "
  "\nwhose " "mind "  "is " "stay'd " "on " "Thee. " 
  "\nBe" "cause "  "he " trust "eth " "in " "Thee, "
  "\ntrust" "eth " "in " "Thee, "
  "\nbe" "cause "  "he " trust "eth " "in " "Thee, "
  "\ntrust" "eth " "in " "Thee.”\n"

  \set stanza = "2."
  "\nPre" "cious " "words, " "that " "cheer " "us " on "ward, "
  "\nWhen " "the " "day " "is " "dark " "and " "drear; "
  "\nLight" "ing " "up " "the " "path " be "fore " "us, "
  "\nWhile " "their " lov "ing " "tunes " "we " "hear: "
  "\n“Thou "  "wilt " "keep " "him " "in " per "fect " "peace, "
  "\nwhose " "mind "  "is " "stay'd " "on " "Thee. " 
  "\nBe" "cause "  "he " trust "eth " "in " "Thee, "
  "\ntrust" "eth " "in " "Thee, "
  "\nbe" "cause "  "he " trust "eth " "in " "Thee, "
  "\ntrust" "eth " "in " "Thee.”\n"

  \set stanza = "3."
  "\nPre" "cious " "words " "of " ho "ly " pro "mise, "
  "\nFrom " "the " "home " "of " an "gels " "bright; "
  "\nBy " "the " Spi "rit " soft "ly " whis "per'd "
  "\nIn " "the " si "lent " "hours " "of " "night. "
  "\n“Thou "  "wilt " "keep " "him " "in " per "fect " "peace, "
  "\nwhose " "mind "  "is " "stay'd " "on " "Thee. " 
  "\nBe" "cause "  "he " trust "eth " "in " "Thee, "
  "\ntrust" "eth " "in " "Thee, "
  "\nbe" "cause "  "he " trust "eth " "in " "Thee, "
  "\ntrust" "eth " "in " "Thee.”\n"

  \set stanza = "4."
  "\nPre" "cious " "words, " "that " "lift " "us " up "ward, "
  "\nAll " "our " earth "ly " "cares " a "bove. "
  "\nTo " "the " "Fount " "of " "life " e ter "nal, "
  "\nAnd " "the " "source " "of " end "less " "love: "
  "\n“Thou "  "wilt " "keep " "him " "in " per "fect " "peace, "
  "\nwhose " "mind "  "is " "stay'd " "on " "Thee. " 
  "\nBe" "cause "  "he " trust "eth " "in " "Thee, "
  "\ntrust" "eth " "in " "Thee, "
  "\nbe" "cause "  "he " trust "eth " "in " "Thee, "
  "\ntrust" "eth " "in " "Thee.” "
}

wordsMidiTenor = \lyricmode {
  \set stanza = "1."
  "Pre" "cious " "words, " "like " mu "sic " steal "ing "
  "\nO'er " "the " trou "bled " "heart " op "prest; "
  "\nTo " "the " wea "ry, " faint "ing " spi "rit, "
  "\nBreath" "ing " com "fort, " "hope, " "and " "rest: "
  "\n“Thou " "wilt, " "Thou " "wilt " "keep " "him " "in " per "fect " "peace, "
  "\nwhose " "mind, " "whose " "mind " "is " "stay'd " "on " "Thee, "
  "\nstay'd " "on " "Thee, "
  "\nBe" "cause, " be "cause " "he " trust "eth " "in " "Thee, "
  "\ntrust" "eth " "in " "Thee, "
  "\nbe" "cause, " be "cause "  "he " trust "eth " "in " "Thee, "
  "\ntrust" "eth " "in " "Thee.”\n"

  \set stanza = "2."
  "\nPre" "cious " "words, " "that " "cheer " "us " on "ward, "
  "\nWhen " "the " "day " "is " "dark " "and " "drear; "
  "\nLight" "ing " "up " "the " "path " be "fore " "us, "
  "\nWhile " "their " lov "ing " "tunes " "we " "hear: "
  "\n“Thou " "wilt, " "Thou " "wilt " "keep " "him " "in " per "fect " "peace, "
  "\nwhose " "mind, " "whose " "mind " "is " "stay'd " "on " "Thee, "
  "\nstay'd " "on " "Thee, "
  "\nBe" "cause, " be "cause " "he " trust "eth " "in " "Thee, "
  "\ntrust" "eth " "in " "Thee, "
  "\nbe" "cause, " be "cause "  "he " trust "eth " "in " "Thee, "
  "\ntrust" "eth " "in " "Thee.”\n"

  \set stanza = "3."
  "\nPre" "cious " "words " "of " ho "ly " pro "mise, "
  "\nFrom " "the " "home " "of " an "gels " "bright; "
  "\nBy " "the " Spi "rit " soft "ly " whis "per'd "
  "\nIn " "the " si "lent " "hours " "of " "night. "
  "\n“Thou " "wilt, " "Thou " "wilt " "keep " "him " "in " per "fect " "peace, "
  "\nwhose " "mind, " "whose " "mind " "is " "stay'd " "on " "Thee, "
  "\nstay'd " "on " "Thee, "
  "\nBe" "cause, " be "cause " "he " trust "eth " "in " "Thee, "
  "\ntrust" "eth " "in " "Thee, "
  "\nbe" "cause, " be "cause "  "he " trust "eth " "in " "Thee, "
  "\ntrust" "eth " "in " "Thee.”\n"

  \set stanza = "4."
  "\nPre" "cious " "words, " "that " "lift " "us " up "ward, "
  "\nAll " "our " earth "ly " "cares " a "bove. "
  "\nTo " "the " "Fount " "of " "life " e ter "nal, "
  "\nAnd " "the " "source " "of " end "less " "love: "
  "\n“Thou " "wilt, " "Thou " "wilt " "keep " "him " "in " per "fect " "peace, "
  "\nwhose " "mind, " "whose " "mind " "is " "stay'd " "on " "Thee, "
  "\nstay'd " "on " "Thee, "
  "\nBe" "cause, " be "cause " "he " trust "eth " "in " "Thee, "
  "\ntrust" "eth " "in " "Thee, "
  "\nbe" "cause, " be "cause "  "he " trust "eth " "in " "Thee, "
  "\ntrust" "eth " "in " "Thee.” "
}

wordsMidiBass = \lyricmode {
  \set stanza = "1."
  "Pre" "cious " "words, " "like " mu "sic " steal "ing "
  "\nO'er " "the " trou "bled " "heart " op "prest; "
  "\nTo " "the " wea "ry, " faint "ing " spi "rit, "
  "\nBreath" "ing " com "fort, " "hope, " "and " "rest: "
  "\n“Thou " "wilt, " "thou " "wilt " "keep " "him " "in " per "fect " "peace, "
  "\nwhose " "mind, " "whose " "mind " "is " "stay'd " "on " "Thee, "
  "\nstay'd " "on " "Thee, "
  "\nBe" "cause, " be "cause " "he " trust "eth " "in " "Thee, "
  "\ntrust" "eth " "in " "Thee. "
  "\nbe" "cause, " be "cause " "he " trust "eth " "in " "Thee.”\n" 

  \set stanza = "2."
  "\nPre" "cious " "words, " "that " "cheer " "us " on "ward, "
  "\nWhen " "the " "day " "is " "dark " "and " "drear; "
  "\nLight" "ing " "up " "the " "path " be "fore " "us, "
  "\nWhile " "their " lov "ing " "tunes " "we " "hear: "
  "\n“Thou " "wilt, " "thou " "wilt " "keep " "him " "in " per "fect " "peace, "
  "\nwhose " "mind, " "whose " "mind " "is " "stay'd " "on " "Thee, "
  "\nstay'd " "on " "Thee, "
  "\nBe" "cause, " be "cause " "he " trust "eth " "in " "Thee, "
  "\ntrust" "eth " "in " "Thee. "
  "\nbe" "cause, " be "cause " "he " trust "eth " "in " "Thee.”\n" 

  \set stanza = "3."
  "\nPre" "cious " "words " "of " ho "ly " pro "mise, "
  "\nFrom " "the " "home " "of " an "gels " "bright; "
  "\nBy " "the " Spi "rit " soft "ly " whis "per'd "
  "\nIn " "the " si "lent " "hours " "of " "night. "
  "\n“Thou " "wilt, " "thou " "wilt " "keep " "him " "in " per "fect " "peace, "
  "\nwhose " "mind, " "whose " "mind " "is " "stay'd " "on " "Thee, "
  "\nstay'd " "on " "Thee, "
  "\nBe" "cause, " be "cause " "he " trust "eth " "in " "Thee, "
  "\ntrust" "eth " "in " "Thee. "
  "\nbe" "cause, " be "cause " "he " trust "eth " "in " "Thee.”\n" 

  \set stanza = "4."
  "\nPre" "cious " "words, " "that " "lift " "us " up "ward, "
  "\nAll " "our " earth "ly " "cares " a "bove. "
  "\nTo " "the " "Fount " "of " "life " e ter "nal, "
  "\nAnd " "the " "source " "of " end "less " "love: "
  "\n“Thou " "wilt, " "thou " "wilt " "keep " "him " "in " per "fect " "peace, "
  "\nwhose " "mind, " "whose " "mind " "is " "stay'd " "on " "Thee, "
  "\nstay'd " "on " "Thee, "
  "\nBe" "cause, " be "cause " "he " trust "eth " "in " "Thee, "
  "\ntrust" "eth " "in " "Thee. "
  "\nbe" "cause, " be "cause " "he " trust "eth " "in " "Thee.” " 
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
  \bookOutputSuffix "midi-alto"
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
  \bookOutputSuffix "midi-tenor"
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
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
                                              \wordsFour  \chorus
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
