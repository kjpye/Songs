\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Lord's my Shepherd"
  subtitle    = "AHB 16(i)"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Melody by Jessie Seymour Irvine 1836—87"
  arranger    = "Arr. David Grant 1833—93"
%  opus        = "opus"

  poet        = "Psalm 23"
  meter       = \markup\smallCaps "86.86"
  piece       = \markup\smallCaps "Crimond"

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
  \textMark \markup { \box \bold "A" } s2.*6
  \textMark \markup { \box \bold "B" } s2.*5
  \textMark \markup { \box \bold "C" } s2.*5
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c'4 | a'2 bes8.(g16) | c2 bes8(g) | f2 e4 | f2 \breathe a4 |
  a4(g) g | b2 4 | c2 \breathe a4 | a(bes) a | g2 a4 |
  bes4(c) bes | a2 \breathe 4 | g(bes) d | f,2 e4 | f2
}

alto = \relative {
  \autoBeamOff
  c'4 | f2 g8.(e16) | a4(f) d | c2 4 | 2 \breathe f4 |
  f2 4 | d(g) f | e2 \breathe f4 | f(g) f | e2 f4 |
  g4(a) g | f2 \breathe 4 | d2 4 | c2 4 | 2
}

tenor = \relative {
  \autoBeamOff
  a4 | c2 bes4 | a2 bes4 | a2 g4 | a2 \breathe c4 |
  b2 4 | d2 4 | c2 \breathe 4 | c(g) a8(bes) | c2 4 |
  c2 4 | 2 \breathe 4 | bes2 4 | a2 g4 | a2 
}

bass = \relative {
  \autoBeamOff
  f4 | 2 4 | f2 bes,4 | c2 4 | f2 \breathe 8(e) |
  d2 4 | g2 g,4 | c2 \breathe f4 | c2 4 | c(bes') a |
  g4(c,) d8(e) | f2 \breathe 4 | bes,2 4 | c2 4 | f2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  The Lord's my shep -- herd, I'll not want.
  He makes me down to lie
  in pas -- tures green, he lead -- eth me
  the qui -- et wa -- ters by.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  My soul he doth re -- store a -- gain;
  And me to walk doth make
  with -- in the paths of right -- eous -- ness,
  ev'n for his own name's sake.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Yea, though I walk in dath's dark vale,
  yet will I fear no ill:
  for thou art with me; and thy rod
  and staff me com -- fort still.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  My ta -- ble though hast fur -- nish -- ed
  in pres -- ence of my foes;
  my head thou dost with oil a -- noint,
  and my cup o -- ver -- flows.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Good -- nes and mer -- cy all my life
  shall sure -- ly fol -- low me:
  and in God's house for ev -- er -- more
  my dwell -- ing- place shall be.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "The " "Lord's " "my " shep "herd, " "I'll " "not " "want. "
  "\nHe " "makes " "me " "down " "to " "lie "
  "\nin " pas "tures " "green, " "he " lead "eth " "me "
  "\nthe " qui "et " wa "ters " "by.\n"

  \set stanza = "2."
  "\n[2] My " "soul " "he " "doth " re "store " a "gain; "
  "\nAnd " "me " "to " "walk " "doth " "make "
  "\nwith" "in " "the " "paths " "of " right eous "ness, "
  "\nev'n " "for " "his " "own " "name's " "sake.\n"

  \set stanza = "3."
  "\n[3] Yea, " "though " "I " "walk " "in " "dath's " "dark " "vale, "
  "\nyet " "will " "I " "fear " "no " "ill: "
  "\nfor " "thou " "art " "with " "me; " "and " "thy " "rod "
  "\nand " "staff " "me " com "fort " "still.\n"

  \set stanza = "4."
  "\n[4] My " ta "ble " "though " "hast " fur nish "ed "
  "\nin " pres "ence " "of " "my " "foes; "
  "\nmy " "head " "thou " "dost " "with " "oil " a "noint, "
  "\nand " "my " "cup " o ver "flows.\n"

  \set stanza = "5."
  "\n[5] Good" "nes " "and " mer "cy " "all " "my " "life "
  "\nshall " sure "ly " fol "low " "me: "
  "\nand " "in " "God's " "house " "for " ev er "more "
  "\nmy " dwell ing "place " "shall " "be. "
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
%            \new Voice { \repeat unfold \verses \RehearsalTrack }
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
    \layout { }
    \midi {}
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "repeat"
  \score {
    \new ChoirStaff <<
                                % Joint soprano/alto staff
      \new Staff = women
      <<
                                %            \new Voice \RehearsalTrack
        \new Voice \TempoTrack
        \new NullVoice = "aligner" \soprano
        \new Voice { \voiceOne \global \soprano \bar "|." }
        \new Voice { \voiceTwo \global \alto }
        \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
        \new Lyrics \lyricsto "aligner"   \wordsTwo
        \new Lyrics \lyricsto "aligner"   \wordsThree
        \new Lyrics \lyricsto "aligner"   \wordsFour
        \new Lyrics \lyricsto "aligner"   \wordsFive
      >>
      \new Staff = men
      <<
        \clef "bass"
        \new Voice { \voiceOne \global \tenor }
        \new Voice { \voiceTwo\global \bass }
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
          \new Staff = women
          <<
%            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice { \voiceOne \global \repeat unfold \verses \soprano \bar "|." }
            \new Voice { \voiceTwo \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
          \new Staff = men
          <<
            \clef "bass"
            \new Voice { \voiceOne \global \repeat unfold \verses \tenor }
            \new Voice { \voiceTwo \global \repeat unfold \verses \bass }
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
