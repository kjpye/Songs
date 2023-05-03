\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Fruit of the Spirit"
  subtitle    = "Sankey No. 612"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. Mountain."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
  meter       = \markup\smallCaps "11.10."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" }    s1*5
  \textMark \markup { \box \bold "B" }    s1*5 s2
  \textMark \markup { \box \bold "C" } s2 s1*5
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'2^\markup\italic Prayerfully. fis4 g | aes2 g | 4 f ees d | 2 ees | bes'2 a4 bes |
  c2 bes | 4 aes aes g | f1 | g2 4 aes | bes2 ees | d4 c \bar "|" \break
  bes4 aes | g2 2 | bes2 c4 bes | aes2 g | f4 ees ees d | ees1
}

alto = \relative {
  \autoBeamOff
  ees'2 4 4 | 2 2 | c4 4 bes bes | 2 2 | ees4(g) fis g |
  fis2 g | 4 f f ees | d1 | ees2 4 d | ees2 g | aes4 ges
  f4 ees | f2 ees | 2 4 4 | 2 2 | c4 4 bes bes | 1
}

tenor = \relative {
  \autoBeamOff
  bes2 a4 bes | c2 bes | 4 aes g f | f(aes) g2 | 4(ees') c bes |
  a2 bes | 4 4 4 4 | 1 | 2 4 4 | 2 2 | 4 a
  bes4 c | d2 c | g2 4 4 | aes2 bes | c4 aes g f8[aes] | g1
}

bass = \relative {
  \autoBeamOff
  ees2 4 4 | 2 2 | a,4 4 bes bes | 2 ees | 2 4 4 |
  ees2 2 | d4 4 ees ees | bes1 | ees2 4 f | g2 ees | f4 ees
  d4 c | b2 c | des2 4 4 | c2 bes | aes4 f bes bes | ees1
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Thrice- bless -- ed Spi -- rit! Giv -- er of sal -- va -- tion,
  Pur -- chased by Je -- sus on the cross of shame;
  Dwell in our hearts; trans -- form them with Thy beau -- ty—
  Fair -- est a -- dorn -- ing of our Sa -- viour's name.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Thy seven -- fold grace be -- stow up -- on us free -- ly;
  \markup\italic Love, deep and full, to God and all man -- kind;
  \markup\italic Joy in the Lord, 'mid ev -- 'ry earth -- ly sor -- row;
  \markup\italic Peace, calm and sweet, that guard -- eth heart and mind.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Make us \markup\italic long -- \markup\italic suf -- \markup\italic f'ring, 'mid earth's pro -- vo -- ca -- tions;
  \markup\italic Gen -- \markup\italic tle -- \markup\italic ness give us, when en -- dur -- ing wrong;
  \markup\italic Good -- \markup\italic ness im -- part, that we e'en foes may suc -- cour;
  \markup\italic Faith -- \markup\italic ful -- \markup\italic ness grant, to change our toll to song.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  \markup\italic Meek -- \markup\italic ness be -- stow, with hum -- ble self- a -- base -- ment,
  And \markup\italic self -- \markup\italic con -- \markup\italic trol, through Thy con -- trol -- ling might;
  And as we list to ev -- 'ry call of du -- ty.
  May we do all as in Thy search -- ing sight.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Then with the gift of ho -- li -- ness with -- in us;
  We not less hu -- man, but made more di -- vine;
  Our lives re -- plete with heaven's su -- per -- nal beau -- ty,
  Ev -- er de -- clare— \markup\italic That beau -- ty, Lord, is Thine.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Thrice" bless "ed " Spi "rit! " Giv "er " "of " sal va "tion, "
  "\nPur" "chased " "by " Je "sus " "on " "the " "cross " "of " "shame; "
  "\nDwell " "in " "our " "hearts; " trans "form " "them " "with " "Thy " beau "ty— "
  "\nFair" "est " a dorn "ing " "of " "our " Sa "viour's " "name.\n"

  \set stanza = "2."
  "\nThy " seven "fold " "grace " be "stow " up "on " "us " free "ly; "
  "\nLove, " "deep " "and " "full, " "to " "God " "and " "all " man "kind; "
  "\nJoy " "in " "the " "Lord, " "'mid " ev "'ry " earth "ly " sor "row; "
  "\nPeace, " "calm " "and " "sweet, " "that " guard "eth " "heart " "and " "mind.\n"

  \set stanza = "3."
  "\nMake " "us " long suf "f'ring, " "'mid " "earth's " pro vo ca "tions; "
  "\nGen" tle "ness " "give " "us, " "when " en dur "ing " "wrong; "
  "\nGood" "ness " im "part, " "that " "we " "e'en " "foes " "may " suc "cour; "
  "\nFaith" ful "ness " "grant, " "to " "change " "our " "toll " "to " "song.\n"

  \set stanza = "4."
  "\nMeek" "ness " be "stow, " "with " hum "ble " self a base "ment, "
  "\nAnd " self con "trol, " "through " "Thy " con trol "ling " "might; "
  "\nAnd " "as " "we " "list " "to " ev "'ry " "call " "of " du "ty. "
  "\nMay " "we " "do " "all " "as " "in " "Thy " search "ing " "sight.\n"

  \set stanza = "5."
  "\nThen " "with " "the " "gift " "of " ho li "ness " with "in " "us; "
  "\nWe " "not " "less " hu "man, " "but " "made " "more " di "vine; "
  "\nOur " "lives " re "plete " "with " "heaven's " su per "nal " beau "ty, "
  "\nEv" "er " de "clare— " "That " beau "ty, " "Lord, " "is " "Thine. "
}

wordsMidiMen = \lyricmode {
}

\book {
  \bookOutputSuffix "midi"
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
            \addlyrics \wordsMidiMen
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
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
      #(layout-set-staff-size 20)
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
                                              \wordsFive  \chorus
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
