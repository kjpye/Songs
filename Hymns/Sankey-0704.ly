\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Christian, Dost thou see them?"
  subtitle    = "Sankey No. 704"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Josiah Booth."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Andrew of Crete"
  meter       = "Tr. J. M. Neale."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*4
  \textMark \markup { \box \bold "B" } s1*4
  \textMark \markup { \box \bold "C" } s1*4
  \textMark \markup { \box \bold "D" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff \key aes \major
  f'4^\markup\smallCaps Unison. f f f | aes4.(g8) f2 | 4. 8 ees4 des | c1 |
  f4 f f f aes4.(g8) f4(g) | aes4. 8 bes4 b | c1
  \section \key f \major \sectionLabel \markup\smallCaps Harmony.
  c4. 8 a4 f | d'2 c | 4. 8 4 f | e1 |
  f4. 8 e4 d | c bes a f | a2. g4 | f1 |
}

alto = \relative {
  \autoBeamOff \key aes \major
  s1 | c'4 des <aes c> <bes des> | s1 | s |
  s1 | <c f>4 <bes e> c~ <c ees> | <c f>4. 8 4 <f aes> | <f g> <e g> <<{\voiceTwo f4 <e g bes>} \new Voice {\voiceFour c2}>> \key f \major |
  f4. 8 4 4 | 2 e | 4. 8 f4 g | 1 |
  f4. 8 g4 f | fis g e f | f(c d) e | f1 |
}

tenor = \relative {
  \autoBeamOff \key aes \major
  <<{\voiceOne <aes c>4-> <bes des>-> <aes c>-> <bes des>->} \new Voice {\voiceThree f1}>> |
  f4. e8 f2 | <aes c>4. 8 <f bes>4 4 | <f g>(<e g> <f aes> <g bes>) |
  <<{\voiceOne <aes c>4-> <bes des>-> <aes c>-> <bes des>->} \new Voice {\voiceThree f1}>> |
  f4 c aes'(g) | f ees d des | c(bes a g) \key f \major \section |
  a'4. 8 c4 a | 2 2 | 4 bes a b | c1 |
  <a c>4. a8 cis4 d | d d cis a | c2. bes4 | a1 |
}

bass = \relative {
  \autoBeamOff \key aes \major
  f,4 bes f bes | f4 bes f bes | f aes bes g | c(bes aes g) |
  f4 d f d | f s2. | s1 | s | \key f \major
  f1 | bes2 a | a'4 g f d | c2(<c c'>4 <bes bes'>) |
  a2 4 bes | d g, a d | c2. 4 | <f, f'>1 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Chris -- tian, dost thou see __ them
  On the ho -- ly ground, __
  How the powers of dark -- ness
  Com -- pass thee a -- round? __
  Chris -- tian, up and smite them,
  Count -- ing gain but loss; __
  Smite them by the mer -- it
  Of the ho -- ly cross.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Chris -- tian, dost thou fell __ them
  How they work with -- in, __
  Stri -- ving, tempt -- ing, lur -- ing,
  Goad -- ing in -- to sin? __
  Chris -- tian nev -- er trem -- ble,
  Nev -- er be down -- cast; __
  Gird thee for the con -- flict;
  Watch, and pray, __ and fast.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Chris -- tian dost thou hear __ them,
  How they speak thee fair?
  “Al -- ways fast and vi -- gil,
  Al -- ways watch and prayer?”
  Chris -- tian an -- swer bold -- ly,
  “While I breathe and pray”;
  Peace shall fol -- low bat -- tle,
  Night shall end in day.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  “Well I know thy trou -- ble,
  O My ser -- vant true;
  Thou art ver -- y wear -- y—
  I was wear -- y too:
  But that toil shall make thee
  Some day all Mine own,
  And the end of sor -- row
  Shall be near My throne.”
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Chris" "tian, " "dost " "thou " "see "  "them "
  "\nOn " "the " ho "ly " "ground, " 
  "\nHow " "the " "powers " "of " dark "ness "
  "\nCom" "pass " "thee " a "round? " 
  "\nChris" "tian, " "up " "and " "smite " "them, "
  "\nCount" "ing " "gain " "but " "loss; " 
  "\nSmite " "them " "by " "the " mer "it "
  "\nOf " "the " ho "ly " "cross.\n"

  \set stanza = "2."
  "\nChris" "tian, " "dost " "thou " "fell "  "them "
  "\nHow " "they " "work " with "in, " 
  "\nStri" "ving, " tempt "ing, " lur "ing, "
  "\nGoad" "ing " in "to " "sin? " 
  "\nChris" "tian " nev "er " trem "ble, "
  "\nNev" "er " "be " down "cast; " 
  "\nGird " "thee " "for " "the " con "flict; "
  "\nWatch, " "and " "pray, "  "and " "fast.\n"

  \set stanza = "3."
  "\nChris" "tian " "dost " "thou " "hear "  "them, "
  "\nHow " "they " "speak " "thee " "fair? "
  "\n“Al" "ways " "fast " "and " vi "gil, "
  "\nAl" "ways " "watch " "and " "prayer?” "
  "\nChris" "tian " an "swer " bold "ly, "
  "\n“While " "I " "breathe " "and " "pray”; "
  "\nPeace " "shall " fol "low " bat "tle, "
  "\nNight " "shall " "end " "in " "day.\n"

  \set stanza = "4."
  "\n“Well " "I " "know " "thy " trou "ble, "
  "\nO " "My " ser "vant " "true; "
  "\nThou " "art " ver "y " wear "y— "
  "\nI " "was " wear "y " "too: "
  "\nBut " "that " "toil " "shall " "make " "thee "
  "\nSome " "day " "all " "Mine " "own, "
  "\nAnd " "the " "end " "of " sor "row "
  "\nShall " "be " "near " "My " "throne.” "
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
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
