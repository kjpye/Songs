\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Lo! He Comes."
  subtitle    = "Sankey No. 161"
  subsubtitle = "Sankey 880 No. 89"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "M. Madan."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. Cennick & C. Wesley."
  meter       = \markup\smallCaps "8.7.4"
  piece       = \markup\smallCaps "Helmsley."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key bes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*6
  \mark \markup { \box "B" } s1*2
  \mark \markup { \box "A" } s1*6
  \mark \markup { \box "B" } s1*6
  \mark \markup { \box "C" } s1*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \repeat unfold 2 {
    bes'2 d4(f)\autoBeamOff
    bes,4(a) g(f)
    g4.(a8 bes4) a8[g]
    f4.(ees8) d2
    f2. 4
    bes2. c4
    d4(f) ees(d) % B
    d2(c4) r
  }
  c4.(d8) c4(d)
  ees2 d
  bes4.(c8) bes4(ees)
  d4(c) bes2
  d4.(ees8) d4(f) % C
  ees4(d) c2
  bes2 4(c8[d])
  f,2 ees'
  d2 c
  bes1
}

alto = \relative {
  \autoBeamOff
  \repeat unfold 2 {
    f'2 d
    d2 ees4(f)
    ees4.(f8 g4) f8[ees]
    c2 bes
    c2. f4
    f2. 4
    f2 2 % B
    f2~4 r
  }
  f2 2
  f2 2
  g2 2
  f4(ees) d2
  f2 2
  f2 2
  f2 d
  c2 ees
  f2 f4(ees)
  d1
}

tenor = \relative {
  \autoBeamOff
  \repeat unfold 2 {
    d'2 bes
    g4(a) bes2
    bes2 2
    c2 f,
    bes2. 4
    a2. bes4
    bes4(d) c(bes) % B
    bes2(a4) r
  }
  a4.(bes8) a4(bes)
  c2 d
  d2 ees4(bes)
  bes4(a) bes2
  bes4.(c8) bes4(d) % C
  c4(bes) a2
  bes2 2
  c2 bes
  bes2 a
  bes1
}

bass = \relative {
  \autoBeamOff
  \repeat unfold 2 {
    bes,2 bes4(d)
    g4(f) ees(d)
    ees2 g,
    a2 bes
    f'2. ees4
    d2. f4
    bes,2 a4(bes) % B
    f'2~4 r
  }
  f2 2
  a2 bes
  g2 ees
  f2 bes,
  bes2 2 % C
  a4(bes) f'2
  d2 bes
  a2 g'
  f2 2
  bes,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Lo! He comes, with clouds __ de -- scend -- ing,
  Once for fa -- voured sin -- ners slain;
  Thou -- sand thou -- sand saints __ at -- tend -- ing,
  Swell the tri -- umph of His train:
  Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah!
  Je -- sus comes, and comes to reign.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Ev -- ery eye shall now be -- hold Him,
  Robed in dread -- ful ma -- jes -- ty;
  Those who set at naught and sold Him,
  Pierced and nailed Him to the tree,
  Deep -- ly wail -- ing,
  Deep -- ly wail -- ing,
  Deep -- ly wail -- ing,
 Shall the true Mes -- si -- ah see.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  When the sol -- emn trump has sound -- ed,
  Heaven and earth shall flee a -- way;
  All who hate Him must, con -- found -- ed,
  Hear the sum -- mons of that day—
  Come to Judg -- ment,
  Come to Judg -- ment,
  Come to Judg -- ment,
  Come to Judg -- ment, come a -- way!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Now re -- demp -- tion, long ex -- pect -- ed,
  See in sol -- emn pomp ap -- pear!
  All His saints, by men re -- ject -- ed,
  Now shall meet Him in the air:
  Hal -- lu -- lu -- jah!
  Hal -- lu -- lu -- jah!
  Hal -- lu -- lu -- jah!
  See the day of God ap -- pear!
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Yea, A -- men! let all a -- dore Thee,
  High on Thine e -- ter -- nal throne;
  Sa -- viour, take the power and glo -- ry,
  Claim the king -- dom for Thine own!
  O, come quick -- ly!
  O, come quick -- ly!
  O, come quick -- ly!
  Hel -- le -- lu -- jah! come, Lord, come!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Lo! " "He " "comes, " "with " "clouds "  de scend "ing, "
  "\nOnce " "for " fa "voured " sin "ners " "slain; "
  "\nThou" "sand " thou "sand " "saints "  at tend "ing, "
  "\nSwell " "the " tri "umph " "of " "His " "train: "
  "\nHal" le lu "jah, "
  "\nHal" le lu "jah, "
  "\nHal" le lu "jah! "
  "\nJe" "sus " "comes, " "and " "comes " "to " "reign. "

  \set stanza = "2."
  "\nEv" "ery " "eye " "shall " "now " be "hold " "Him, "
  "\nRobed " "in " dread "ful " ma jes "ty; "
  "\nThose " "who " "set " "at " "naught " "and " "sold " "Him, "
  "\nPierced " "and " "nailed " "Him " "to " "the " "tree, "
  "\nDeep" "ly " wail "ing, "
  "\nDeep" "ly " wail "ing, "
  "\nDeep" "ly " wail "ing, "
 "\nShall " "the " "true " Mes si "ah " "see. "

  \set stanza = "3."
  "\nWhen " "the " sol "emn " "trump " "has " sound "ed, "
  "\nHeaven " "and " "earth " "shall " "flee " a "way; "
  "\nAll " "who " "hate " "Him " "must, " con found "ed, "
  "\nHear " "the " sum "mons " "of " "that " "day— "
  "\nCome " "to " Judg "ment, "
  "\nCome " "to " Judg "ment, "
  "\nCome " "to " Judg "ment, "
  "\nCome " "to " Judg "ment, " "come " a "way! "

  \set stanza = "4."
  "\nNow " re demp "tion, " "long " ex pect "ed, "
  "\nSee " "in " sol "emn " "pomp " ap "pear! "
  "\nAll " "His " "saints, " "by " "men " re ject "ed, "
  "\nNow " "shall " "meet " "Him " "in " "the " "air: "
  "\nHal" lu lu "jah! "
  "\nHal" lu lu "jah! "
  "\nHal" lu lu "jah! "
  "\nSee " "the " "day " "of " "God " ap "pear! "

  \set stanza = "5."
  "\nYea, " A "men! " "let " "all " a "dore " "Thee, "
  "\nHigh " "on " "Thine " e ter "nal " "throne; "
  "\nSa" "viour, " "take " "the " "power " "and " glo "ry, "
  "\nClaim " "the " king "dom " "for " "Thine " "own! "
  "\nO, " "come " quick "ly! "
  "\nO, " "come " quick "ly! "
  "\nO, " "come " quick "ly! "
  "\nHel" le lu "jah! " "come, " "Lord, " "come! "
}

\book {
  \bookOutputSuffix "repeat"
  \score {
%    \articulate
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
%    \articulate
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
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
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass }
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
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
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass }
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
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
