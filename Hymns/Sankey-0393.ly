\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Mercy is Boundless and Free!"
  subtitle    = "Sankey No. 393"
  subsubtitle = "N. H. No. 171"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Wm. J. Kirkpatrick."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Henrietta E. Blair."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key e \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*4
  \mark \markup { \box "B" } s2.*4
  \mark \markup { \box "C" } s2.*4
  \mark \markup { \box "D" } s2.*4
  \mark \markup { \box "E" } s2.*4
  \mark \markup { \box "F" } s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  gis'8 8 8 a gis gis
  cis8 b e, gis4 r8
  gis8 fis b, fis'4 r8
  fis8 e b e4 r8 \break
  gis8 8 8 a gis gis % B
  cis8 b e, gis4 r8
  gis8 fis b, fis' gis fis
  e4.~4 r8 \break
  e8 gis b e dis cis % C
  cis8 b ais b4 r8
  b8 a gis a4 r8
  a8 gis fis gis4 r8 \break
  e8 gis b e dis cis % D
  cis8 b gis b4 r8
  b8 fis b dis dis cis
  b4.(a) \break
  gis8^\markup\smallCaps Chorus. 8 8 a gis gis % E
  cis8 b e, gis4 r8
  gis8 fis b, fis'4 r8
  fis8 e b e4 r8 \break
  gis8 8 8 a gis gis % F
  cis8 b e, gis4 r8
  gis8 fis b, fis' gis fis
  e4.~4 r8
}

alto = \relative {
  \autoBeamOff
  e'8 8 8 8 8 8
  e8 8 b e4 r8
  e8 dis b dis4 r8
  b8 8 8 4 r8
  e8 8 8 8 8 8 % B
  e8 8 b e4 r8
  e8 dis b dis dis dis
  e4.~4 r8
  e8 8 8 gis b a % C
  a8 gis fisis gis4 r8
  gis8 fis eis fis4 r8
  fis8 e dis e4 r8
  e8 8 8 gis b a % D
  a8 gis fisis gis4 r8
  dis8 8 8 fis fis e
  dis4.(fis)
  e8 8 8 8 8 8 % E
  e8 8 b e4 r8
  e8 dis b dis4 r8
  b8 8 8 4 r8
  e8 8 8 8 8 8 % F
  e8 8 b e4 r8
  e8 dis b dis dis dis
  e4.~4 r8
}

tenor = \relative {
  \autoBeamOff
  b8 8 8 cis b b
  gis8 8 8 a4 r8
  b8 8 8 4 r8
  gis8 8 8 4 r8
  b8 8 8 cis b b % B
  gis8 8 8 b4 r8
  b8 8 8 8 8 a
  gis4.~4 r8
  gis8 8 8 b b b % C
  e8 8 8 b4 r8
  b8 8 8 4 r8
  b8 8 8 4 r8
  gis8 8 8 b b b % D
  e8 8 8 b4 r8
  b8 8 8 8 8 ais
  b4.~4.
  b8 8 8 cis b b % E
  gis8 8 8 b4 r8
  b8 8 8 4 r8
  gis8 8 8 4 r8
  b8 8 8 cis b b % F
  gis8 8 8 b4 r8
  b8 8 8 8 8 a
  gis4.~4 r8
}

