\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "O Day of Rest and Gladness."
  subtitle    = "Sankey No. 270"
  subsubtitle = "Sankey 880 No. 707"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Robert Jackson."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Chr. Wordsworth."
  meter       = \markup\smallCaps "7.6."
  piece       = \markup\smallCaps "Lymington."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
  \mark \markup { \box "C" } s4 s1*3 s2.
  \mark \markup { \box "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c'4
  f4 8[g] a4 f
  c'2 a4 f
  d'4 4 c bes
  a2. \bar "|" \break c,4
  f4 8[g] a4 f % B
  bes2 d4 4
  c4 8[d] e4 d
  c2. \bar "|" \break 4
  g4 a b g % C
  a4.(d8) c4 4
  g4 a bes d
  c2. \bar "|" \break 4
  f4 4 e d % D
  c2 a4 bes
  a4. f8 a4 g
  f2.
}

alto = \relative {
  \autoBeamOff
  c'4
  f4 8[g] a4 f
  g2 f4 4
  f4 4 4 e
  f2. c4
  f4 8[g] a4 f % B
  f2 4 4
  f4 a g f
  e2. 4
  e4 f g e % C
  f2 4 4
  e4 f g bes
  a2. g4
  f4 4 4 4 % D
  e2 f4 4
  f4. 8 e4 4
  f2.
}

tenor = \relative {
  \autoBeamOff
  c'4
  f,4 8[g] a4 f
  c'2 4 4
  bes4 4 c c
  c2. 4
  f,4 8[g] a4 f % B
  a2 4 4
  c4 4 4 b
  c2. 4
  bes4 a g c
  c4.(bes8) a4 4
  c4 4 bes g
  a2. c4
  a4 4 c bes % D
  g2 f4 d'
  c4. a8 c4 bes
  a2.
}

bass = \relative {
  \autoBeamOff
  c4
  f4 8[g] a4 f
  e2 f4 a
  bes4 4 a g
  f2. c4
  f4 8[g] a4 f % B
  d2 bes4 bes'
  a4 f g g
  c,2. 4
  c4 4 4 4
  f2 4 4
  bes4 a g e
  f2. e4
  d4 4 a bes % D
  c2 d4 bes
  c4. 8 4 4
  f2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  O day of rest and glad -- ness,
  O day of joy and light;
  O balm of care and sad -- ness,
  Most beau -- ti -- ful, most bright!
  On thee the high and low -- ly
  Be -- fore "th e" -- ter -- nal throne
  Sing "\"Ho" -- ly, Ho -- ly, Ho -- "ly,\""
  To God the Three in One!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  On thee at the cre -- a -- tion
  The light first had its birth;
  On thee for our sal -- va -- tion
  Christ rose from depths of earth;
  On thee our Lord vic -- to -- rious
  The Spi -- rit sent from heaven;
  And thus on thee most glo -- rious
  A tri -- ple light was given.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Thou art a cool -- ing foun -- tain
  In life's dry, drea -- ry sand;
  From thee, like Pis -- gah's moun -- tain,
  We view our prom -- ised land;
  A day of sweet re -- fec -- tion,
  A day of ho -- ly love,
  A day of re -- sur -- rec -- tion
  From earth to things a -- bove.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  To -- day on wea -- ry na -- tions
  The heaven -- ly man -- na falls;
  To ho -- ly con -- vo -- ca -- tions
  The sil -- ver trum -- pet calls,
  Where gos -- pel- --  light is glow -- ing
  With pure and ra -- diant beams,
  And liv -- ing wa -- ter flow -- ing
  With soul- -- re -- fresh -- ing streams.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  New grac -- es ev -- er gain -- ing
  From this our day of rest,
  We reach the rst re -- main -- ing
  To spi -- rits of the blest.
  To Ho -- ly Ghost be prais -- es,
  To fa -- ther and to Son;
  The Church her voice up -- rais -- es
  To Thee, blest Three in One.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " "day " "of " "rest " "and " glad "ness, "
  "\nO " "day " "of " "joy " "and " "light; "
  "\nO " "balm " "of " "care " "and " sad "ness, "
  "\nMost " beau ti "ful, " "most " "bright! "
  "\nOn " "thee " "the " "high " "and " low "ly "
  "\nBe" "fore " "th e" ter "nal " "throne "
  "\nSing " "\"Ho" "ly, " Ho "ly, " Ho "ly,\" "
  "\nTo " "God " "the " "Three " "in " "One! "

  \set stanza = "2."
  "\nOn " "thee " "at " "the " cre a "tion "
  "\nThe " "light " "first " "had " "its " "birth; "
  "\nOn " "thee " "for " "our " sal va "tion "
  "\nChrist " "rose " "from " "depths " "of " "earth; "
  "\nOn " "thee " "our " "Lord " vic to "rious "
  "\nThe " Spi "rit " "sent " "from " "heaven; "
  "\nAnd " "thus " "on " "thee " "most " glo "rious "
  "\nA " tri "ple " "light " "was " "given. "

  \set stanza = "3."
  "\nThou " "art " "a " cool "ing " foun "tain "
  "\nIn " "life's " "dry, " drea "ry " "sand; "
  "\nFrom " "thee, " "like " Pis "gah's " moun "tain, "
  "\nWe " "view " "our " prom "ised " "land; "
  "\nA " "day " "of " "sweet " re fec "tion, "
  "\nA " "day " "of " ho "ly " "love, "
  "\nA " "day " "of " re sur rec "tion "
  "\nFrom " "earth " "to " "things " a "bove. "

  \set stanza = "4."
  "\nTo" "day " "on " wea "ry " na "tions "
  "\nThe " heaven "ly " man "na " "falls; "
  "\nTo " ho "ly " con vo ca "tions "
  "\nThe " sil "ver " trum "pet " "calls, "
  "\nWhere " gos pel-  "light " "is " glow "ing "
  "\nWith " "pure " "and " ra "diant " "beams, "
  "\nAnd " liv "ing " wa "ter " flow "ing "
  "\nWith " soul- re fresh "ing " "streams. "

  \set stanza = "5."
  "\nNew " grac "es " ev "er " gain "ing "
  "\nFrom " "this " "our " "day " "of " "rest, "
  "\nWe " "reach " "the " "rst " re main "ing "
  "\nTo " spi "rits " "of " "the " "blest. "
  "\nTo " Ho "ly " "Ghost " "be " prais "es, "
  "\nTo " fa "ther " "and " "to " "Son; "
  "\nThe " "Church " "her " "voice " up rais "es "
  "\nTo " "Thee, " "blest " "Three " "in " "One. "
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
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
    paper-height = 2000\mm
    ragged-bottom = true
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
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
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
