\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Knocking, Knocking, Who is There?"
  subtitle    = "Sankey No. 422"
  subsubtitle = "Sankey 880 No. 19"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. F. Root."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup{\smallCaps "Mrs. Harriet B. Stowe" "(adapted)"}
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s2.*4
  \mark \markup { \box "C" } s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  \time 4/4
  g'8^\markup\italic "With feeling." 8 r4 8 8 r4
  bes4 aes g r
  f8 8 r4 8 8 r4
  aes4-. g-. f-. r4 \time 3/4
  ees8 f g4 f % B
  g8 aes bes4 g
  ees8 f g4 aes
  bes8 c f,2
  ees8 f g4 f % C
  g8 aes bes4 g
  ees8 d c4 f
  g8 f ees2
}

alto = \relative {
  \autoBeamOff
  ees'8 8 r4 8 8 r4
  ees4 4 4 r
  d8 8 r4 8 8 r4
  f4-. ees-. d-. r
  ees8 bes ees4 d % B
  ees8 f g4 ees
  ees8 d ees4 f
  g8 aes d,2
  ees8 bes ees4 d % C
  ees8 f g4 ees
  bes8 bes c4 c
  ees8 d ees2
}

tenor = \relative {
  \autoBeamOff
  bes8 8 r4 8 8 r4
  c4 4 bes r
  bes8 8 r4 8 8 r4
  bes4-. 4-. 4-. r
  g8 bes8 4 4 % B
  bes8 8 4 4
  g8 bes8 4 4
  bes8 8 2
  g8 bes bes4 4 % C
  bes8 8 4 4
  bes8 8 aes4 c
  bes8 aes g2
}

bass = \relative {
  \autoBeamOff
  ees8 8 r4 8 8 r4
  ees4 4 4 r
  bes8 8 r4 8 8 r4
  bes4-. 4-. 4-. r
  ees8 8 4 bes % B
  ees8 8 4 4
  ees8 bes ees4 4
  ees8 8 bes2
  ees8 8 4 bes % C
  ees8 8 4 4
  g,8 8 aes4 4
  bes8 8 ees2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Knock -- ing, knock -- ing, who is there?
  Wait -- ing, wait -- ing, oh, how fair!
  'Tis a Pil -- grim, strange and king -- ly,
  Ne -- ver such was seen be -- fore;
  Ah, my soul, for such a won -- der
  Wilt thou not un -- do the door?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Knock -- ing, knock -- ing, still he's there?
  Wait -- ing, wait -- ing, won -- drous fair!
  But the door is hard to o -- pen,
  For the weeds and i -- vy -- vine.
  With their dark and cling -- ing ten -- drils,
  Ev -- er round the hin -- ges twine.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Knock -- ing, knock -- ing, what, still there?
  Wait -- ing, wait -- ing, grand and fair!
  Yes, the pier -- ced hand still knock -- eth,
  And be -- neath the crown -- ed hair
  Beam the pa -- tient eyes, so ten -- der,
  Of thy Sa -- viour wait -- ing there.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Knock" "ing, " knock "ing, " "who " "is " "there? "
  "\nWait" "ing, " wait "ing, " "oh, " "how " "fair! "
  "\n'Tis " "a " Pil "grim, " "strange " "and " king "ly, "
  "\nNe" "ver " "such " "was " "seen " be "fore; "
  "\nAh, " "my " "soul, " "for " "such " "a " won "der "
  "\nWilt " "thou " "not " un "do " "the " "door? "

  \set stanza = "2."
  "\nKnock" "ing, " knock "ing, " "still " "he's " "there? "
  "\nWait" "ing, " wait "ing, " won "drous " "fair! "
  "\nBut " "the " "door " "is " "hard " "to " o "pen, "
  "\nFor " "the " "weeds " "and " i vy "vine. "
  "\nWith " "their " "dark " "and " cling "ing " ten "drils, "
  "\nEv" "er " "round " "the " hin "ges " "twine. "

  \set stanza = "3."
  "\nKnock" "ing, " knock "ing, " "what, " "still " "there? "
  "\nWait" "ing, " wait "ing, " "grand " "and " "fair! "
  "\nYes, " "the " pier "ced " "hand " "still " knock "eth, "
  "\nAnd " be "neath " "the " crown "ed " "hair "
  "\nBeam " "the " pa "tient " "eyes, " "so " ten "der, "
  "\nOf " "thy " Sa "viour " wait "ing " "there. "
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
            \new Voice \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor } { \global \bass }
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

\book {
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
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
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
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
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
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
