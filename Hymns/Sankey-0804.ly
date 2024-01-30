\version "2.25.12"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Onward Go!"
  subtitle    = "Sankey No. 804"
  subsubtitle = "C. C. No. 25"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "E. B."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key des \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*4
  \textMark \markup { \box \bold "B" } s1*4
  \textMark \markup { \box \bold "C" } s1*4
  \textMark \markup { \box \bold "D" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  aes'4 bes8[aes] 4 bes8[aes] | 4 des aes2 | 4 ges4 2 | bes4 aes4 2 |
  aes4 bes8[aes] 4 bes8[aes] | 4 des aes(des) | c2 bes | aes1 |
  ees'4 4 4 des8[c] | des4 bes aes(des) | ees4 4 4 des8[c] | des4 bes aes2 |
  aes4 bes8[aes] 4 bes8[aes] | 4 des des(bes) | aes2 c | des1 |
}

alto = \relative {
  \autoBeamOff
  f'4 ges8[f] 4 ges8[f] | 4 4 2 | 4 ees4 2 | ges4 f4 2 |
  f4 ges8[f] 4 ges8[f] | 4 4 4(aes) | 2 g | aes4 ees4 4 4 |
  ges4 4 4 f8[ees] | f4 ges f2 | ges4 4 4 f8[ees] | f4 ges f2 |
  f4 g8[f] 4 g8[f] | 4 aes g2 | f ges | f4 ges f2 |
}

tenor = \relative {
  \autoBeamOff
  des'4 4 4 4 | 4 aes des2 | c4 4 2 | des4 4 2 |
  des4 4 4 4 | 4 aes des(f) | ees4 4 des4 4 | c1 |
  c4 4 4 des8[aes] | 4 fes4 4(aes) | c4 c c des8[aes] | 4 des4 2 |
  des4 4 4 4 | aes ces bes(des) | 4 4 ees aes, | 4 bes aes2 |
}

bass = \relative {
  \autoBeamOff
  des4 4 4 4 | 4 4 2 | aes4 4 2 | des4 4 2 |
  des4 4 4 4 | 4 4 2 | ees2 2 | aes4 4 4 4 |
  aes4 4 4 4 | des,4 4 2 | aes'4 4 4 4 | des,4 4 2 |
  des4 4 4 4 | 4 4 ges2 | aes4 4 aes,4 4 | des1 |
}

chorusSop = \lyricmode {
}

chorusAlto = \lyricmode {
  \tiny
  \repeat unfold 22 \skip 1
  On -- ward! on -- ward!
  \repeat unfold 23 \skip 1
  On -- ward go!
}

chorusTenor = \lyricmode {
  \tiny
  \repeat unfold 46 \skip 1
  On -- ward, on -- ward! on -- ward go!
}

