\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Abide with Me!"
  subtitle    = "Sankey No. 297"
  subsubtitle = "Sankey 880 No. 731"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Dr. W. H. Monk."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "H. F. Lyte."
  meter       = \markup\smallCaps "10s."
  piece       = \markup\smallCaps "Eventide."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*5
  \mark \markup { \box "B" } s1*5
  \mark \markup { \box "C" } s1*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'2 4 f
  ees2 bes'
  c4 bes bes aes
  g1
  g2 aes4 bes
  c2 bes % B
  aes4 f g a
  bes1
  g2 4 f
  ees2 bes'
  bes4 aes aes g % C
  f1
  f2 g4 aes
  g4 f ees aes
  g2 f
  ees1
}

alto = \relative {
  \autoBeamOff
  ees'2 d4 4
  ees2 2
  ees4 d ees f
  ees1
  ees2 4 4
  ees2 2 % B
  ees4 f ees ees
  d1
  ees2 d4 d
  ees2 2
  ees4 4 e e % C
  f1
  d2 ees4 d
  ees4 d ees f
  ees2 d
  ees1
}

tenor = \relative {
  \autoBeamOff
  bes2 4 aes
  g2 ees
  ees4 bes'4 4 4
  bes1
  bes2 aes4 g
  aes2 g % B
  c4 bes bes ees,
  f1
  g4(aes) bes aes
  g2 ees'4(d)
  c4 4 4 bes % C
  aes1
  bes2 4 4
  bes4 aes g c
  bes2. aes4
  g1
}

bass = \relative {
  \autoBeamOff
  ees2 bes4 4
  c2 g
  aes4 bes c d
  ees1
  ees4(d) c bes
  aes2 ees' % B
  f4 d ees c
  bes1
  ees2 bes4 4
  c2 g
  aes4. bes8 c4 4 % C
  f1
  aes2 g4 f
  ees4 bes c aes
  bes2 2
  ees1
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 6

wordsOne = \lyricmode {
  \set stanza = "1."
  A -- bide with me: fast falls the e -- ven -- tide;
  The dark -- ness deep -- ens;
  Lord, with me a -- bide:
  When o -- ther help -- ers fail and com -- forts flee,
  Help of the help -- less, oh, a -- bide with me!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Swift to its close ebbs out life's lit -- tle day;
  Earth's joys grow dim, its glo -- ries pass a -- way;
  Change and de -- cay in all a -- round I see;
  O Thou, who chan -- gest not, a -- bide with me!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Come not in ter -- rors, as the King of kings;
  But king and good, with heal -- ing in Thy wings;
  Tears for all woes, a heart for ev -- 'ry plea;
  Come, Friend of sin -- ners, thus a -- bide with me!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  I need Thy pre -- sence ev -- ery pass -- ing hour;
  What but Thy grace can foil the temp -- ter's power?
  Who like Thy -- self my guide and stay can be?
  Through cloud and sun -- shine, oh, a -- bide with me!
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  I fear no foe, with Thee at hand to bless:
  Ills have no weight, and tears no bit -- ter -- ness:
  Where is death's sting! where, grave, thy vic -- to -- ry!
  I tri -- umph still, if Thou a -- bide with me!
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Be Thou Thy -- self be -- fore my clo -- sing eyes;
  Shine through the gloom, and point me to the skies;
  Heaven's morn -- ing breaks, and earth's vain sha -- dows flee;
  In life, in death, O Lord, a -- bide with me!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "A" "bide " "with " "me: " "fast " "falls " "the " e ven "tide; "
  "\nThe " dark "ness " deep "ens; "
  "\nLord, " "with " "me " a "bide: "
  "\nWhen " o "ther " help "ers " "fail " "and " com "forts " "flee, "
  "\nHelp " "of " "the " help "less, " "oh, " a "bide " "with " "me! "

  \set stanza = "2."
  "\nSwift " "to " "its " "close " "ebbs " "out " "life's " lit "tle " "day; "
  "\nEarth's " "joys " "grow " "dim, " "its " glo "ries " "pass " a "way; "
  "\nChange " "and " de "cay " "in " "all " a "round " "I " "see; "
  "\nO " "Thou, " "who " chan "gest " "not, " a "bide " "with " "me! "

  \set stanza = "3."
  "\nCome " "not " "in " ter "rors, " "as " "the " "King " "of " "kings; "
  "\nBut " "king " "and " "good, " "with " heal "ing " "in " "Thy " "wings; "
  "\nTears " "for " "all " "woes, " "a " "heart " "for " ev "'ry " "plea; "
  "\nCome, " "Friend " "of " sin "ners, " "thus " a "bide " "with " "me! "

  \set stanza = "4."
  "\nI " "need " "Thy " pre "sence " ev "ery " pass "ing " "hour; "
  "\nWhat " "but " "Thy " "grace " "can " "foil " "the " temp "ter's " "power? "
  "\nWho " "like " Thy "self " "my " "guide " "and " "stay " "can " "be? "
  "\nThrough " "cloud " "and " sun "shine, " "oh, " a "bide " "with " "me! "

  \set stanza = "5."
  "\nI " "fear " "no " "foe, " "with " "Thee " "at " "hand " "to " "bless: "
  "\nIlls " "have " "no " "weight, " "and " "tears " "no " bit ter "ness: "
  "\nWhere " "is " "death's " "sting! " "where, " "grave, " "thy " vic to "ry! "
  "\nI " tri "umph " "still, " "if " "Thou " a "bide " "with " "me! "

  \set stanza = "6."
  "\nBe " "Thou " Thy "self " be "fore " "my " clo "sing " "eyes; "
  "\nShine " "through " "the " "gloom, " "and " "point " "me " "to " "the " "skies; "
  "\nHeaven's " morn "ing " "breaks, " "and " "earth's " "vain " sha "dows " "flee; "
  "\nIn " "life, " "in " "death, " "O " "Lord, " a "bide " "with " "me! "
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
            \new Lyrics \lyricsto "aligner"   \wordsSix
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
                                              \wordsSix   \chorus
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
                                              \wordsSix   \chorus
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
