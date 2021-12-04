\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Hear us, O Saviour!"
  subtitle    = "Sankey No. 328"
  subsubtitle = "N. H. No. 1"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key d \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*4
  \mark \markup { \box "B" } s2.*4
  \mark \markup { \box "C" } s2.*4
  \mark \markup { \box "D" } s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'8. gis16 a8 b4 a8
  a4 g8 4 r8
  g8. fis16 g8 a4 e8
  g4. fis4 r8
  b8. ais16 b8 d4 b8 % B
  b4 a8 4 r8
  a8. gis16 a8 b cis d
  cis4.~4 r8
  d4.^\markup\smallCaps Refrain. cis4 b8 % C
  a4. fis4 r8
  g4. cis4 b8
  b4. a4 r8
  d4 cis8 e[d] b % D
  a4. d4 r8
  cis4 a8 b4 cis8
  d4.~4 r8
}

alto = \relative {
  \autoBeamOff
  fis'8. eis16 fis8 g4 fis8
  fis4 e8 4 r8
  e8. dis16 e8 fis4 cis8
  e4. d4 r8
  d8. cis16 d8 g4 8 % B
  g4 fis8 4 r8
  e8. 16 8 gis8 8 8
  a4.(g4) r8
  fis4. a4 g8 % C
  fis4. d4 r8
  e4. g4 8
  g4. fis4 r8
  a4 8 b4 g8 % D
  fis4. 4 r8
  e4 8 g4 8
  fis4.~4 r8
}

tenor = \relative {
  \autoBeamOff
  d'8. 16 8 4 8
  cis4 8 4 r8
  a8. 16 8 4 8
  a4. 4 r8
  g8. 16 8 b4 d8 % B
  d4 8 4 r8
  c8. b16 cis8 d cis b
  a4.~4 r8
  a4. 4 d8 % C
  d4. a4 r8
  a4. e'4 cis8
  d4. 4 r8
  d4 8 4 8  % D
  d4. a4 r8
  a4 cis8 e4 a,8
  a4.~4 r8
}

bass = \relative {
  \autoBeamOff
  d8. 16 8 4 8
  a'4 8 4 r8
  a,8. 16 8 4 8
  d4. 4 r8
  \partCombineApart g8. 16 8 \partCombineAutomatic 4 8 % B
  d4 8 4 r8
  e8. 16 8 8 8 8
  \once\partCombineApart a4.(a,4) r8
  d4. 4 8 % C
  d4. 4 r8
  a4. 4 8
  d4. 4 r8
  fis4 8 g4 8 % D
  d4. 4 r8
  \once\partCombineApart a'4 8 4 a,8
  d4.~4 r8
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Send showers of bless -- ing;
  Send showers re -- fresh -- ing;
  Send us showers of bless -- ing;
  Send them, Lord, we pray!
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Hear us, O Sa -- viour, while we pray,
  Hum -- bly our need con -- dess -- ing;
  Grant us the prom -- ised showers to -- day—
  Send them up -- on us, O Lord!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Know -- ing Thy love, on Thee we call,
  Bold -- ly Thy throne ad -- dress -- ing;
  Plead -- ing that showers of grace may fall—
  Send them up -- on us, O Lord!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Trust -- ing Thy word that can -- not fail,
  Mas -- ter, we claim Thy pro -- mise;
  Oh that our faith may now pre -- vail—
  Send us the sho -- wers, O Lord!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Hear " "us, " "O " Sa "viour, " "while " "we " "pray, "
  "\nHum" "bly " "our " "need " con dess "ing; "
  "\nGrant " "us " "the " prom "ised " "showers " to "day— "
  "\nSend " "them " up "on " "us, " "O " "Lord! "
  "\nSend " "showers " "of " bless "ing; "
  "\nSend " "showers " re fresh "ing; "
  "\nSend " "us " "showers " "of " bless "ing; "
  "\nSend " "them, " "Lord, " "we " "pray! "

  \set stanza = "2."
  "\nKnow" "ing " "Thy " "love, " "on " "Thee " "we " "call, "
  "\nBold" "ly " "Thy " "throne " ad dress "ing; "
  "\nPlead" "ing " "that " "showers " "of " "grace " "may " "fall— "
  "\nSend " "them " up "on " "us, " "O " "Lord! "
  "\nSend " "showers " "of " bless "ing; "
  "\nSend " "showers " re fresh "ing; "
  "\nSend " "us " "showers " "of " bless "ing; "
  "\nSend " "them, " "Lord, " "we " "pray! "

  \set stanza = "3."
  "\nTrust" "ing " "Thy " "word " "that " can "not " "fail, "
  "\nMas" "ter, " "we " "claim " "Thy " pro "mise; "
  "\nOh " "that " "our " "faith " "may " "now " pre "vail— "
  "\nSend " "us " "the " sho "wers, " "O " "Lord! "
  "\nSend " "showers " "of " bless "ing; "
  "\nSend " "showers " re fresh "ing; "
  "\nSend " "us " "showers " "of " bless "ing; "
  "\nSend " "them, " "Lord, " "we " "pray! "
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
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
          >>
        >>
    \layout { }
%    \midi {}
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
