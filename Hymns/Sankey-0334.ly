\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "So Near to the Kingdom!"
  subtitle    = "Sankey No. 334"
  subsubtitle = "Sankey 880 No. 326"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "R. Lowry."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
  meter       = \markup\smallCaps "11s."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*4
  \mark \markup { \box "B" }    s2.*4
  \mark \markup { \box "C" }    s2.*5
  \mark \markup { \box "D" }    s2.*5
  \mark \markup { \box "E" }    s2.*5 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4 s2.*21
  s4 \tempo 4=40 s4 \tempo 4=120 s4
  \tempo 4=110 s2. s2
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  bes'4
  bes2 g8. aes16
  bes4 4 g
  f4 ees f
  g2 bes4
  c2 8. d16 % B
  ees4 d c
  bes4 g bes
  f2 bes4
  bes2 g8. aes16 % C
  bes4 g ees
  g4 aes bes
  c2 d4
  ees4. d8 ees4
  c4 aes f % D
  ees4 g4. f8
  ees2. \bar "||"
  bes'2.^\markup\smallCaps Chorus.
  f4(g) aes
  g2.( % E
  bes2) g4
  aes4 g g
  aes4 g\fermata ees
  f4^\markup\italic rit. g4. f8
  ees2
}

alto = \relative {
  \autoBeamOff
  ees'4
  ees2 8. f16
  g4 4 ees
  d4 c d
  ees2 g4
  aes2 8. bes16 % B
  c4 bes aes
  g4 ees ees
  d2 4
  ees2 8. f16 % C
  g4 ees ees
  ees4 4 4
  ees2 aes4
  g4. aes8 bes4
  aes4 ees c % D
  bes4 ees4. d8
  ees2.
  d2.
  d4(ees) f
  ees2.~ % E
  ees2 4
  ees4 4 4
  ees4 4\fermata 4
  d4 4. 8
  ees2
}

tenor = \relative {
  \autoBeamOff
  g4
  g2 bes8. 16
  ees4 4 bes
  bes4 4 4
  bes2 ees4
  ees2 8. 16 % B
  ees4 4 4
  ees4 bes bes
  bes2 aes4
  g2 bes8. 16 % C
  ees4 bes g
  bes4 aes g
  aes2 bes4
  bes4. 8 ees4
  ees4 c aes % D
  g4 bes4. aes8
  g2.
  f4 4 4
  bes2.
  bes4 4 4
  g2 bes4
  c4 bes bes
  c4 bes\fermata g
  aes4 bes4. aes8
  g2
}

