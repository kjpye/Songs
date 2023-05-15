\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Thou Sweet Beloved Will of God."
  subtitle    = "Sankey No. 625"
  subsubtitle = "C. C. No. 101"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "George Hews."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Tersteegen."
  meter       = \markup\smallCaps "L. M."
  piece       = \markup\smallCaps "Holley."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*5
  \textMark \markup { \box \bold "B" } s1*5
  \textMark \markup { \box \bold "C" } s1*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'2 fis4 g | ees2 g | f4(g) a(bes) | g1 | bes2 a4 bes |
  g2 4(bes) | bes(aes) aes(g) | f1 | g2 f4 4 | ees2 f |
  g4(aes) bes(c) | f,1 | g2 bes4 4 | aes2. f4 | ees2 d | ees1 |
}

alto = \relative {
  \autoBeamOff
  ees'2 4 4 | 2 2 | d4(ees) f(d) | ees1 | 2 4 4 |
  ees2 4(g) | g(f) f(ees) | d1 | ees2 d4 4 | c2 d |
  ees4(d) ees2 | ees(d) | ees2 4 4 | 2. c4 bes2 2 | 1 |
  
}

tenor = \relative {
  \autoBeamOff
  bes2 a4 bes | g2 bes | 2 2 | 1 | g2 fis4 g |
  bes2 2 | 2 2 | 1 | 2 4 aes | g2 bes |
  bes4(aes) g(c) | bes1 | 2 des4 4 | c2. aes4 | g2 aes4(f) | g1 |
}

bass = \relative {
  \autoBeamOff
  ees2 4 4 | 2 2 | bes' bes, | ees1 | 2 4 4 |
  ees2 2 | d ees | bes1 | ees2 bes4 b | c2 bes |
  ees4(f) g(aes) | bes1 | ees,2 g4 g | aes2. aes,4 | bes2 2 | ees1 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 7

wordsOne = \lyricmode {
  \set stanza = "1."
  Thou sweet be -- lov -- ed will of God,
  My an -- chor ground, my for -- tress hill,
  My spi -- rit's si -- lent fair a -- bode,
  In thee I hide me, and am still,
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  O will, that will -- est good a -- lone,
  Lead thou the way, thou guid -- est best;
  A lit -- tle child, I fol -- low on,
  And trust -- ing, lean up -- on thy breast.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Thy beau -- ti -- dul sweet will, my God,
  Holds fast in its sub -- lime em -- brace
  My cap -- tive will, a glad -- some bird,
  Pris -- on'd in such a realm of grace.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  With -- in this place of cer -- tain good
  Love ev -- er -- more ex -- pands her wings,
  Or nest -- ling in Thy per -- fect choice,
  A -- bides con -- tent with what it brings.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Oh, light -- est bur -- den, sweet -- est yoke!
  It lifts, it bears my hap -- py soul,
  It giv -- eth wings to this poor heart;
  My free -- dom is Thy grand con -- trol.
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Up -- on God's will I lay me down,
  As child up -- on its moth --er's breasy;
  No silk -- en couch, nor soft -- est bed,
  Could ev -- er give me such deep rest.
}
  
wordsSeven = \lyricmode {
  \set stanza = "7."
  Thy won -- der -- ful grand will, my God,
  With tri -- umph ow I make it mine;
  And faith shall cry a joy -- ous Yes!
  To ev -- 'ry dear com -- mand of Thine.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Thou " "sweet " be lov "ed " "will " "of " "God, "
  "\nMy " an "chor " "ground, " "my " for "tress " "hill, "
  "\nMy " spi "rit's " si "lent " "fair " a "bode, "
  "\nIn " "thee " "I " "hide " "me, " "and " "am " "still,\n"

  \set stanza = "2."
  "\nO " "will, " "that " will "est " "good " a "lone, "
  "\nLead " "thou " "the " "way, " "thou " guid "est " "best; "
  "\nA " lit "tle " "child, " "I " fol "low " "on, "
  "\nAnd " trust "ing, " "lean " up "on " "thy " "breast.\n"

  \set stanza = "3."
  "\nThy " beau ti "dul " "sweet " "will, " "my " "God, "
  "\nHolds " "fast " "in " "its " sub "lime " em "brace "
  "\nMy " cap "tive " "will, " "a " glad "some " "bird, "
  "\nPris" "on'd " "in " "such " "a " "realm " "of " "grace.\n"

  \set stanza = "4."
  "\nWith" "in " "this " "place " "of " cer "tain " "good "
  "\nLove " ev er "more " ex "pands " "her " "wings, "
  "\nOr " nest "ling " "in " "Thy " per "fect " "choice, "
  "\nA" "bides " con "tent " "with " "what " "it " "brings.\n"

  \set stanza = "5."
  "\nOh, " light "est " bur "den, " sweet "est " "yoke! "
  "\nIt " "lifts, " "it " "bears " "my " hap "py " "soul, "
  "\nIt " giv "eth " "wings " "to " "this " "poor " "heart; "
  "\nMy " free "dom " "is " "Thy " "grand " con "trol.\n"

  \set stanza = "6."
  "\nUp" "on " "God's " "will " "I " "lay " "me " "down, "
  "\nAs " "child " up "on " "its " moth"er's " "breasy; "
  "\nNo " silk "en " "couch, " "nor " soft "est " "bed, "
  "\nCould " ev "er " "give " "me " "such " "deep " "rest.\n"

  \set stanza = "7."
  "\nThy " won der "ful " "grand " "will, " "my " "God, "
  "\nWith " tri "umph " "ow " "I " "make " "it " "mine; "
  "\nAnd " "faith " "shall " "cry " "a " joy "ous " "Yes! "
  "\nTo " ev "'ry " "dear " com "mand " "of " "Thine. "
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
            \new Lyrics \lyricsto "aligner"   \wordsSix
            \new Lyrics \lyricsto "aligner"   \wordsSeven
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
                                              \wordsSix   \chorus
                                              \wordsSeven \chorus
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
