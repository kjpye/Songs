\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "On Thee my Heart is Resting."
  subtitle    = "Sankey No. 619"
  subsubtitle = "C. C. No. 162"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. Mountain."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Theo Monod."
  meter       = \markup\smallCaps "7.6."
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
  \textMark \markup { \box \bold "A" } s4 s2.*7
  \textMark \markup { \box \bold "B" }    s2.*8
  \textMark \markup { \box \bold "C" }    s2.*8
  \textMark \markup { \box \bold "D" }    s2.*7 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo Joyfully 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff \partial 4
  c'4 | a'2 4 | a(g) a | c2. | a2 f4 | f2 4 | g2 4 | a2. |
  r2 c,4 | a'2 4 | a(g) a | c2. | a2 4 | g2 4 | a2 b4 | c2. |
  r2 c4 | d2 4 | g,2 4 | d'2. | c2 g4 | g(a) g | 2 4 | c2. |
  r2 c4 | d2 4 | c2 4 | bes2. | a2 4 | a(g) f | 2 e4 | f2 
}

alto = \relative {
  \autoBeamOff \partial 4
  c'4 | f2 4 | 2 4 | 2. | 2 4 | 2 4 | e2 4 | f2. |
  r2 c4 | f2 4 | 2 4 | 2. | 2 4 | e2 4 | f2 f4 | e2. |
  r2 f4 | e2 4 | 2 4 | 2. | r2 e4 | 2 4 | d2 e4 | f2. |
  r2 f4 | e2 4 | f2 4 | f(g e) | f2 c4 | d2 4 | c2 4 | 2 
}

tenor = \relative {
  \autoBeamOff \partial 4
  a4 | c2 4 | c(bes) c | a2. | c2 a4 | 2 4 | c2 4 | 2. |
  r2 a4 | c2 4 | c(bes) c | a2. | c2 4 | 2 4 | 2 d4 | c2. |
  r2 c4 | 2 4 | 2 4 | bes2. | c2 4 | 2 4 | bes2 c4 | 2. |
  r2 c4 | 2 4 | 2 4 | d2(c4) | 2 f,4 | 2 g4 | a2 g4 | a2 
}

bass = \relative {
  \autoBeamOff \partial 4
  f4 | 2 4 | 2 4 | 2. | 2 4 | d2 4 | c2 4 | f2. |
  r2 f4 | 2 4 | 2 4 | 2. | 2 4 | g2 4 | 2 4 | c,2. |
  r2 a'4 | bes2 4 | 2 4 | g2. | a2 bes4 | 2 4 | g2 bes4 | a2. |
  r2 a4 | bes2 4 | a2 4 | g2. | f2 a,4 | bes2 b4 | c2 4 | f2
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
  On Thee my heart is rest -- ing!
  Ah, this is rest in -- deed!
  What else, Al -- migh -- ty Sa -- viour,
  Can a poor sin -- ner need?
  Thy light is all my wis -- dom,
  Thy love is all my stay;
  Our Fa -- ther's home in glo -- ry
  Draws near -- er ev -- 'ry day.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  My guilt is great, but great -- er
  The mer -- cy Thou dost give;
  Thy -- self, a spot -- less Off -- 'ring,
  Hast died that I should live.
  With Thee, my soul un -- fet -- tered,
  Has ris -- en from the dust;
  Thy blood is all my trea -- sure,
  Thy word is all my trust.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Thro' me, Thou gen -- tle Mas -- ter,
  Thy pur -- pos -- es ful -- fil!
  I yield my -- self for ev -- er
  To Thy most ho -- ly will.
  What though I be but weak -- nessm
  My strength is not in me;
  The poor -- est of Thy peo -- ple
  Has all things hav -- ing Thee.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  When clouds are dark -- est round me,
  Thou, Lord, art then most near,
  My droop -- ing faith to quick -- en,
  My wea -- ry soul to cheer.
  Safe nest -- ling in Thy bos -- om,
  I gaze up -- on Thy face;
  In vain my foes would drive me
  From Thee, my hid -- ing place.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  'Tis Thou hast made me hap -- py,
  'Tis Thou hast set me free;
  To whom shall I give glo -- ry
  For wev -- er, but to Thee?
  Of earth -- ly love and bless -- ing
  Should ev -- 'ry stream run dry,
  Thy grace shall still be with me,
  Thy grace, to live and die!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "On " "Thee " "my " "heart " "is " rest "ing! "
  "\nAh, " "this " "is " "rest " in "deed! "
  "\nWhat " "else, " Al migh "ty " Sa "viour, "
  "\nCan " "a " "poor " sin "ner " "need? "
  "\nThy " "light " "is " "all " "my " wis "dom, "
  "\nThy " "love " "is " "all " "my " "stay; "
  "\nOur " Fa "ther's " "home " "in " glo "ry "
  "\nDraws " near "er " ev "'ry " "day.\n"

  \set stanza = "2."
  "\nMy " "guilt " "is " "great, " "but " great "er "
  "\nThe " mer "cy " "Thou " "dost " "give; "
  "\nThy" "self, " "a " spot "less " Off "'ring, "
  "\nHast " "died " "that " "I " "should " "live. "
  "\nWith " "Thee, " "my " "soul " un fet "tered, "
  "\nHas " ris "en " "from " "the " "dust; "
  "\nThy " "blood " "is " "all " "my " trea "sure, "
  "\nThy " "word " "is " "all " "my " "trust.\n"

  \set stanza = "3."
  "\nThro' " "me, " "Thou " gen "tle " Mas "ter, "
  "\nThy " pur pos "es " ful "fil! "
  "\nI " "yield " my "self " "for " ev "er "
  "\nTo " "Thy " "most " ho "ly " "will. "
  "\nWhat " "though " "I " "be " "but " weak "nessm "
  "\nMy " "strength " "is " "not " "in " "me; "
  "\nThe " poor "est " "of " "Thy " peo "ple "
  "\nHas " "all " "things " hav "ing " "Thee.\n"

  \set stanza = "4."
  "\nWhen " "clouds " "are " dark "est " "round " "me, "
  "\nThou, " "Lord, " "art " "then " "most " "near, "
  "\nMy " droop "ing " "faith " "to " quick "en, "
  "\nMy " wea "ry " "soul " "to " "cheer. "
  "\nSafe " nest "ling " "in " "Thy " bos "om, "
  "\nI " "gaze " up "on " "Thy " "face; "
  "\nIn " "vain " "my " "foes " "would " "drive " "me "
  "\nFrom " "Thee, " "my " hid "ing " "place.\n"

  \set stanza = "5."
  "\n'Tis " "Thou " "hast " "made " "me " hap "py, "
  "\n'Tis " "Thou " "hast " "set " "me " "free; "
  "\nTo " "whom " "shall " "I " "give " glo "ry "
  "\nFor " wev "er, " "but " "to " "Thee? "
  "\nOf " earth "ly " "love " "and " bless "ing "
  "\nShould " ev "'ry " "stream " "run " "dry, "
  "\nThy " "grace " "shall " "still " "be " "with " "me, "
  "\nThy " "grace, " "to " "live " "and " "die! "
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
      #(layout-set-staff-size 18)
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