bass = \relative {
  \autoBeamOff
  ees4
  ees2 8. 16
  ees4 4 4
  bes4 4 4
  ees2 4
  aes2 8. 16 % B
  aes4 4 4
  ees4 4 g,
  bes2 4
  ees2 8. 16 % C
  ees4 4 4
  ees4 c ees
  aes2 f4
  ees4. f8 g4
  aes4 aes,4 4 % D
  bes4 4. 8
  ees2.
  bes4 4 4
  bes2.
  ees4 4 4 % E
  ees2 4
  ees4 4 4
  ees4 4\fermata 4
  bes4 4. 8 ees2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Plead -- ing with thee! __
  The Sa -- viour is plead -- ing, is plead -- ing with thee!
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  Plead -- ing with thee!
  Plead -- ing with thee!
  _ _ _ _ _ _ _ _ _ _ _
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  So near to the King -- dom! yet what dost thou lack?
  So near to the King -- dom! what keep -- eth thee back?
  Re -- nounce ev -- 'ry i -- dol, though dear it may be,
  And come to the Sa -- viour now plead -- ing with thee!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  So near, that thou hear -- est the songs that re -- sound
  From those who, be -- liev -- ing, a par -- don have found!
  So near, yet un -- will -- ing to give up thy sin,
  When Je -- sus is wait -- ing to wel -- come thee in.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  To die with no hope! hast thou count -- ed the cost?—
  To die out of Christ, and thy soul to be lost?
  So near to the King -- dom! oh come, we im -- plore!
  While Je -- sus is plead -- ing, come en -- ter the door!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "So " "near " "to " "the " King "dom! " "yet " "what " "dost " "thou " "lack? "
  "\nSo " "near " "to " "the " King "dom! " "what " keep "eth " "thee " "back? "
  "\nRe" "nounce " ev "'ry " i "dol, " "though " "dear " "it " "may " "be, "
  "\nAnd " "come " "to " "the " Sa "viour " "bow " plead "ing " "with " "thee! "
  "\nPlead" "ing " "with " "thee! " 
  "\nThe " Sa "viour " "is " plead "ing, " "is " plead "ing " "with " "thee! "

  \set stanza = "2."
  "\nSo " "near, " "that " "thou " hear "est " "the " "songs " "that " re "sound "
  "\nFrom " "those " "who, " be liev "ing, " "a " par "don " "have " "found! "
  "\nSo " "near, " "yet " un will "ing " "to " "give " "up " "thy " "sin, "
  "\nWhen " Je "sus " "is " wait "ing " "to " wel "come " "thee " "in. "
  "\nPlead" "ing " "with " "thee! " 
  "\nThe " Sa "viour " "is " plead "ing, " "is " plead "ing " "with " "thee! "

  \set stanza = "3."
  "\nTo " "die " "with " "no " "hope! " "hast " "thou " count "ed " "the " "cost?— "
  "\nTo " "die " "out " "of " "Christ, " "and " "thy " "soul " "to " "be " "lost? "
  "\nSo " "near " "to " "the " King "dom! " "oh " "come, " "we " im "plore! "
  "\nWhile " Je "sus " "is " plead "ing, " "come " en "ter " "the " "door! "
  "\nPlead" "ing " "with " "thee! " 
  "\nThe " Sa "viour " "is " plead "ing, " "is " plead "ing " "with " "thee! "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "So " "near " "to " "the " King "dom! " "yet " "what " "dost " "thou " "lack? "
  "\nSo " "near " "to " "the " King "dom! " "what " keep "eth " "thee " "back? "
  "\nRe" "nounce " ev "'ry " i "dol, " "though " "dear " "it " "may " "be, "
  "\nAnd " "come " "to " "the " Sa "viour " "bow " plead "ing " "with " "thee! "
  "\nPlead" "ing " "with " "thee! "
  "\nPlead" "ing " "with " "thee! "
  "\nThe " Sa "viour " "is " plead "ing, " "is " plead "ing " "with " "thee! "

  \set stanza = "2."
  "\nSo " "near, " "that " "thou " hear "est " "the " "songs " "that " re "sound "
  "\nFrom " "those " "who, " be liev "ing, " "a " par "don " "have " "found! "
  "\nSo " "near, " "yet " un will "ing " "to " "give " "up " "thy " "sin, "
  "\nWhen " Je "sus " "is " wait "ing " "to " wel "come " "thee " "in. "
  "\nPlead" "ing " "with " "thee! "
  "\nPlead" "ing " "with " "thee! "
  "\nThe " Sa "viour " "is " plead "ing, " "is " plead "ing " "with " "thee! "

  \set stanza = "3."
  "\nTo " "die " "with " "no " "hope! " "hast " "thou " count "ed " "the " "cost?— "
  "\nTo " "die " "out " "of " "Christ, " "and " "thy " "soul " "to " "be " "lost? "
  "\nSo " "near " "to " "the " King "dom! " "oh " "come, " "we " im "plore! "
  "\nWhile " Je "sus " "is " plead "ing, " "come " en "ter " "the " "door! "
  "\nPlead" "ing " "with " "thee! "
  "\nPlead" "ing " "with " "thee! "
  "\nThe " Sa "viour " "is " plead "ing, " "is " plead "ing " "with " "thee! "
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
  \bookOutputSuffix "midi-men"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
            \new NullVoice = alignerT \tenor
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
          >>
        >>
    \layout {
      indent = 1.5\cm
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
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
            \new NullVoice = alignerT \repeat unfold \verses \tenor
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT {\repeat unfold \verses \chorusMen}
          >>
        >>
    \layout {
      indent = 1.5\cm
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
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
            \new NullVoice = alignerT \repeat unfold \verses \tenor
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT {\repeat unfold \verses \chorusMen}
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
