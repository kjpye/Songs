\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Oh for a Closer Walk!"
  subtitle    = "Sankey No. 583"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Isaac Smith."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "W. Cowper."
  meter       = \markup\smallCaps "C.M."
  piece       = \markup\smallCaps "Abridge."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*6 s2
  \textMark \markup { \box \bold "B" } s4 s2.*6 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

dynamicsPrint = {
}

dynamicsOmit = {
}

soprano = \relative {
  \autoBeamOff
  ees'4 | bes'2 ees4 | ees(d) c | bes(aes) g | g(f) g | c2 bes4 | 2 a4 | bes2 \bar "|" \break
  bes4 | g(aes) c | bes2 4 | c(d) ees | ees(d) bes | ees(g,) bes | aes(g) f | ees2
}

alto = \relative {
  \autoBeamOff
  ees'4 | 2 4 | g(f) f | g(f) ees | ees(d) ees | 2 f4 | g2 f4 | 2 
  d4 | ees2 d4 | ees2 4 | ees(a) g | g(f) d | ees2 4 | 2 d4 | ees2 
}

tenor = \relative {
  \autoBeamOff
  g4 | 2 bes4 | 2 d4 | ees(bes) bes | 2 4 | ees2 d4 | c2 4 | d2
  bes4 | 4(aes) aes | bes2 g4 | aes2 bes4 | 2 4 | 2 4 | c(bes) aes | g2
}

bass = \relative {
  \autoBeamOff
  ees4 | 2 g4 | bes2 aes4 | g(d) ees | bes2 ees4 | c2 d4 | ees2 f4 | bes,2
  bes4 | ees(f) aes | g2 ees4 | aes(f) ees | bes2 aes'4 | g(ees) g | aes(bes) bes, | ees2
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
  Oh for a clo -- ser walk with God,
  A calm and heaven -- ly frame;
  A light to shine up -- on the road
  That leads me to the Lamb!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Where is the bless -- ed -- ness I knew
  When first I saw the Lord?
  Where is the soul- er -- fresh -- ing view
  Of Je -- sus and His word?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  What peace -- ful hours I once en -- joyed—
  How sweet their me -- 'ry still!
  But they have left an ach -- ing void
  The world can nev -- er fill.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  The dear -- est i -- dol I have known,
  What -- e'er that i -- dol be,
  Help me to tear it from Thy throne,
  And wor -- ship on -- ly Thee.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  So shall my walk be close with God,
  Calm and se -- rene my frame;
  So pur -- er light shall mark the road
  That leads me to the lamb.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Oh " "for " "a " clo "ser " "walk " "with " "God, "
  "\nA " "calm " "and " heaven "ly " "frame; "
  "\nA " "light " "to " "shine " up "on " "the " "road "
  "\nThat " "leads " "me " "to " "the " "Lamb!\n"

  \set stanza = "2."
  "\nWhere " "is " "the " bless ed "ness " "I " "knew "
  "\nWhen " "first " "I " "saw " "the " "Lord? "
  "\nWhere " "is " "the " soul er fresh "ing " "view "
  "\nOf " Je "sus " "and " "His " "word?\n"

  \set stanza = "3."
  "\nWhat " peace "ful " "hours " "I " "once " en "joyed— "
  "\nHow " "sweet " "their " me "'ry " "still! "
  "\nBut " "they " "have " "left " "an " ach "ing " "void "
  "\nThe " "world " "can " nev "er " "fill.\n"

  \set stanza = "4."
  "\nThe " dear "est " i "dol " "I " "have " "known, "
  "\nWhat" "e'er " "that " i "dol " "be, "
  "\nHelp " "me " "to " "tear " "it " "from " "Thy " "throne, "
  "\nAnd " wor "ship " on "ly " "Thee.\n"

  \set stanza = "5."
  "\nSo " "shall " "my " "walk " "be " "close " "with " "God, "
  "\nCalm " "and " se "rene " "my " "frame; "
  "\nSo " pur "er " "light " "shall " "mark " "the " "road "
  "\nThat " "leads " "me " "to " "the " "lamb.\n"
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
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \global \repeat unfold \verses \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
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
            \new Dynamics \with {alignAboveContext = women} \dynamicsPrint
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
            \new Dynamics \dynamicsOmit
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
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

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Dynamics \with {alignAboveContext = women} \repeat unfold \verses \dynamicsPrint
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
            \new Dynamics \repeat unfold \verses \dynamicsOmit
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
