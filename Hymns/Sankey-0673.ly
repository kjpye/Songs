\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Victory Through Grace."
  subtitle    = "Sankey No. 673"
  subsubtitle = "N. H. No. 14"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Jno. R. Sweney."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "S. Martin."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 9/8
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4.*12
  \textMark \markup { \box \bold "B" } s4.*12
  \textMark \markup { \box \bold "C" } s4.*12
  \textMark \markup { \box \bold "D" } s4.*12
  \textMark \markup { \box \bold "E" } s4.*12
  \textMark \markup { \box \bold "F" } s4.*12
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4.=110
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  bes8 d f | bes4. f d8[f] bes | d4. bes4. 8 c d | c4. bes a | bes~bes \bar "|" \break
  bes,8 d f | bes4. f d8[f] bes | d4. bes4. 8 c d | c4. bes g | f~f \bar "|" \break
  f8 8 8 | g4. g a | bes bes bes8 8 8 | c4. bes c | d~d \bar "|" \break
  d8 8 8 | f4. ees
  c | ees d bes8 c d | c4. bes a | bes~bes
  \section \sectionLabel \markup\smallCaps Chorus. \break
  f8 g a | bes4.~bes bes8[a] bes | c4. f, f8 8 8 | c'4. d ees | d~d \bar "|" \break
  d8 8 8 | f4. ees c | ees d bes8 c d | c4. bes a | bes~bes
}

alto = \relative {
  \autoBeamOff
  bes8 d f | bes4. f d8[f] bes | d4. bes d,8 ees f | ees4. d c4(ees8) | d4.~d
  bes8 d f | bes4. f d8[f] bes | d4. bes d,8 ees f | e4. e c | c4.~c
  f8 8 8 | ees4. 4. fis | g g g8 8 8 | a4. f f | f~f
  f8 8 8 | ees4. ees g4(ges8) | f4. f d8 ees d | ees4. d c | d~d
  f8 g a | bes4.~4. 8[a] bes | c4. f,4. 8 8 8 | f4. f f | f~f
  aes8 8 8 | g4. g g4(ges8) | f4. f d8 ees f | ees4. d c4(ees8) | d4.~d
  
}

tenor = \relative {
  \autoBeamOff
  bes,8 d f | bes4. f d8[f] bes | d4. bes f8 8 bes | g4. f f | f~f
  bes,8 d f | bes4. f d8[f] bes | d4. bes f8 8 bes | g4. g a | a~a
  f8 8 8 | a4. a d | d d d8 8 8 | ees4. d c | bes~bes
  bes8 8 8 | 4. 4. ees | bes bes f8 f bes | g4. f f | f~f \section
  f8 g a | bes4.~4. 8[a] bes | c4. f,4. 8 8 8 | a4. bes c | bes~bes
  bes8 8 8 | 4. 4. ees | bes bes f8 f bes | g4. f f | f~f
}

