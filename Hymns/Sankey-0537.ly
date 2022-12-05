\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Lead me, Saviour!"
  subtitle    = "Sankey No. 537"
  subsubtitle = "N. H. No. 26"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup{Arr. \smallCaps "Frank M. Davis."}
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps ""
  meter       = \markup\smallCaps "7s."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key des \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" }     s1*2 s2
  \textMark \markup { \box \bold "B" } s2  s1*2
  \textMark \markup { \box \bold "C" }     s1*3
  \textMark \markup { \box \bold "D" }     s1*4
  \textMark \markup { \box \bold "E" }     s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  aes'4. f8 aes des c bes | aes2. r4 | ges4. f8 \bar "|" \break
  ees8 bes' aes ges | f2. r4 | aes4. 8 8 f aes des |
  bes2. r4 | c4. des8 c bes aes g | aes2.\fermata r4 |
  aes2^\markup\smallCaps Chorus. f4 r | des'2 aes4 r | f'4. ees8 des bes aes f | ees4^\< (f ges2\fermata\! ) |
  f4. 8 8 8 ges aes | bes2. c8 des | aes4 f ges c, | c2.\omit\dim^\markup\italic "rit. e dim." r4\omit\p |
}

alto = \relative {
  \autoBeamOff
  f'4. ees8 f f aes ges | f4 ges8 8 f4 r | ees4. des8
  c8 ges' f ees | des4 8 8 4 r | f4. 8 8 des f aes |
  ges4 8 8 4 r | ees4. f8 ees des c bes | c8[des] ees f ges4\fermata r |
  f2 des4 r | f2 4 r | aes4. 8 8 ges des des | c4^\<( d ees2\fermata\!) |
  des4. 8 8 8 c des | 4(ges2) e8 8 | f4 des ees aes, | aes\omit\dim bes8 8 c4 r\omit\p
}

tenor = \relative {
  \autoBeamOff
  des'4. 8 8 aes aes bes16[c] | des4 ees8 8 des4 r | aes4. 8
  aes8 8 8 8 | 4 8 8 4 r | des4. 8 8 aes des des |
  des4 8 8 4 r | aes4. 8 g g aes bes | aes[bes] c des ees4\fermata r |
  des2 aes4 r | aes2 des4 r | 4. c8 des8 8 8 aes | 4 8 8 2\fermata |
  aes4. 8 8 8 8 des | 4 8 8 4 8 8 | 4 aes aes ges | f4 ges8 8 f4 r |
}

bass = \relative {
  \autoBeamOff
  des4. 8 8 8 8 8 | 4 c8 8 des4 r | aes'4. 8
  aes,8 8 8 c | des4 8 8 4 r | 4. 8 8 8 8 8
  ges4 8 8 4 r | aes4. 8 ees8 8 8 8 | aes,4 8 8 4\fermata r |
  des2 4 r | 2 4 r | 4. ees8 f ges f des | aes4 8 8 2\fermata |
  des4. 8 8 8 ees f | ges4 8 8 4 g8 8 | aes4 4 aes, aes | des2. r4 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Lead me, lead me,
  Sa -- viour lead me lest I stray; __
  Gen -- tly down the stream of time, __
  Lead me, Sa -- viour, all the way. __
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _
  \set stanza = "1." lest I stray.
  _ _ _ _ _ _ _ all the way;
  _ _ _ _ _ _ _ by Thy side,
  _ _ _ _ _ _ _ love a -- bide.
  _ _ _ _ _ _ _ _ _ _ _ lest I stray;
  _ _ _ _ _ _ _
  stream of time, _ _ _ _ _ _ _
  all the way.
}

