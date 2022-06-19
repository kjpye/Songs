\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Look Away to Jesus."
  subtitle    = "Sankey No. 409"
  subsubtitle = "Sankey 880 No. 169"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "P. P. Bliss."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "H. Burton, M.A."
  meter       = \markup\smallCaps "6.5."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*4
  \mark \markup { \box "C" } s1*4
  \mark \markup { \box "D" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4 g a bes
  c2 f,
  a4 g f e
  f1
  d4 e f g % B
  a2 d
  c4 b a b
  c1
  c4 bes a g % C
  f2 c
  f4 e f a
  g1
  a4 bes c f % D
  f2 d
  c4 bes a4. g8
  f1
}

alto = \relative {
  \autoBeamOff
  f'4 4 4 g
  a2 f
  f4 d c c
  c1
  d4 4 4 e % B
  f2 2
  f4 4 4 4
  e1
  e4 d c c % C
  c2 2
  c4 4 4 f
  e1
  f4 e f a % D
  bes2 f
  f4 4 e4. 8
  f1
}

tenor = \relative {
  \autoBeamOff
  a4 bes c c
  f2 a,
  c4 bes a g
  a1
  f4 g a a % B
  d2 2
  d4 4 4 4
  c1
  g4 4 c bes % C
  a2 2
  a4 bes c c
  c1
  c4 4 f ees % D
  d2 bes
  a4 g c4. bes8
  a1
}

bass = \relative {
  \autoBeamOff
  f4 4 4 4
  f2 2
  f4 bes, c c
  f1
  d4 4 4 4 % B
  d2 2
  g4 4 4 4
  c,1
  c4 4 4 4 % C
  f2 2
  f4 g a f
  c1
  f4 g a f % D
  bes2 bes,
  c4 4 4. 8
  f,1
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
  Look a -- way to Je -- sus,
  Soul by woe op -- pressed!
  'Twas for thee He suf -- fered,
  Come to Him and rest.
  All thy griefs He car -- ried,
  All thy sins He bore;
  Look a -- way to Je -- sus;
  Trust Him ev -- er -- more.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Look a -- way to Je -- sus,
  Sol -- dier in the fight;
  When the bat -- tle thick -- ens,
  Keep thine ar -- mour bright;
  Though thy foes be ma -- ny,
  Though thy strength be small,
  Look a -- way to Je -- sus;
  He will con -- quer all.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Look a -- way to Je -- sus,
  When the skies are fair:
  Calm seas have their dan -- gers;
  Mar -- in -- er, be -- ware!
  Earth -- ly joys are fleet -- ing,
  Go -- ing as they came;
  Look a -- way to Je -- sus;
  Ev -- er -- more the same.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Look a -- way to Je -- sus,
  'Mid the toil and heat;
  Soon will come the rest -- ing
  At the Mas -- ter's feet;
  For the guests are bid -- den,
  And the feast is spreadl
  Look a -- way to Je -- sus,
  In His foot -- steps tread.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  When, a -- mid the mu -- sic
  Of the end -- less feast,
  Saints will sing His prai -- ses,
  Thine shall not be least;
  Then, a -- mid the glo -- ries
  Of the crys -- tal sea.
  Look a -- way to Je -- sus,
  Through e -- ter -- ni -- ty.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Look " a "way " "to " Je "sus, "
  "\nSoul " "by " "woe " op "pressed! "
  "\n'Twas " "for " "thee " "He " suf "fered, "
  "\nCome " "to " "Him " "and " "rest. "
  "\nAll " "thy " "griefs " "He " car "ried, "
  "\nAll " "thy " "sins " "He " "bore; "
  "\nLook " a "way " "to " Je "sus; "
  "\nTrust " "Him " ev er "more. "

  \set stanza = "2."
  "\nLook " a "way " "to " Je "sus, "
  "\nSol" "dier " "in " "the " "fight; "
  "\nWhen " "the " bat "tle " thick "ens, "
  "\nKeep " "thine " ar "mour " "bright; "
  "\nThough " "thy " "foes " "be " ma "ny, "
  "\nThough " "thy " "strength " "be " "small, "
  "\nLook " a "way " "to " Je "sus; "
  "\nHe " "will " con "quer " "all. "

  \set stanza = "3."
  "\nLook " a "way " "to " Je "sus, "
  "\nWhen " "the " "skies " "are " "fair: "
  "\nCalm " "seas " "have " "their " dan "gers; "
  "\nMar" in "er, " be "ware! "
  "\nEarth" "ly " "joys " "are " fleet "ing, "
  "\nGo" "ing " "as " "they " "came; "
  "\nLook " a "way " "to " Je "sus; "
  "\nEv" er "more " "the " "same. "

  \set stanza = "4."
  "\nLook " a "way " "to " Je "sus, "
  "\n'Mid " "the " "toil " "and " "heat; "
  "\nSoon " "will " "come " "the " rest "ing "
  "\nAt " "the " Mas "ter's " "feet; "
  "\nFor " "the " "guests " "are " bid "den, "
  "\nAnd " "the " "feast " "is " "spreadl "
  "\nLook " a "way " "to " Je "sus, "
  "\nIn " "His " foot "steps " "tread. "

  \set stanza = "5."
  "\nWhen, " a "mid " "the " mu "sic "
  "\nOf " "the " end "less " "feast, "
  "\nSaints " "will " "sing " "His " prai "ses, "
  "\nThine " "shall " "not " "be " "least; "
  "\nThen, " a "mid " "the " glo "ries "
  "\nOf " "the " crys "tal " "sea. "
  "\nLook " a "way " "to " Je "sus, "
  "\nThrough " e ter ni "ty. "
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
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
                                              \wordsFive  \chorus
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
                                              \wordsFive  \chorus
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