chorusBass = \lyricmode {
  \tiny
  \repeat unfold 20 \skip 1
  On -- ward! On -- ward! on -- ward!
  \repeat unfold 21 \skip 1
  On -- ward! on -- ward go!
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Trust -- ing in the Lord thy God,
  On -- ward go! on -- ward go!
  Hold -- ing fast His pro -- mised word,
  On -- ward go!
  Ne'er de -- ny His wor -- thy name,
  Tho' it bring re -- proach and shame;
  Spread -- ing still His won -- drous fame,
  On -- ward go!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Has He called them to the plough?
  On -- ward go! on -- ward go!
  Night is com -- ing, serve Him now;
  On -- ward go!
  Faith and love in ser -- vice blend;
  On His migh -- ty arm de -- pend;
  Stand -- ing fast un -- til the end,
  On -- ward go!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Has He giv'n thee gold -- en grain?
  On -- ward go! on -- ward go!
  Sow, and thou shalt reap a -- gain;
  On -- ward go!
  To thy Mas -- ter's gate re -- pair,
  Watch -- ing be and wait -- ing there;
  He will hear and an -- swer prayer;
  On -- ward go!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Has He said the end is near?
  On -- ward go! on -- ward go!
  Serv -- ing Him with ho -- ly fear,
  On -- ward go!
  Christ thy por -- tion, Christ thy stay,
  heaven -- ly bread up -- on the way,
  Lead -- ing on to glo -- rious day;
  On -- ward go!
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  In this lit -- tle mo -- ment then,
  On -- ward go! on -- ward go!
  In thy ways ac -- know -- ledge Him;
  On -- ward go!
  Let His mind be found in thee:
  Let His will thy plea -- sure be;
  Thus in life and lib -- er -- ty,
  On -- ward go!
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "Trust" "ing " "in " "the " "Lord " "thy " "God, "
  "\nOn" "ward " "go! " on "ward " "go! "
  "\nHold" "ing " "fast " "His " pro "mised " "word, "
  "\nOn" "ward " "go! "
  "\nNe'er " de "ny " "His " wor "thy " "name, "
  "\nTho' " "it " "bring " re "proach " "and " "shame; "
  "\nSpread" "ing " "still " "His " won "drous " "fame, "
  "\nOn" "ward " "go!\n"

  \set stanza = "2."
  "\nHas " "He " "called " "them " "to " "the " "plough? "
  "\nOn" "ward " "go! " on "ward " "go! "
  "\nNight " "is " com "ing, " "serve " "Him " "now; "
  "\nOn" "ward " "go! "
  "\nFaith " "and " "love " "in " ser "vice " "blend; "
  "\nOn " "His " migh "ty " "arm " de "pend; "
  "\nStand" "ing " "fast " un "til " "the " "end, "
  "\nOn" "ward " "go!\n"

  \set stanza = "3."
  "\nHas " "He " "giv'n " "thee " gold "en " "grain? "
  "\nOn" "ward " "go! " on "ward " "go! "
  "\nSow, " "and " "thou " "shalt " "reap " a "gain; "
  "\nOn" "ward " "go! "
  "\nTo " "thy " Mas "ter's " "gate " re "pair, "
  "\nWatch" "ing " "be " "and " wait "ing " "there; "
  "\nHe " "will " "hear " "and " an "swer " "prayer; "
  "\nOn" "ward " "go!\n"

  \set stanza = "4."
  "\nHas " "He " "said " "the " "end " "is " "near? "
  "\nOn" "ward " "go! " on "ward " "go! "
  "\nServ" "ing " "Him " "with " ho "ly " "fear, "
  "\nOn" "ward " "go! "
  "\nChrist " "thy " por "tion, " "Christ " "thy " "stay, "
  "\nheaven" "ly " "bread " up "on " "the " "way, "
  "\nLead" "ing " "on " "to " glo "rious " "day; "
  "\nOn" "ward " "go!\n"

  \set stanza = "5."
  "\nIn " "this " lit "tle " mo "ment " "then, "
  "\nOn" "ward " "go! " on "ward " "go! "
  "\nIn " "thy " "ways " ac know "ledge " "Him; "
  "\nOn" "ward " "go! "
  "\nLet " "His " "mind " "be " "found " "in " "thee: "
  "\nLet " "His " "will " "thy " plea "sure " "be; "
  "\nThus " "in " "life " "and " lib er "ty, "
  "\nOn" "ward " "go! "
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "Trust" "ing " "in " "the " "Lord " "thy " "God, "
  "\nOn" "ward " "go! " on "ward " "go! "
  "\nHold" "ing " "fast " "His " pro "mised " "word, "
  "\nOn" "ward, " On "ward! " on "ward! "
  "\nNe'er " de "ny " "His " wor "thy " "name, "
  "\nTho' " "it " "bring " re "proach " "and " "shame; "
  "\nSpread" "ing " "still " "His " won "drous " "fame, "
  "\nOn" "ward, " on "ward " "go!\n"

  \set stanza = "2."
  "\nHas " "He " "called " "them " "to " "the " "plough? "
  "\nOn" "ward " "go! " on "ward " "go! "
  "\nNight " "is " com "ing, " "serve " "Him " "now; "
  "\nOn" "ward, " On "ward! " on "ward! "
  "\nFaith " "and " "love " "in " ser "vice " "blend; "
  "\nOn " "His " migh "ty " "arm " de "pend; "
  "\nStand" "ing " "fast " un "til " "the " "end, "
  "\nOn" "ward, " on "ward " "go!\n"

  \set stanza = "3."
  "\nHas " "He " "giv'n " "thee " gold "en " "grain? "
  "\nOn" "ward " "go! " on "ward " "go! "
  "\nSow, " "and " "thou " "shalt " "reap " a "gain; "
  "\nOn" "ward, " On "ward! " on "ward! "
  "\nTo " "thy " Mas "ter's " "gate " re "pair, "
  "\nWatch" "ing " "be " "and " wait "ing " "there; "
  "\nHe " "will " "hear " "and " an "swer " "prayer; "
  "\nOn" "ward, " on "ward " "go!\n"

  \set stanza = "4."
  "\nHas " "He " "said " "the " "end " "is " "near? "
  "\nOn" "ward " "go! " on "ward " "go! "
  "\nServ" "ing " "Him " "with " ho "ly " "fear, "
  "\nOn" "ward, " On "ward! " on "ward! "
  "\nChrist " "thy " por "tion, " "Christ " "thy " "stay, "
  "\nheaven" "ly " "bread " up "on " "the " "way, "
  "\nLead" "ing " "on " "to " glo "rious " "day; "
  "\nOn" "ward, " on "ward " "go!\n"

  \set stanza = "5."
  "\nIn " "this " lit "tle " mo "ment " "then, "
  "\nOn" "ward " "go! " on "ward " "go! "
  "\nIn " "thy " "ways " ac know "ledge " "Him; "
  "\nOn" "ward, " On "ward! " on "ward! "
  "\nLet " "His " "mind " "be " "found " "in " "thee: "
  "\nLet " "His " "will " "thy " plea "sure " "be; "
  "\nThus " "in " "life " "and " lib er "ty, "
  "\nOn" "ward, " on "ward " "go! "
}