chorusMenSingle = \lyricmode {
  _ _ _ _ _ _ _
  \set stanza = "1." lest I stray.
  _ _ _ _ _ _ _ all the way;
  _ _ _ _ _ _ _ by Thy side,
  _ _ _ _ _ _ _ love a -- bide.
  _ _ _ _ _ _ _ _ _ _ _ lest I stray;
  _ _ _ _ _ _ _
  stream of time, _ _ _ _ _ _ _
  all the way.
  
  _ _ _ _ _ _ _
  \set stanza = "2." of my soul.
  _ _ _ _ _ _ _ bil -- lows roll,
  _ _ _ _ _ _ _ Thou art migh,
  _ _ _ _ _ _ _ I re -- ly.
  _ _ _ _ _ _ _ _ _ _ _ lest I stray;
  _ _ _ _ _ _ _
  stream of time, _ _ _ _ _ _ _
  all the way.
  
  _ _ _ _ _ _ _
  \set stanza = "3." till at last,
  _ _ _ _ _ _ _ life is past,
  _ _ _ _ _ _ _ land of day,
  _ _ _ _ _ _ _ wiped a -- way.
  _ _ _ _ _ _ _ _ _ _ _ lest I stray;
  _ _ _ _ _ _ _
  stream of time, _ _ _ _ _ _ _
  all the way.
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Sa -- viour lead me lest I stray, __
  Gen -- tly lead me all the way; __
  I am safe when by Thy side, __
  I would in Thy love a -- bide. __
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Thou the re -- fuge of my soul, __
  When life's storm -- y bil -- lows roll, __
  I am safe when Thou art nigh, __
  On Thy mer -- cy I re -- ly. __
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Sa -- viour lead me, till at last, __
  When the storm of life is past, __
  I shall reach the land of day, __
  Where all tears are wiped a -- way. __
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Sa" "viour " "lead " "me " "lest " "I " "stray, "
  "\nGen" "tly " "lead " "me " "all " "the " "way; "
  "\nI " "am " "safe " "when " "by " "Thy " "side, "
  "\nI " "would " "in " "Thy " "love " a "bide. "
  "\nLead " "me, " "lead " "me, "
  "\nSa" "viour " "lead " "me " "lest " "I " "stray; " 
  "\nGen" "tly " "down " "the " "stream " "of " "time, "
  "\nLead " "me, " Sa "viour, " "all " "the " "way.\n"

  \set stanza = "2."
  "\nThou " "the " re "fuge " "of " "my " "soul, "
  "\nWhen " "life's " storm "y " bil "lows " "roll, "
  "\nI " "am " "safe " "when " "Thou " "art " "nigh, "
  "\nOn " "Thy " mer "cy " "I " re "ly. "
  "\nLead " "me, " "lead " "me, "
  "\nSa" "viour " "lead " "me " "lest " "I " "stray; " 
  "\nGen" "tly " "down " "the " "stream " "of " "time, "
  "\nLead " "me, " Sa "viour, " "all " "the " "way.\n"

  \set stanza = "3."
  "\nSa" "viour " "lead " "me, " "till " "at " "last, "
  "\nWhen " "the " "storm " "of " "life " "is " "past, "
  "\nI " "shall " "reach " "the " "land " "of " "day, "
  "\nWhere " "all " "tears " "are " "wiped " a "way. "
  "\nLead " "me, " "lead " "me, "
  "\nSa" "viour " "lead " "me " "lest " "I " "stray; " 
  "\nGen" "tly " "down " "the " "stream " "of " "time, "
  "\nLead " "me, " Sa "viour, " "all " "the " "way. "
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "Sa" "viour " "lead " "me " "lest " "I " "stray, " "lest " "I " "stray, "
  "\nGen" "tly " "lead " "me " "all " "the " "way, " "all " "the " "way; "
  "\nI " "am " "safe " "when " "by " "Thy " "side, " "by " "Thy " "side, "
  "\nI " "would " "in " "Thy " "love " a "bide, " "love " a "bide. "
  "\nLead " "me, " "lead " "me, "
  "\nSa" "viour " "lead " "me " "lest " "I " "stray; "
  "\nGen" "tly " "down " "the " "stream " "of " "time, "
  "\nLead " "me, " Sa "viour, " "all " "the " "way, " "all " "the " "way.\n"

  \set stanza = "2."
  "\nThou " "the " re "fuge " "of " "my " "soul, " "of " "my " "soul, "
  "\nWhen " "life's " storm "y " bil "lows " "roll, " bil "lows " "roll, "
  "\nI " "am " "safe " "when " "Thou " "art " "nigh, " "Thou " "art " "nigh, "
  "\nOn " "Thy " mer "cy " "I " re "ly, " "I " re "ly. "
  "\nLead " "me, " "lead " "me, "
  "\nSa" "viour " "lead " "me " "lest " "I " "stray; "
  "\nGen" "tly " "down " "the " "stream " "of " "time, "
  "\nLead " "me, " Sa "viour, " "all " "the " "way, " "all " "the " "way.\n"

  \set stanza = "3."
  "\nSa" "viour " "lead " "me, " "till " "at " "last, " "till " "at " "last, "
  "\nWhen " "the " "storm " "of " "life " "is " "past, " "life " "is " "past, "
  "\nI " "shall " "reach " "the " "land " "of " "day, " "land " "of " "day, "
  "\nWhere " "all " "tears " "are " "wiped " a "way, " "wiped " a "way. "
  "\nLead " "me, " "lead " "me, "
  "\nSa" "viour " "lead " "me " "lest " "I " "stray; "
  "\nGen" "tly " "down " "the " "stream " "of " "time, "
  "\nLead " "me, " Sa "viour, " "all " "the " "way, " "all " "the " "way. "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Sa" "viour " "lead " "me " "lest " "I " "stray, " "lest " "I " "stray, "
  "\nGen" "tly " "lead " "me " "all " "the " "way, " "all " "the " "way; "
  "\nI " "am " "safe " "when " "by " "Thy " "side, " "by " "Thy " "side, "
  "\nI " "would " "in " "Thy " "love " a "bide, " "love " a "bide. "
  "\nLead " "me, " "lead " "me, "
  "\nSa" "viour " "lead " "me " "lest " "I " "stray, " "lest " "I " "stray; "
  "\nGen" "tly " "down " "the " "stream " "of " "time, " "stream " "of " "time, "
  "\nLead " "me, " Sa "viour, " "all " "the " "way, " "all " "the " "way.\n"

  \set stanza = "2."
  "\nThou " "the " re "fuge " "of " "my " "soul, " "of " "my " "soul, "
  "\nWhen " "life's " storm "y " bil "lows " "roll, " bil "lows " "roll, "
  "\nI " "am " "safe " "when " "Thou " "art " "nigh, " "Thou " "art " "nigh, "
  "\nOn " "Thy " mer "cy " "I " re "ly, " "I " re "ly. "
  "\nLead " "me, " "lead " "me, "
  "\nSa" "viour " "lead " "me " "lest " "I " "stray, " "lest " "I " "stray; "
  "\nGen" "tly " "down " "the " "stream " "of " "time, " "stream " "of " "time, "
  "\nLead " "me, " Sa "viour, " "all " "the " "way, " "all " "the " "way.\n"

  \set stanza = "3."
  "\nSa" "viour " "lead " "me, " "till " "at " "last, " "till " "at " "last, "
  "\nWhen " "the " "storm " "of " "life " "is " "past, " "life " "is " "past, "
  "\nI " "shall " "reach " "the " "land " "of " "day, " "land " "of " "day, "
  "\nWhere " "all " "tears " "are " "wiped " a "way, " "wiped " a "way. "
  "\nLead " "me, " "lead " "me, "
  "\nSa" "viour " "lead " "me " "lest " "I " "stray, " "lest " "I " "stray; "
  "\nGen" "tly " "down " "the " "stream " "of " "time, " "stream " "of " "time, "
  "\nLead " "me, " Sa "viour, " "all " "the " "way, " "all " "the " "way. "
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
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
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMenSingle
        >>
}

\book {
  \bookOutputSuffix "single"
  \score {
    \singlescore
    \layout {
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
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
