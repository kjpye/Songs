\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Trust and Obey."
  subtitle    = "Sankey No. 642"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "D. B. Towner."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. H. Sammis."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*5
  \textMark \markup { \box \bold "B" }    s2.*5 s2
  \textMark \markup { \box \bold "C" } s4 s2.*5
  \textMark \markup { \box \bold "D" }    s2.*5 s2
}

TempoTrack = {
%  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4 s2.*6
  \tempo 4=60 s2 \tempo 4=120 s4 |
  s2.*12
  s4 \tempo 4=48 s4 \tempo 4=120 s4 |
  s2. s2
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'8 g | a4 4 g | f2 8 a | c4 c bes | a2 8 8 | bes4 d bes |
  a4 c a | g2\fermata f8 g | a4 4 g | f2 8 a | c4 c bes | a2 \bar "|" \break
  a8 8 | bes4 d bes | a f g | f2. |
  \section \sectionLabel \markup\smallCaps Chorus.
  c'4 g c | a2 8 8 |
  d4 a c | bes2 8 8 | 4 a g | a c\fermata f,8 g | a4 f g | f2
}

alto = \relative {
  \autoBeamOff
  c'8 8 | f4 f e | f2 8 8 | e4 4 4 | f2 8 8 | 4 4 4 |
  f4 4 4 | e2\fermata c8 8 | f4 4 e | f2 8 8 | e4 4 4 | f2
  f8 8 | 4 4 4 | 4 c c | 2. \section | e4 4 4 | f2 8 8 |
  fis4 4 4 | g2 8 8 | 4 f e | f f\fermata 8 8 | 4 c c | 2
   
}

tenor = \relative {
  \autoBeamOff
  a8 bes | c4 c bes | a2 8 c | 4 g c | 2 8 8 | d4 bes d |
  c4 a c | 2\fermata a8 bes | c4 c bes | a2 8 c | 4 g c | 2
  c8 8 | d4 bes d | c a bes | a2. \section | g4 c c | 2 8 8 |
  a4 d d | 2 c8 8 | 4 4 4 | c a\fermata c8 d | c4 a bes | a2
}

bass = \relative {
  \autoBeamOff
  f8 8 | 4 4 c | f2 8 8 | c4 c c | f2 8 8 | bes,4 4 4 |
  f'4 4 4 | c2\fermata f8 8 | 4 4 c | f2 8 8 | c4 c c | f2
  f8 8 | bes,4 4 4 | c c c | <f, f'>2. \section | c'4 4 4 | f2 8 ees |
  d4 4 4 | g2 ees8 d | c4 4 4 | f f\fermata a,8 bes | c4 4 4 | <f, f'>2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Trust and o -- bey, for there's no o -- ther way
  To be hap -- py in Je -- sus but to trust and o -- bey.
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  When we walk with the Lord
  In the light of His Word
  What a glo -- ry He sheds on our way!
  While we do His good will,
  He a -- bides with us still,
  And with all who will trust and o -- bey.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Not a sha -- dow can rise,
  Not a cloud in the skies,
  But His smile quick -- ly drives it a -- way;
  Not a doubt or a fear,
  Not a sigh or a tear,
  Can a -- bide while we trust and o -- bey.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Not a bur -- den we bear,
  Not a sor -- row we share,
  But our toll He doth rich -- ly re -- pay;
  Not a grief or a loss,
  Not a frown nor a cross,
  But is blest if we trust and o -- bey.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  But we nev -- er can prove
  The de -- lights of His love
  Un -- til all on the al -- tar we lay;
  For the fa -- vour He shows,
  And the joy He be -- stows,
  Are for them who will trust and o -- bey.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Then in fel -- low -- ship sweet
  We will sit at His feetm
  Or we'll walk by His side in the way;
  What He says we will do,
  Where He sends we will go—
  Nev -- er fear, on -- ly trust and o -- bey.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "When " "we " "walk " "with " "the " "Lord "
  "\nIn " "the " "light " "of " "His " "Word "
  "\nWhat " "a " glo "ry " "He " "sheds " "on " "our " "way! "
  "\nWhile " "we " "do " "His " "good " "will, "
  "\nHe " a "bides " "with " "us " "still, "
  "\nAnd " "with " "all " "who " "will " "trust " "and " o "bey. "
  "\nTrust " "and " o "bey, " "for " "there's " "no " o "ther " "way "
  "\nTo " "be " hap "py " "in " Je "sus " "but " "to " "trust " "and " o "bey.\n"

  \set stanza = "2."
  "\nNot " "a " sha "dow " "can " "rise, "
  "\nNot " "a " "cloud " "in " "the " "skies, "
  "\nBut " "His " "smile " quick "ly " "drives " "it " a "way; "
  "\nNot " "a " "doubt " "or " "a " "fear, "
  "\nNot " "a " "sigh " "or " "a " "tear, "
  "\nCan " a "bide " "while " "we " "trust " "and " o "bey. "
  "\nTrust " "and " o "bey, " "for " "there's " "no " o "ther " "way "
  "\nTo " "be " hap "py " "in " Je "sus " "but " "to " "trust " "and " o "bey.\n"

  \set stanza = "3."
  "\nNot " "a " bur "den " "we " "bear, "
  "\nNot " "a " sor "row " "we " "share, "
  "\nBut " "our " "toll " "He " "doth " rich "ly " re "pay; "
  "\nNot " "a " "grief " "or " "a " "loss, "
  "\nNot " "a " "frown " "nor " "a " "cross, "
  "\nBut " "is " "blest " "if " "we " "trust " "and " o "bey. "
  "\nTrust " "and " o "bey, " "for " "there's " "no " o "ther " "way "
  "\nTo " "be " hap "py " "in " Je "sus " "but " "to " "trust " "and " o "bey.\n"

  \set stanza = "4."
  "\nBut " "we " nev "er " "can " "prove "
  "\nThe " de "lights " "of " "His " "love "
  "\nUn" "til " "all " "on " "the " al "tar " "we " "lay; "
  "\nFor " "the " fa "vour " "He " "shows, "
  "\nAnd " "the " "joy " "He " be "stows, "
  "\nAre " "for " "them " "who " "will " "trust " "and " o "bey. "
  "\nTrust " "and " o "bey, " "for " "there's " "no " o "ther " "way "
  "\nTo " "be " hap "py " "in " Je "sus " "but " "to " "trust " "and " o "bey.\n"

  \set stanza = "5."
  "\nThen " "in " fel low "ship " "sweet "
  "\nWe " "will " "sit " "at " "His " "feetm "
  "\nOr " "we'll " "walk " "by " "His " "side " "in " "the " "way; "
  "\nWhat " "He " "says " "we " "will " "do, "
  "\nWhere " "He " "sends " "we " "will " "go— "
  "\nNev" "er " "fear, " on "ly " "trust " "and " o "bey. "
  "\nTrust " "and " o "bey, " "for " "there's " "no " o "ther " "way "
  "\nTo " "be " hap "py " "in " Je "sus " "but " "to " "trust " "and " o "bey. "
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

#(set-global-staff-size 18)

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

#(set-global-staff-size 20)

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
      #(layout-set-staff-size 20)
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
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
