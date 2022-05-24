\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "It is not Try, but Trust!"
  subtitle    = "Sankey No. 398"
  subsubtitle = "N. H. No. 79"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "E. G. Taylor, D. D."
  meter       = \markup\smallCaps "7.6. D."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 2/4
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8 s2*3
  \mark \markup { \box "B" }    s2*4
  \mark \markup { \box "C" }    s2*4
  \mark \markup { \box "D" }    s2*4 s4.
  \mark \markup { \box "E" } s8 s2*3 s4.
  \mark \markup { \box "F" } s8 s2*3 s4.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  aes'8
  c8 8 des c
  c8 bes4 aes8
  aes8 g f g
  aes4. 8 % B
  bes8 8 aes bes
  c8 aes4 8
  g8 bes aes f
  ees4. 8 % C
  bes'8 des c bes
  c8 aes4 bes8
  c8 ees des c
  bes4. 8 % D
  c8 8 bes aes
  aes8 des4 f,8
  ees8 c'8 8. bes16
  aes4. \bar "|" \break 8^\markup\smallCaps Chorus.
  f8 des'8 8. 16 % E
  des4. f,8
  ees8 c'8 8. 16
  c4. \bar "|" \break des8
  ees8 c bes aes % F
  aes8 des4 f,8
  ees8 c'8 8. bes16
  aes4.
}

alto = \relative {
  \autoBeamOff
  c'8
  ees8 8 f ees
  ees8 4 8
  des8 8 8 8
  c4. 8 % B
  ees8 8 8 8
  ees8 c4 ees8
  ees8 8 d d
  ees4. 8 % C
  ees8 8 8 8
  ees8 c4 ees8
  ees8 8 8 8ees4. 8 % D
  ees8 ges ges ges
  f8 4 des8
  c8 ees ees8. des16
  c4. 8
  des8 f f8. 16 % E
  f4. des8
  c8 ees ees8. 16
  ees4. 8
  ees8 ges8 8 8 % F
  f8 4 des8
  c8 ees8 8. des16
  c4.
}

tenor = \relative {
  \autoBeamOff
  ees8
  aes8 8 8 8
  aes8 g4 c8
  bes8 8 8 8
  aes4. 8 % B
  g8 8 f g
  aes8 4 c8
  bes8 g f aes
  g4. 8 % C
  g8 bes aes g
  aes8 4 g8
  aes8 c bes aes
  g4. 8 % D
  aes8 ees' des c
  des8 aes4 8
  aes8 8 8. g16
  aes4. 8
  aes8 8 8. 16 % E
  aes4. 8
  aes8 8 8. 16
  aes4. bes8
  c8 ees des c % F
  des8 aes4 8
  aes8 8 8. g16
  aes4.
}

bass = \relative {
  \autoBeamOff
  aes,8
  aes8 8 8 8
  ees'8 4 8
  ees8 8 8 8
  aes,4. 8 % B
  ees'8 8 8 8
  aes,8 4 8
  bes8 8 8 8
  ees4. 8 % C
  ees8 8 8 8
  aes,8 4 ees'8
  aes8 8 g aes
  ees4. 8 % D
  aes8 8 8 8
  des,8 4 8
  ees8 8 8. 16
  aes,4. 8
  des8 8 8. 16 % E
  des4. 8
  aes8 8 8. 16
  aes4. ees'8
  aes8 8 8 8 % F
  des,8 4 8
  ees8 8 8. 16
  aes,4.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  It is not Try, but Trust!
  It is not Try, but Trust!
  'Tis His great work that saves us:
  It is not Try, but Trust!
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Not saved are we by try -- ing,
  From self can come no mid;
  'Tis on the Blood re -- ly -- ing,
  Once for our ran -- som paid.
  'Tis look -- ing un -- to Je -- sus.
  The ho -- ly One and just;
  'Tis His great work that saves us—
  It is not Try, but Trust.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  'Twas vain for Is -- rael bit -- ten
  By ser -- pents, on their way.
  To look to their own do -- ing,
  That aw -- ful plague to stay;
  The on -- ly means for heal -- ing,
  When hum -- bled in the dust,
  Was of the Lord's re -- veal -- ing—
  It is not Try, but Trust.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  No deeds of ours are need -- ed
  To make Christ's mer -- it more;
  No frames of mind, or feel -- ings,
  Can add to His great store;
  'Tis sim -- ply to re -- ceive Him,
  The ho -- ly One and just;
  'Tis on -- ly to be -- lieve Him—
  It is not Try, but Trust.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Not " "saved " "are " "we " "by " try "ing, "
  "\nFrom " "self " "can " "come " "no " "mid; "
  "\n'Tis " "on " "the " "Blood " re ly "ing, "
  "\nOnce " "for " "our " ran "som " "paid. "
  "\n'Tis " look "ing " un "to " Je "sus. "
  "\nThe " ho "ly " "One " "and " "just; "
  "\n'Tis " "His " "great " "work " "that " "saves " "us— "
  "\nIt " "is " "not " "Try, " "but " "Trust. "
  "\nIt " "is " "not " "Try, " "but " "Trust! "
  "\nIt " "is " "not " "Try, " "but " "Trust! "
  "\n'Tis " "His " "great " "work " "that " "saves " "us: "
  "\nIt " "is " "not " "Try, " "but " "Trust! "

  \set stanza = "2."
  "\n'Twas " "vain " "for " Is "rael " bit "ten "
  "\nBy " ser "pents, " "on " "their " "way. "
  "\nTo " "look " "to " "their " "own " do "ing, "
  "\nThat " aw "ful " "plague " "to " "stay; "
  "\nThe " on "ly " "means " "for " heal "ing, "
  "\nWhen " hum "bled " "in " "the " "dust, "
  "\nWas " "of " "the " "Lord's " re veal "ing— "
  "\nIt " "is " "not " "Try, " "but " "Trust. "
  "\nIt " "is " "not " "Try, " "but " "Trust! "
  "\nIt " "is " "not " "Try, " "but " "Trust! "
  "\n'Tis " "His " "great " "work " "that " "saves " "us: "
  "\nIt " "is " "not " "Try, " "but " "Trust! "

  \set stanza = "3."
  "\nNo " "deeds " "of " "ours " "are " need "ed "
  "\nTo " "make " "Christ's " mer "it " "more; "
  "\nNo " "frames " "of " "mind, " "or " feel "ings, "
  "\nCan " "add " "to " "His " "great " "store; "
  "\n'Tis " sim "ply " "to " re "ceive " "Him, "
  "\nThe " ho "ly " "One " "and " "just; "
  "\n'Tis " on "ly " "to " be "lieve " "Him— "
  "\nIt " "is " "not " "Try, " "but " "Trust. "
  "\nIt " "is " "not " "Try, " "but " "Trust! "
  "\nIt " "is " "not " "Try, " "but " "Trust! "
  "\n'Tis " "His " "great " "work " "that " "saves " "us: "
  "\nIt " "is " "not " "Try, " "but " "Trust! "
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