bass = \relative {
  \autoBeamOff
  e8 8 8 8 8 8
  e8 8 8 4 r8
  b8 8 8 4 r8
  e8 8 8 4 r8
  e8 8 8 8 8 8 % B
  e8 8 8 4 r8
  b8 8 8 8 8 8
  e4.~4 r8e8 8 8 8 8 8 % C
  e8 8 8 4 r8
  b8 8 8 4 r8
  b8 8 8 e4 r8
  e8 8 8 8 8 8 % D
  e8 8 8 4 r8
  fis8 8 8 8 8 8
  b,4.~4.
  e8 8 8 8 8 8 % E
  e8 8 8 4 r8
  b8 8 8 4 r8
  e8 8 8 4 r8
  e8 8 8 8 8 8 % F
  e8 8 8 4 r8
  b8 8 8 8 8 8
  e4.~4 r8
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Je -- sus, the Sa -- viour, is seek -- ing for thee,
  seek -- ing for thee, seek -- ing for thee;
  Lov -- ing -- ly, ten -- der -- ly call -- ing for thee,
  Call -- ing and seek -- ing for thee.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Praise be to Je -- sus, His mer -- cy is free:
  Mer -- cy is free, mer -- cy is free!
  Sin -- ner, that mer -- cy is flow -- ing for thee—
  Mer -- cy is bound -- less and free!
  If thou art will -- ing on Him to be -- lieve:
  Mer -- cy is free, mer -- cy is free!
  Life ev -- er -- last -- ing thou may -- est re -- ceive:
  Mer -- cy is bound -- less and free!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Why on the moun -- taains of sin wilt thou roam?
  Mer -- cy is free, mer -- cy is free!
  Gen -- tly the Spi -- rit is call -- ing thee home:
  Mer -- cy is bound -- less and free!
  Art thou in dark -- ness? Oh, come to the light:
  Mer -- cy is free, mer -- cy is free!
  Je -- sus is wait -- ing, He'll save you to -- night:
  Mer -- cy is bound -- less and free!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Think of His good -- ness, His pa -- tience, and love:
  Mer -- cy is free, mer -- cy is free!
  Plead -- ing thy cause with His Fa -- ther a -- bove:
  Mer -- cy is bound -- less and free!
  Come, and re -- pent -- ing, Oh, give Him they heart:
  Mer -- cy is free, mer -- cy is free!
  Grieve Him no long -- er, but come as thou art:
  Mer -- cy is bound -- less and free!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Yes, there is par -- don for all who be -- lieve:
  Mer -- cy is free, mer -- cy is free!
  Come, and this mo -- ment a bless -- ing re -- ceive:
  Mer -- cy is bound -- less and free!
  Je -- sus is wait -- ing, Oh, hear Him pro -- claim:
  Mer -- cy is free, mer -- cy is free!
  Cling to His pro -- mise. be -- lieve on His name:
  Mer -- cy is bound -- less and free!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Praise " "be " "to " Je "sus, " "His " mer "cy " "is " "free: "
  "\nMer" "cy " "is " "free, " mer "cy " "is " "free! "
  "\nSin" "ner, " "that " mer "cy " "is " flow "ing " "for " "thee— "
  "\nMer" "cy " "is " bound "less " "and " "free! "
  "\nIf " "thou " "art " will "ing " "on " "Him " "to " be "lieve: "
  "\nMer" "cy " "is " "free, " mer "cy " "is " "free! "
  "\nLife " ev er last "ing " "thou " may "est " re "ceive: "
  "\nMer" "cy " "is " bound "less " "and " "free! "
  "\nJe" "sus, " "the " Sa "viour, " "is " seek "ing " "for " "thee, "
  "\nseek" "ing " "for " "thee, " seek "ing " "for " "thee; "
  "\nLov" ing "ly, " ten der "ly " call "ing " "for " "thee, "
  "\nCall" "ing " "and " seek "ing " "for " "thee. "

  \set stanza = "2."
  "\nWhy " "on " "the " moun "taains " "of " "sin " "wilt " "thou " "roam? "
  "\nMer" "cy " "is " "free, " mer "cy " "is " "free! "
  "\nGen" "tly " "the " Spi "rit " "is " call "ing " "thee " "home: "
  "\nMer" "cy " "is " bound "less " "and " "free! "
  "\nArt " "thou " "in " dark "ness? " "Oh, " "come " "to " "the " "light: "
  "\nMer" "cy " "is " "free, " mer "cy " "is " "free! "
  "\nJe" "sus " "is " wait "ing, " "He'll " "save " "you " to "night: "
  "\nMer" "cy " "is " bound "less " "and " "free! "
  "\nJe" "sus, " "the " Sa "viour, " "is " seek "ing " "for " "thee, "
  "\nseek" "ing " "for " "thee, " seek "ing " "for " "thee; "
  "\nLov" ing "ly, " ten der "ly " call "ing " "for " "thee, "
  "\nCall" "ing " "and " seek "ing " "for " "thee. "

  \set stanza = "3."
  "\nThink " "of " "His " good "ness, " "His " pa "tience, " "and " "love: "
  "\nMer" "cy " "is " "free, " mer "cy " "is " "free! "
  "\nPlead" "ing " "thy " "cause " "with " "His " Fa "ther " a "bove: "
  "\nMer" "cy " "is " bound "less " "and " "free! "
  "\nCome, " "and " re pent "ing, " "Oh, " "give " "Him " "they " "heart: "
  "\nMer" "cy " "is " "free, " mer "cy " "is " "free! "
  "\nGrieve " "Him " "no " long "er, " "but " "come " "as " "thou " "art: "
  "\nMer" "cy " "is " bound "less " "and " "free! "
  "\nJe" "sus, " "the " Sa "viour, " "is " seek "ing " "for " "thee, "
  "\nseek" "ing " "for " "thee, " seek "ing " "for " "thee; "
  "\nLov" ing "ly, " ten der "ly " call "ing " "for " "thee, "
  "\nCall" "ing " "and " seek "ing " "for " "thee. "

  \set stanza = "4."
  "\nYes, " "there " "is " par "don " "for " "all " "who " be "lieve: "
  "\nMer" "cy " "is " "free, " mer "cy " "is " "free! "
  "\nCome, " "and " "this " mo "ment " "a " bless "ing " re "ceive: "
  "\nMer" "cy " "is " bound "less " "and " "free! "
  "\nJe" "sus " "is " wait "ing, " "Oh, " "hear " "Him " pro "claim: "
  "\nMer" "cy " "is " "free, " mer "cy " "is " "free! "
  "\nCling " "to " "His " pro "mise. " be "lieve " "on " "His " "name: "
  "\nMer" "cy " "is " bound "less " "and " "free! "
  "\nJe" "sus, " "the " Sa "viour, " "is " seek "ing " "for " "thee, "
  "\nseek" "ing " "for " "thee, " seek "ing " "for " "thee; "
  "\nLov" ing "ly, " ten der "ly " call "ing " "for " "thee, "
  "\nCall" "ing " "and " seek "ing " "for " "thee. "
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
