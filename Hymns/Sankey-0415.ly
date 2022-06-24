\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Ho, Every One that is Thirsty!"
  subtitle    = "Sankey No. 415"
  subsubtitle = "Sankey 880 No. 533"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Lucy J. Rider."
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

% #(set-global-staff-size 16)

global = {
  \key a \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" }     s2.*2 s4.
  \mark \markup { \box "B" } s4. s2.*2
  \mark \markup { \box "C" }     s2.*3
  \mark \markup { \box "D" }     s2.*2 s4.
  \mark \markup { \box "E" } s4. s2.*2
  \mark \markup { \box "F" }     s2.*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  cis''8. 16 8 8 b a
  a8. gis16 fis8 e4 a8
  cis8. 16 8 \bar "|" \break 8 b a
  e'8. d16 cis8 b4. % B
  cis8. 16 8 8 b a
  a8. gis16 fis8 e4 a8 % C
  cis8. e16 8 8 d b
  cis8. a16 b8 a4.
  e8.^\markup\smallCaps Chorus. 16 8 8 8 8 % D
  a8. 16 b8 a4 gis8
  b8. 16 8 \bar "|" \break 4 cis8
  b8. a16 8 4. % E
  cis8. 16 8 8. 16 8
  d8. 16 8 4 8 % F
  e8. 16 8 8 d b
  cis8 a b a4.
}

alto = \relative {
  \autoBeamOff
  e'8. 16 8 8 d cis
  fis8. e16 d8 cis4 8
  e8. 16 8 8 8 8
  e8. 16 8 4. % B
  e8. 16 8 8 d cis
  fis8. e16 b8 cis4 8 % C
  e8. g16 8 fis fis fis
  e8. cis16 d8 cis4.
  cis8. 16 8 8 8 8 % D
  e8. 16 fis8 e4 d8
  d8. 16 8 4 e8
  e8. cis16 8 4. % E
  e8. 16 8 8. 16 8
  fis8. 16 8 4 8 % F
  a8. 16 g8fis fis fis
  e8 cis d cis4.
}

tenor = \relative {
  \autoBeamOff
  a8. 16 8 8 8 8
  a8. 16 8 4 8
  a8. 16 8 8 gis a
  a8. gis16 a8 gis4. % B
  a8. 16 8 8 8 8
  a8. 16 8 4 8 % C
  a8. 16 8 8 8 8
  a8. 16 gis8 a4.
  a8. 16 8 8 8 8 % D
  a8. 16 d8 cis4 b8
  gis8. 16 8 4 8
  a8. 16 8 4. % E
  a8. 16 8 8. 16 8
  a8. 16 8 4 8 % F
  a8. 16 8 8 8 8
  a8 8 gis a4.
  
}

bass = \relative {
  \autoBeamOff
  a,8. 16 8 8 8 8
  d8. 16 8 a4 8
  a8. 16 8 8 b cis
  cis8. b16 a8 e'4. % B
  a,8. 16 8 8 8 8
  d8. 16 8 a4 8 % C
  a'8. cis,16 8 d d d
  e8. 16 8 a,4.
  a8. 16 8 8 8 8 % D
  cis8. 16 d8e4 8
  e8. 16 8 4 8
  a,8. 16 8 4. % E
  a8. 16 8 8. 16 8
  d8. 16 8 4 8 % F
  cis8. 16 8 d d d
  e8 8 8 a,4.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  "\"I" will pour wa -- ter on him that is thirs -- ty,
  I will pour floods up -- on the dry ground;
  O -- pen your hearts for the gifts I am bring -- ing;
  While ye are seek -- ing Me, I will be "found.\""
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Ho! ev -- 'ry one that is thirs -- ty in spi -- rit,
  Ho! ev -- 'ry one that is wea -- ry and sad;
  Come to the foun -- tain, there's ful -- ness in Je -- sus,
  All that you're long -- ing for: come and be glad!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Child of the world, are you tired of your bon -- dage?
  Wea -- ry of earth -- joys, so false so un -- true?
  Thirst -- ing for God and His ful -- ness of bless -- ing?—
  List to the prom -- ise— a mes -- sage for you!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Child of the King -- dom, be filled with the Spi -- rit!
  No -- thing but "\"ful" -- "ness\"" thy long -- ing can meet;
  'Tis the en -- due -- ment for life and for ser -- vice;
  Thine is the prom -- ise, so cer -- tain, so sweet.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Ho! " ev "'ry " "one " "that " "is " thirs "ty " "in " spi "rit, "
  "\nHo! " ev "'ry " "one " "that " "is " wea "ry " "and " "sad; "
  "\nCome " "to " "the " foun "tain, " "there's " ful "ness " "in " Je "sus, "
  "\nAll " "that " "you're " long "ing " "for: " "come " "and " "be " "glad! "
  "\n\"I " "will " "pour " wa "ter " "on " "him " "that " "is " thirs "ty, "
  "\nI " "will " "pour " "floods " up "on " "the " "dry " "ground; "
  "\nO" "pen " "your " "hearts " "for " "the " "gifts " "I " "am " bring "ing; "
  "\nWhile " "ye " "are " seek "ing " "Me, " "I " "will " "be " "found.\" "

  \set stanza = "2."
  "\nChild " "of " "the " "world, " "are " "you " "tired " "of " "your " bon "dage? "
  "\nWea" "ry " "of " earth "joys, " "so " "false " "so " un "true? "
  "\nThirst" "ing " "for " "God " "and " "His " ful "ness " "of " bless "ing?— "
  "\nList " "to " "the " prom "ise— " "a " mes "sage " "for " "you! "
  "\n\"I " "will " "pour " wa "ter " "on " "him " "that " "is " thirs "ty, "
  "\nI " "will " "pour " "floods " up "on " "the " "dry " "ground; "
  "\nO" "pen " "your " "hearts " "for " "the " "gifts " "I " "am " bring "ing; "
  "\nWhile " "ye " "are " seek "ing " "Me, " "I " "will " "be " "found.\" "

  \set stanza = "3."
  "\nChild " "of " "the " King "dom, " "be " "filled " "with " "the " Spi "rit! "
  "\nNo" "thing " "but " "\"ful" "ness\" " "thy " long "ing " "can " "meet; "
  "\n'Tis " "the " en due "ment " "for " "life " "and " "for " ser "vice; "
  "\nThine " "is " "the " prom "ise, " "so " cer "tain, " "so " "sweet. "
  "\n\"I " "will " "pour " wa "ter " "on " "him " "that " "is " thirs "ty, "
  "\nI " "will " "pour " "floods " up "on " "the " "dry " "ground; "
  "\nO" "pen " "your " "hearts " "for " "the " "gifts " "I " "am " bring "ing; "
  "\nWhile " "ye " "are " seek "ing " "Me, " "I " "will " "be " "found.\" "
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
