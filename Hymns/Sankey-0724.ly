 \version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "How Dear to my Heart!"
  subtitle    = "Sankey No. 724"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup{Arr. \smallCaps "Ira D. Sankey."}
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby"
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 6/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" }  s4  s1.*2 s2.
  \textMark \markup { \box \bold "B" }  s2. s1.*2
  \textMark \markup { \box \bold "C" }      s1.*2 s1 s4
  \textMark \markup { \box \bold "D" }  s4  s1.   s1 s4
  \textMark \markup { \box \bold "E" }  s4  s1.   s1 s4
  s4 s1.
  \textMark \markup { \box \bold "C’" }     s1.*2 s1 s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'4 | c'4. bes8 aes4 c4. bes8 aes4 | bes4 aes bes c8 aes4. 4 | 4. g8 f4 \bar "|" \break
  ees4 aes bes | c des c bes2 ees,4 | c'4. bes8 aes4 c4. bes8 aes4 |
  bes4 aes bes c8 aes4. 4 | 4. g8 f4 ees aes c | bes4. aes8 bes4 aes2
  \section \sectionLabel \markup\smallCaps "Chorus." \break
  ees4 | 4. 8 4 4. 8 4 | 4 4 4 4 4 \bar "|" \break
  ees4 | 4. 8 4 4 4 4 | f ees d ees2 
  ees4 | c'4. bes8 aes4 c4. bes8 aes4 |
  bes4 aes bes c8 aes4. 4 | 4. g8 f4 ees aes c | bes4. aes8 bes4 aes2
}

alto = \relative {
  \autoBeamOff
  c'4 | ees4. des8 c4 ees4. 8 4 | des4 c ees4 8 c4. ges'4 | f4. ees8 des4
  c4 ees ees | 4 4 4 2 4 | 4. des8 c4 ees4. 8 4 |
  des4 c ees4 8 c4. ges'4 | f4. ees8 des4 c c ees | des4. c8 des4 c2 \section
  ees4 | 4. 8 4 4. 8 4 | 4 4 4 4 4
  es4 | 4. 8 4 4 4 4 | f ees d ees2
  ees4 | 4. des8 c4 ees4. 8 4 |
  des4 c ees4 8 c4. ges'4 | f4. ees8 des4 c c ees | des4. c8 des4 c2
}

tenor = \relative {
  \autoBeamOff
  aes4 | 4. ees8 4 aes4. g8 aes4 | g4 aes g aes8 4. 4 | 4. 8 4
  aes4 4 g | aes bes aes g2 ees4 | aes4. ees8 4 aes4. g8 aes4
  g4 aes g aes8 4. 4 | 4. 8 4 4 ees aes | g4. aes8 g4 aes2 \section
  ees4 | g4. f8 g4 aes4. g8 aes4 | bes g bes bes aes
  aes4 | g4. aes8 g4 g bes4 4 | c bes aes g2
  ees4 aes4. ees8 4 aes4. g8 aes4
  g4 aes g aes8 4. 4 | 4. 8 4 4 ees aes | g4. aes8 g4 aes2
}

