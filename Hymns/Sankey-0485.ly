\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Even Me!"
  subtitle    = "Sankey No. 485"
  subsubtitle = "Sankey 880 No. 56"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. B. Bradbury."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mrs. Codner."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 6/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \repeat unfold 2 {
    \mark \markup { \box "A" } s1.*4
  }
  \mark \markup { \box "B" } s1.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  \repeat unfold 2 {
    b'2 c4 d2 g,4 | c2 b4 2 a4 | 2 b4 c2 a4 | g2 fis4 g2.
  }
  d'2 b4 d2. | b2 g4 b2.\fermata | 2 c4 d2 g,4 | b2\fermata a4\fermata g2.\fermata
}

alto = \relative {
  \autoBeamOff
  \repeat unfold 2 {
    d'2 4 2 4 | 2 4 2 4 | 2 4 e2 4 | d2 4 2.
  }
  g2 d4 g2. | d2 4 g2.\fermata | d2 e4 fis2 g4 | g2\fermata fis4\fermata d2.\fermata
}

tenor = \relative {
  \autoBeamOff
  \repeat unfold 2 {
    g2 a4 b2 4 | a2 g2 4 fis4 | 2 g4 2 c4 | b2 a4 b2. |    
  }
  b2 g4 b2. | d2 b4 d2.\fermata | g,2 4 a2 b4 | d2\fermata c4\fermata b2.\fermata |
}

bass = \relative {
  \autoBeamOff
  \repeat unfold 2 {
    g2 4 2 4 | fis2 g4 d2 4 | 2 g4 c,2 4 | d2 4 g,2. |
  }
  g'2 4 2. | <g, g'>2 4 2.\fermata | g'2 e4 d2 g4 | d2\fermata 4 \fermata g,2.\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 6

wordsOne = \lyricmode {
  \set stanza = "1."
  Lord, I hear of show'rs of bless -- ing
  Thou art scat -- t'ring full and free—
  Show'rs, the thirs -- ty land re -- fresh -- ing,
  Let some drop -- pings fall on me—
  E -- ven me, e -- ven me!
  Let some drop -- pings fall on me!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Pass me not, O gra -- cious Fa -- ther,
  Sin -- ful though my heart may be:
  Thou might'st leave me, but the ra -- ther
  Let Thy mer -- cy fall on me—
  E -- ven me, e -- ven me! 
  Let Thy mer -- cy fall on me!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Pass me not, O ten -- der Sa -- viour,
  Let me love and cling to Thee:
  I am long -- ing for Thy fav -- our;
  Whilst Thou'rt call -- ing, oh, call me—
  E -- ven me, e -- ven me! 
  Whilst Thou'rt call -- ing, oh, call me!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Pass me not, O migh -- ty Spi -- rit,
  Thou canst make the blind to see:
  Wit -- ness -- es of Je -- sus' mer -- it,
  Speak the word of power to me—
  E -- ven me, e -- ven me! 
  Speak the word of power to me!
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Love of God, so pure and change -- less;
  Blood of Christ, so rich and free;
  Grace of God, so strong and bound -- less;
  Mag -- ni -- fy them all in me—
  E -- ven me, e -- ven me! 
  Mag -- ni -- fy them all in me!
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Pass me not: Thy lost one bring -- ing,
  Bind my heart, O Lord, to Thee:
  While the streams od life are spring -- ing,
  Bless -- ing oth -- ers, oh, bless me—
  E -- ven me, e -- ven me! 
  Bless -- ing oth -- ers, oh, bless me!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Lord, " "I " "hear " "of " "show'rs " "of " bless "ing "
  "\nThou " "art " scat "t'ring " "full " "and " "free— "
  "\nShow'rs, " "the " thirs "ty " "land " re fresh "ing, "
  "\nLet " "some " drop "pings " "fall " "on " "me— "
  "\nE" "ven " "me, " e "ven " "me! "
  "\nLet " "some " drop "pings " "fall " "on " "me!\n"

  \set stanza = "2."
  "\nPass " "me " "not, " "O " gra "cious " Fa "ther, "
  "\nSin" "ful " "though " "my " "heart " "may " "be: "
  "\nThou " "might'st " "leave " "me, " "but " "the " ra "ther "
  "\nLet " "Thy " mer "cy " "fall " "on " "me— "
  "\nE" "ven " "me, " e "ven " "me! " 
  "\nLet " "Thy " mer "cy " "fall " "on " "me!\n"

  \set stanza = "3."
  "\nPass " "me " "not, " "O " ten "der " Sa "viour, "
  "\nLet " "me " "love " "and " "cling " "to " "Thee: "
  "\nI " "am " long "ing " "for " "Thy " fav "our; "
  "\nWhilst " "Thou'rt " call "ing, " "oh, " "call " "me— "
  "\nE" "ven " "me, " e "ven " "me! " 
  "\nWhilst " "Thou'rt " call "ing, " "oh, " "call " "me!\n"

  \set stanza = "4."
  "\nPass " "me " "not, " "O " migh "ty " Spi "rit, "
  "\nThou " "canst " "make " "the " "blind " "to " "see: "
  "\nWit" ness "es " "of " Je "sus' " mer "it, "
  "\nSpeak " "the " "word " "of " "power " "to " "me— "
  "\nE" "ven " "me, " e "ven " "me! " 
  "\nSpeak " "the " "word " "of " "power " "to " "me!\n"

  \set stanza = "5."
  "\nLove " "of " "God, " "so " "pure " "and " change "less; "
  "\nBlood " "of " "Christ, " "so " "rich " "and " "free; "
  "\nGrace " "of " "God, " "so " "strong " "and " bound "less; "
  "\nMag" ni "fy " "them " "all " "in " "me— "
  "\nE" "ven " "me, " e "ven " "me! " 
  "\nMag" ni "fy " "them " "all " "in " "me!\n"

  \set stanza = "6."
  "\nPass " "me " "not: " "Thy " "lost " "one " bring "ing, "
  "\nBind " "my " "heart, " "O " "Lord, " "to " "Thee: "
  "\nWhile " "the " "streams " "od " "life " "are " spring "ing, "
  "\nBless" "ing " oth "ers, " "oh, " "bless " "me— "
  "\nE" "ven " "me, " e "ven " "me! " 
  "\nBless" "ing " oth "ers, " "oh, " "bless " "me! "
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
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
            \new Lyrics \lyricsto "aligner"   \wordsSix
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
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
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