bass = \relative {
  \autoBeamOff
  bes,8 d f | bes4. f d8[f] bes | d4. bes bes,8 8 8 | ees4. f f, | bes4.~bes
  bes8 d f | bes4. f d8[f] bes | d4. bes bes,8 8 8 | d4. c c | f~f
  f8 8 8 | ees4. ees d | g g g8 8 8 | f4. f a | bes~bes
  aes8 8 8 | g4. g ees | bes' bes bes,8 8 8 | ees4. f f, | bes4.~bes
  f8 g a | bes4.~4. 8[a] bes | c4. f, f8 8 8 | 4. 4. 4. | bes~bes
  f'8 8 8 | ees4. 4. 4. | bes' bes bes,8 8 8 | ees4. f f, | bes4.~bes
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  “Not to the strong is the bat -- tle,
  Not to the swift is the race;
  Yet to the true and the faith -- ful
  Vic -- t'ry is pro -- mised though grace.”
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Con -- quer -- ing now and still to con -- quer,
  Ri -- deth a King in His might.
  Lead -- ing the host of all the faith -- ful
  In -- to the midst of the fight;
  See them with cour -- age ad -- van -- cing,
  Clad in their bril -- liant ar -- ray,
  Shout -- ing the name of their Lead -- er,
  Hear them ex -- ult -- ing -- ly say:
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  “Con -- quer -- ing now and still to con -- quer:
  Who is this Won -- der -- ful King?
  Whence all the ar -- mies which He lead -- eth.
  While of His glo -- ry they sing?”
  He is our Lord and Re -- deem -- er,
  Sa -- viour and Mon -- arch Di -- vine,
  They are the stars that for -- ev -- er
  Bright in His king -- dom will shine.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Con -- quer -- ing now and still to con -- quer,
  Je -- sus, Thou Ru -- ler of all,
  Thrones and their scep -- tres all shall per -- ish,
  Crowns and their splen -- dour shall fall;
  Yet shall the ar -- mies Thou lead -- est,
  Faith -- ful and true to the last,
  Find in Thy man -- sions e -- ter -- nal
  Rest, when their war -- fare is past.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Con" quer "ing " "now " "and " "still " "to " con "quer, "
  "\nRi" "deth " "a " "King " "in " "His " "might. "
  "\nLead" "ing " "the " "host " "of " "all " "the " faith "ful "
  "\nIn" "to " "the " "midst " "of " "the " "fight; "
  "\nSee " "them " "with " cour "age " ad van "cing, "
  "\nClad " "in " "their " bril "liant " ar "ray, "
  "\nShout" "ing " "the " "name " "of " "their " Lead "er, "
  "\nHear " "them " ex ult ing "ly " "say: "
  "\n“Not " "to " "the " "strong " "is " "the " bat "tle, "
  "\nNot " "to " "the " "swift " "is " "the " "race; "
  "\nYet " "to " "the " "true " "and " "the " faith "ful "
  "\nVic" "t'ry " "is " pro "mised " "though " "grace.”\n"

  \set stanza = "2."
  "\n“Con" quer "ing " "now " "and " "still " "to " con "quer: "
  "\nWho " "is " "this " Won der "ful " "King? "
  "\nWhence " "all " "the " ar "mies " "which " "He " lead "eth. "
  "\nWhile " "of " "His " glo "ry " "they " "sing?” "
  "\nHe " "is " "our " "Lord " "and " Re deem "er, "
  "\nSa" "viour " "and " Mon "arch " Di "vine, "
  "\nThey " "are " "the " "stars " "that " for ev "er "
  "\nBright " "in " "His " king "dom " "will " "shine. "
  "\n“Not " "to " "the " "strong " "is " "the " bat "tle, "
  "\nNot " "to " "the " "swift " "is " "the " "race; "
  "\nYet " "to " "the " "true " "and " "the " faith "ful "
  "\nVic" "t'ry " "is " pro "mised " "though " "grace.”\n"

  \set stanza = "3."
  "\nCon" quer "ing " "now " "and " "still " "to " con "quer, "
  "\nJe" "sus, " "Thou " Ru "ler " "of " "all, "
  "\nThrones " "and " "their " scep "tres " "all " "shall " per "ish, "
  "\nCrowns " "and " "their " splen "dour " "shall " "fall; "
  "\nYet " "shall " "the " ar "mies " "Thou " lead "est, "
  "\nFaith" "ful " "and " "true " "to " "the " "last, "
  "\nFind " "in " "Thy " man "sions " e ter "nal "
  "\nRest, " "when " "their " war "fare " "is " "past. "
  "\n“Not " "to " "the " "strong " "is " "the " bat "tle, "
  "\nNot " "to " "the " "swift " "is " "the " "race; "
  "\nYet " "to " "the " "true " "and " "the " faith "ful "
  "\nVic" "t'ry " "is " pro "mised " "though " "grace.” "
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

#(set-global-staff-size 20)

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