bass = \relative {
  \autoBeamOff
  aes,4 | 4. 8 4 4. bes8 c4 | ees4 4 4 aes8 4. c,4 | des4. 8 4
  aes4 c ees | aes g aes g2 ees4 | aes,4. 8 4 4. bes8 c4 |
  ees4 4 4 aes8 4. c,4 | des4. 8 4 aes4 4 4 | ees'4. 8 4 aes,2 \section
  ees'4 | 4. 8 4 4. 8 4 | 4 4 g aes aes
  aes4 | ees4. 8 4 4 4 g, | aes4 bes bes ees2
  ees4 | aes,4. 8 4 4. bes8 c4 |
  ees4 4 4 aes8 4. c,4 | des4. 8 4 aes4 4 4 | ees'4. 8 4 aes,2 \section
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  “Fear not! I am with thee,”
  Thy Strength and Re -- deem -- er,
  The Rock where in safe -- ty
  My own shall a -- bide;
  I'll nev -- er for -- sake thee—
  My Word hath de -- clared it:
  I'll nev -- er for -- sake thee,
  what -- ev -- er be -- tide.
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  How dear to my heart, when the path -- way is lone -- ly,
  That won -- der -- ful prom -- ise of Je -- sus my Lord—
  That mes -- sage of mer -- cy, of love and com -- pas -- sion,
  I read on the page of His own bles -- sed Word:
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  When chilled by the waves that are sur -- ging a -- round me,
  And clouds of af -- flic -- tion like bil -- lows may roll,
  I'll cling to His word, which can nev -- er be bro -- ken.
  And joy in the com -- fort it brings to my soul.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Tho' tried in the fur -- nace, my faith shall not fal -- ter,
  But, trust -- ing in Je -- sus, the cross I will bear;
  And ho -- ping, en -- dur -- ing, be -- liev -- ing, o -- bey -- ing,
  I'll cling to His prom -- ise, and rest in His care.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "How " "dear " "to " "my " "heart, " "when " "the " path "way " "is " lone "ly, "
  "\nThat " won der "ful " prom "ise " "of " Je "sus " "my " "Lord— "
  "\nThat " mes "sage " "of " mer "cy, " "of " "love " "and " com pas "sion, "
  "\nI " "read " "on " "the " "page " "of " "His " "own " bles "sed " "Word: "
  "\n“Fear " "not! " "I " "am " "with " "thee,” "
  "\nThy " "Strength " "and " Re deem "er, "
  "\nThe " "Rock " "where " "in " safe "ty "
  "\nMy " "own " "shall " a "bide; "
  "\nI'll " nev "er " for "sake " "thee— "
  "\nMy " "Word " "hath " de "clared " "it: "
  "\nI'll " nev "er " for "sake " "thee, "
  "\nwhat" ev "er " be "tide.\n"

  \set stanza = "2."
  "\nWhen " "chilled " "by " "the " "waves " "that " "are " sur "ging " a "round " "me, "
  "\nAnd " "clouds " "of " af flic "tion " "like " bil "lows " "may " "roll, "
  "\nI'll " "cling " "to " "His " "word, " "which " "can " nev "er " "be " bro "ken. "
  "\nAnd " "joy " "in " "the " com "fort " "it " "brings " "to " "my " "soul. "
  "\n“Fear " "not! " "I " "am " "with " "thee,” "
  "\nThy " "Strength " "and " Re deem "er, "
  "\nThe " "Rock " "where " "in " safe "ty "
  "\nMy " "own " "shall " a "bide; "
  "\nI'll " nev "er " for "sake " "thee— "
  "\nMy " "Word " "hath " de "clared " "it: "
  "\nI'll " nev "er " for "sake " "thee, "
  "\nwhat" ev "er " be "tide.\n"

  \set stanza = "3."
  "\nTho' " "tried " "in " "the " fur "nace, " "my " "faith " "shall " "not " fal "ter, "
  "\nBut, " trust "ing " "in " Je "sus, " "the " "cross " "I " "will " "bear; "
  "\nAnd " ho "ping, " en dur "ing, " be liev "ing, " o bey "ing, "
  "\nI'll " "cling " "to " "His " prom "ise, " "and " "rest " "in " "His " "care. "
  "\n“Fear " "not! " "I " "am " "with " "thee,” "
  "\nThy " "Strength " "and " Re deem "er, "
  "\nThe " "Rock " "where " "in " safe "ty "
  "\nMy " "own " "shall " a "bide; "
  "\nI'll " nev "er " for "sake " "thee— "
  "\nMy " "Word " "hath " de "clared " "it: "
  "\nI'll " nev "er " for "sake " "thee, "
  "\nwhat" ev "er " be "tide. "
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

#(set-global-staff-size 19)

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

#(set-global-staff-size 20)

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

#(set-global-staff-size 20)

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