wordsMidiTenor = \lyricmode {
  \set stanza = "1."
  "Trust" "ing " "in " "the " "Lord " "thy " "God, "
  "\nOn" "ward " "go! " on "ward " "go! "
  "\nHold" "ing " "fast " "His " pro "mised " "word, "
  "\nOn" "ward, " on "ward " "go! "
  "\nNe'er " de "ny " "His " wor "thy " "name, "
  "\nTho' " "it " "bring " re "proach " "and " "shame; "
  "\nSpread" "ing " "still " "His " won "drous " "fame, "
  "\nOn" "ward, " on "ward, " on "ward " "go!\n"

  \set stanza = "2."
  "\nHas " "He " "called " "them " "to " "the " "plough? "
  "\nOn" "ward " "go! " on "ward " "go! "
  "\nNight " "is " com "ing, " "serve " "Him " "now; "
  "\nOn" "ward, " on "ward " "go! "
  "\nFaith " "and " "love " "in " ser "vice " "blend; "
  "\nOn " "His " migh "ty " "arm " de "pend; "
  "\nStand" "ing " "fast " un "til " "the " "end, "
  "\nOn" "ward, " on "ward, " on "ward " "go!\n"

  \set stanza = "3."
  "\nHas " "He " "giv'n " "thee " gold "en " "grain? "
  "\nOn" "ward " "go! " on "ward " "go! "
  "\nSow, " "and " "thou " "shalt " "reap " a "gain; "
  "\nOn" "ward, " on "ward " "go! "
  "\nTo " "thy " Mas "ter's " "gate " re "pair, "
  "\nWatch" "ing " "be " "and " wait "ing " "there; "
  "\nHe " "will " "hear " "and " an "swer " "prayer; "
  "\nOn" "ward, " on "ward, " on "ward " "go!\n"

  \set stanza = "4."
  "\nHas " "He " "said " "the " "end " "is " "near? "
  "\nOn" "ward " "go! " on "ward " "go! "
  "\nServ" "ing " "Him " "with " ho "ly " "fear, "
  "\nOn" "ward, " on "ward " "go! "
  "\nChrist " "thy " por "tion, " "Christ " "thy " "stay, "
  "\nheaven" "ly " "bread " up "on " "the " "way, "
  "\nLead" "ing " "on " "to " glo "rious " "day; "
  "\nOn" "ward, " on "ward, " on "ward " "go!\n"

  \set stanza = "5."
  "\nIn " "this " lit "tle " mo "ment " "then, "
  "\nOn" "ward " "go! " on "ward " "go! "
  "\nIn " "thy " "ways " ac know "ledge " "Him; "
  "\nOn" "ward, " on "ward " "go! "
  "\nLet " "His " "mind " "be " "found " "in " "thee: "
  "\nLet " "His " "will " "thy " plea "sure " "be; "
  "\nThus " "in " "life " "and " lib er "ty, "
  "\nOn" "ward, " on "ward, " on "ward " "go! "
}

