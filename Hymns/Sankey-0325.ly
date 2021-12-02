\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Moments of Prayer."
  subtitle    = "Sankey No. 325"
  subsubtitle = "Sankey 880 No. 322"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. H. Doane."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
  meter       = \markup\smallCaps "6.4.6.4.6.6.6.4."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*4
  \mark \markup { \box "C" } s1*4
  \mark \markup { \box "D" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  bes'2\omit\mf a4 g
  f4. g8 f2
  bes2 c4 d
  c2. r4
  bes2 a4 g % B
  f4. g8 f2
  g2 c4 a
  bes2. r4
  d2 ees4 d % C
  d4. c8 2
  bes4(d) d bes
  bes4. a8 2
  g4(bes) a g % D
  g4. f8 2
  f2^\pp 4 4
  f2. r4
}

alto = \relative {
  \autoBeamOff
  d'2\omit\mf f4 ees
  d4. ees8 d2
  f2 4 4
  f2. r4
  d2 f4 ees % B
  d4. ees8 d2
  ees2 g4 f
  f2. r4
  f2 g4 f % C
  f4. 8 4(ees)
  d4(bes') a g
  g4. fis8 2
  g2 f4 ees % D
  ees4. d8 2
  c2^\pp d4 ees
  d2. r4
}

tenor = \relative {
  \autoBeamOff
  f2\omit\mf bes4 4
  bes4. 8 2
  bes2 a4 bes
  a2. r4
  f2 bes4 4 % B
  bes4. 8 2
  bes2 ees4 4
  d2. r4
  bes2 4 4 % C
  bes4. a8 2
  d2 4 4
  d4. 8 4(c)
  bes2 4 4 % D
  bes4. 8 2
  a2\omit\pp bes4 c
  bes2. r4
}

bass = \relative {
  \autoBeamOff
  bes,2\omit\mf 4 4
  bes4. 8 2
  d2 c4 bes
  f'2. r4
  bes,2 4 4 % B
  bes4. 8 2
  ees2 c4 f
  bes,2. r4
  bes2 4 4 % C
  f'4. 8 2
  g2 fis4 g
  d4. 8 2
  ees2 4 4 % D
  bes4. 8 2
  f'2 4 4
  bes,2. r4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Here from the world we turn,
  Je -- sus to seek;
  Here may His lov -- ing voice
  Ten -- der -- ly speak!
  Je -- sus, our dear -- est friend,
  While at Thy feet we bend,
  Oh, ley Thy smile des -- cend!
  'Tis Thee we seek.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Come, Ho -- ly Com -- fort -- er,
  Pre -- sence Di -- vine,
  Now in our long -- ing hearts
  Gra -- cious -- ly shine;
  Ph for Thy migh -- ty power!
  Oh for a bles -- sed shower,
  Fill -- ing this hal -- lowed hour,
  With joy Di -- vine!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Sa -- viour, Thy work re -- vive,
  Here may we see
  Those who are dead in sin
  Quick -- ened by Thee;
  Come to our hearts de -- light,
  Make ev -- 'ry bur -- den light,
  Cheer Thou our wait -- ing sight;
  We long for Thee.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Here " "from " "the " "world " "we " "turn, "
  "\nJe" "sus " "to " "seek; "
  "\nHere " "may " "His " lov "ing " "voice "
  "\nTen" der "ly " "speak! "
  "\nJe" "sus, " "our " dear "est " "friend, "
  "\nWhile " "at " "Thy " "feet " "we " "bend, "
  "\nOh, " "ley " "Thy " "smile " des "cend! "
  "\n'Tis " "Thee " "we " "seek. "

  \set stanza = "2."
  "\nCome, " Ho "ly " Com fort "er, "
  "\nPre" "sence " Di "vine, "
  "\nNow " "in " "our " long "ing " "hearts "
  "\nGra" cious "ly " "shine; "
  "\nPh " "for " "Thy " migh "ty " "power! "
  "\nOh " "for " "a " bles "sed " "shower, "
  "\nFill" "ing " "this " hal "lowed " "hour, "
  "\nWith " "joy " Di "vine! "

  \set stanza = "3."
  "\nSa" "viour, " "Thy " "work " re "vive, "
  "\nHere " "may " "we " "see "
  "\nThose " "who " "are " "dead " "in " "sin "
  "\nQuick" "ened " "by " "Thee; "
  "\nCome " "to " "our " "hearts " de "light, "
  "\nMake " ev "'ry " bur "den " "light, "
  "\nCheer " "Thou " "our " wait "ing " "sight; "
  "\nWe " "long " "for " "Thee. "
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
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
