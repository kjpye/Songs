\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus is Calling!"
  subtitle    = "Sankey No. 396"
  subsubtitle = "Sankey 880 No. 464"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
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
  \key c \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*3
  \mark \markup { \box "B" } s2.*3
  \mark \markup { \box "C" } s2.*3
  \mark \markup { \box "D" } s2.*4
  \mark \markup { \box "E" } s2.*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'8 8 8 8 e f
  g8 a b c4.
  c8 b a b4.
  a8 g fis g4. % B
  g8 8 8 8 e f
  g8 a b c4.
  b8 a b d c a % C
  g4.~4 r8 \bar "||"
  c4.^\markup\smallCaps Refrain. ~8 b a
  b4.~4 r8 % D
  d4.~8 c b
  c4.~4 r8
  e4.~8 d c
  c4.~8 b a % E
  g8. 16 8 8 a b
  c4.~4 r8
}

alto = \relative {
  \autoBeamOff
  e'8 8 8 8 c d
  e8 f f e4.
  f8 8 8 4.
  f8 e dis e4. % B
  e8 8 8 8 c d
  e8 f f e4.
  d8 8 8 fis fis fis % C
  g4.(f4) r8
  e4.~8 8 8
  f4.~4 r8 % D
  f4.~8 e d
  e4.~4 r8 <g bes>4.~8 <f b> <e b'>
  a4.~8 g f % E
  e8. 16 8 f f f
  e4.~4 r8
}

tenor = \relative {
  \autoBeamOff
  c'8 8 8 8 g g
  c8 8 g8 4.
  g8 d'8 8 4.
  c8 8 8 4. % B
  c8 8 8 8 g g
  c8 8 g8 4.
  g8 fis g a d c % C
  b4.~4 r8
  g4 8 8 8 8
  g4 8 4 r8 % D
  b4 8 8 c g
  g4 8 4 r8
  c8. 16 8 8 8 8
  c8 8 8 4 8 % E
  c8. 16 8 b c d
  c4.~4 r8
}

bass = \relative {
  \autoBeamOff
  c8 8 8 8 8 8
  c8 8 8 4.
  g'8 8 8 4.
  c,8 8 8 4. % B
  c8 8 8 8 8 8
  c8 8 8 4.
  d8 8 8 8 8 8 % C
  g4.~4 r8
  c,4 8 8 8 8
  d4 8 4 r8 % D
  g4 8 8 8 8
  c,4 8 4 r8
  c8. 16 8 8 8 8
  f8 8 8 4 8 % E
  g8. 16 8 8 8 8
  c,4.~4 r8
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Call -- ing to -- day! __
  call -- ing to -- day! __
  Je -- sus is call -- ing,
  is ten -- der -- ly call -- ing to -- day!
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  Call -- ing, call -- ing to -- day, to -- day!
  Call -- ing, call -- ing to -- day, to -- day!
  Je -- sus is ten -- der -- ly call -- ing to -- day!
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Je -- sus is ten -- der -- ly call -- ing thee home—
  Call -- ing to -- day, call -- ing to -- day!
  Why from the sun -- shine of love with thou roam,
  Far -- ther and far -- ther a -- way?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Je -- sus is call -- ing the wea -- ry to rest—
  Call -- ing to -- day, call -- ing to -- day!
  Bring Him thy bur -- den, and thou shalt be blest:
  He will not turn thee a -- way.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Je -- sus is wait -- ing, oh, come to Him now—
  Wait -- ing to -- day, wait -- ing to -- day!
  Come with thy sins, at His feet low -- ly now;
  Come, and no long -- er de -- lay!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Je -- sus is plead -- ing: oh, list to His voice—
  Hear Him to -- day, hear Him to -- day!
  They who be -- lieve on His name shall re -- joice;
  Quick -- ly a -- rise and a -- way!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  Je -- sus is ten -- der -- ly call -- ing thee home—
  Call -- ing to -- day, call -- ing to -- day!
  Why from the sun -- shine of love with thou roam,
  Far -- ther and far -- ther a -- way?
  Call -- ing to -- day! __
  call -- ing to -- day! __
  Je -- sus is call -- ing,
  is ten -- der -- ly call -- ing to -- day!

  \set stanza = "2."
  Je -- sus is call -- ing the wea -- ry to rest—
  Call -- ing to -- day, call -- ing to -- day!
  Bring Him thy bur -- den, and thou shalt be blest:
  He will not turn thee a -- way.
  Call -- ing to -- day! __
  call -- ing to -- day! __
  Je -- sus is call -- ing,
  is ten -- der -- ly call -- ing to -- day!

  \set stanza = "3."
  Je -- sus is wait -- ing, oh, come to Him now—
  Wait -- ing to -- day, wait -- ing to -- day!
  Come with thy sins, at His feet low -- ly now;
  Come, and no long -- er de -- lay!
  Call -- ing to -- day! __
  call -- ing to -- day! __
  Je -- sus is call -- ing,
  is ten -- der -- ly call -- ing to -- day!

  \set stanza = "4."
  Je -- sus is plead -- ing: oh, list to His voice—
  Hear Him to -- day, hear Him to -- day!
  They who be -- lieve on His name shall re -- joice;
  Quick -- ly a -- rise and a -- way!
  Call -- ing to -- day! __
  call -- ing to -- day! __
  Je -- sus is call -- ing,
  is ten -- der -- ly call -- ing to -- day!
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  Je -- sus is ten -- der -- ly call -- ing thee home—
  Call -- ing to -- day, call -- ing to -- day!
  Why from the sun -- shine of love with thou roam,
  Far -- ther and far -- ther a -- way?
  Call -- ing, call -- ing to -- day, to -- day!
  Call -- ing, call -- ing to -- day, to -- day!
  Je -- sus is ten -- der -- ly call -- ing to -- day!
  is ten -- der -- ly call -- ing to -- day!

  \set stanza = "2."
  Je -- sus is call -- ing the wea -- ry to rest—
  Call -- ing to -- day, call -- ing to -- day!
  Bring Him thy bur -- den, and thou shalt be blest:
  He will not turn thee a -- way.
  Call -- ing, call -- ing to -- day, to -- day!
  Call -- ing, call -- ing to -- day, to -- day!
  Je -- sus is ten -- der -- ly call -- ing to -- day!
  is ten -- der -- ly call -- ing to -- day!

  \set stanza = "3."
  Je -- sus is wait -- ing, oh, come to Him now—
  Wait -- ing to -- day, wait -- ing to -- day!
  Come with thy sins, at His feet low -- ly now;
  Come, and no long -- er de -- lay!
  Call -- ing, call -- ing to -- day, to -- day!
  Call -- ing, call -- ing to -- day, to -- day!
  Je -- sus is ten -- der -- ly call -- ing to -- day!
  is ten -- der -- ly call -- ing to -- day!

  \set stanza = "4."
  Je -- sus is plead -- ing: oh, list to His voice—
  Hear Him to -- day, hear Him to -- day!
  They who be -- lieve on His name shall re -- joice;
  Quick -- ly a -- rise and a -- way!
  Call -- ing, call -- ing to -- day, to -- day!
  Call -- ing, call -- ing to -- day, to -- day!
  Je -- sus is ten -- der -- ly call -- ing to -- day!
  is ten -- der -- ly call -- ing to -- day!
}

\book {
  \bookOutputSuffix "midi-women"
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
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
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
                                              \wordsFour  \chorus
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
                                              \wordsFour  \chorus
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