wordsMidiBass = \lyricmode {
  \set stanza = "1."
  "Trust" "ing " "in " "the " "Lord " "thy " "God, "
  "\nOn" "ward " "go! " on "ward " "go! "
  "\nHold" "ing " "fast " "His " pro "mised " "word, "
  "\nOn" "ward! " On "ward! " on "ward! "
  "\nNe'er " de "ny " "His " wor "thy " "name, "
  "\nTho' " "it " "bring " re "proach " "and " "shame; "
  "\nSpread" "ing " "still " "His " won "drous " "fame, "
  "\nOn" "ward, " on "ward " "go!\n"

  \set stanza = "2."
  "\nHas " "He " "called " "them " "to " "the " "plough? "
  "\nOn" "ward " "go! " on "ward " "go! "
  "\nNight " "is " com "ing, " "serve " "Him " "now; "
  "\nOn" "ward! " On "ward! " on "ward! "
  "\nFaith " "and " "love " "in " ser "vice " "blend; "
  "\nOn " "His " migh "ty " "arm " de "pend; "
  "\nStand" "ing " "fast " un "til " "the " "end, "
  "\nOn" "ward, " on "ward " "go!\n"

  \set stanza = "3."
  "\nHas " "He " "giv'n " "thee " gold "en " "grain? "
  "\nOn" "ward " "go! " on "ward " "go! "
  "\nSow, " "and " "thou " "shalt " "reap " a "gain; "
  "\nOn" "ward! " On "ward! " on "ward! "
  "\nTo " "thy " Mas "ter's " "gate " re "pair, "
  "\nWatch" "ing " "be " "and " wait "ing " "there; "
  "\nHe " "will " "hear " "and " an "swer " "prayer; "
  "\nOn" "ward, " on "ward " "go!\n"

  \set stanza = "4."
  "\nHas " "He " "said " "the " "end " "is " "near? "
  "\nOn" "ward " "go! " on "ward " "go! "
  "\nServ" "ing " "Him " "with " ho "ly " "fear, "
  "\nOn" "ward! " On "ward! " on "ward! "
  "\nChrist " "thy " por "tion, " "Christ " "thy " "stay, "
  "\nheaven" "ly " "bread " up "on " "the " "way, "
  "\nLead" "ing " "on " "to " glo "rious " "day; "
  "\nOn" "ward, " on "ward " "go!\n"

  \set stanza = "5."
  "\nIn " "this " lit "tle " mo "ment " "then, "
  "\nOn" "ward " "go! " on "ward " "go! "
  "\nIn " "thy " "ways " ac know "ledge " "Him; "
  "\nOn" "ward! " On "ward! " on "ward! "
  "\nLet " "His " "mind " "be " "found " "in " "thee: "
  "\nLet " "His " "will " "thy " plea "sure " "be; "
  "\nThus " "in " "life " "and " lib er "ty, "
  "\nOn" "ward, " on "ward " "go! "
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

#(set-global-staff-size 18)

\book {
  \bookOutputSuffix "repeat"
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
            \new Lyrics \lyricsto alignerA \chorusAlto
            \new Lyrics \lyricsto "alignerS" \wordsOne
            \new Lyrics \lyricsto "alignerS" \wordsTwo
            \new Lyrics \lyricsto "alignerS" \wordsThree
            \new Lyrics \lyricsto "alignerS" \wordsFour
            \new Lyrics \lyricsto "alignerS" \wordsFive
            \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \chorusSop
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
            \new NullVoice = alignerB { \bass  }
            \addlyrics \chorusBass
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusTenor
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
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new NullVoice = "alignerA" { \repeat unfold \verses \alto }
            \addlyrics {\repeat unfold \verses \chorusAlto}
            \new Lyrics \lyricsto "alignerS" { \wordsOne
                                               \wordsTwo
                                               \wordsThree
                                               \wordsFour
                                               \wordsFive
                                             }
            \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS {\repeat unfold \verses \chorusSop}
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
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusTenor }
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
