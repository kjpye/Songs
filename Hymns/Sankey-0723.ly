\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Sometimes a Light Surprises."
  subtitle    = "Sankey No. 723"
  subsubtitle = "Sankey 880 No. 709"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Melchior Teschner."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "W. Cowper."
  meter       = \markup\smallCaps "7.6.D."
  piece       = \markup\smallCaps "St. Theodulph."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 4/4
  \partial 2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2 s1*3 s2
  \textMark \markup { \box \bold "B" } s2 s1*3 s2
  \textMark \markup { \box \bold "C" } s2 s1*3 s2
  \textMark \markup { \box \bold "D" } s2 s1*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c'2 | g'4 g a b | c2 4 e | d c c b | c2 \bar "|" \break
  c,2 | g'4 g a b | c2 4 e | d c c b | c2 \bar "|" \break
  c2 | e4 e d c | b4.(a8) g4 b | c b a a | g2 \bar "|" \break
  g2 | e4 g a g | g4.(f8) e4 g | f e d d | c2
}

alto = \relative {
  \autoBeamOff
  c'2 | 4 e c d | e2 4 g | g e g4. f8 | e2
  c2  | 4 e c d | e2 4 g | g e g4. f8 | e2
  e2 | g4 fis g a | g2 4 4 | 4 4 4 fis | g2
  d2 | e4 e e a, | e'4.(d8) cis4 c | b c c b | c2
}

tenor = \relative {
  \autoBeamOff
  g2 | 4 c a f | g2 4 c | b c d d | c2
  g2 | 4 c a f | g2 4 c | b c d d | c2
  c2 | 4 a b d | 4.(c8) b4 d | e d d4. c8 | b2
  g2 | 4 c cis e | a,2 4 e | f g g4. f8 | e2
}

bass = \relative {
  \autoBeamOff
  c2 | e4 c f d | c2 4 c' | g a g g | c,2
  c2 | e4 c f d | c2 4 c' | g a g g | c,2
  c2 | 4 4 g' fis | g2 4 4 | e8[fis] g4 d d | g,2
  b2 | c4 c a cis | d2 a4 e' | d e8[f] g4 g, | c2
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
  Some -- times a light sur -- pri -- ses
  The Chris -- tian while he sings,
  It is the Lord who ri -- ses
  With heal -- ing in his Wings,
  When com -- forts are de -- cli -- ning,
  He grants the soul a -- gain
  A sea -- son of clear shin -- ing,
  To cheer it af -- ter rain.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  In ho -- ly con -- tem -- pla -- tion,
  We sweet -- ly then pur -- sue
  The theme of God's sal -- va -- tion,
  And find it ev -- er new;
  Set free from pres -- ent sor -- row,
  We cheer -- ful -- ly can say—
  E'en let th'un -- known to -- mor -- row
  Bring with it what it may.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  It can bring with it no -- thing
  But He will bear us through;
  Who gives the lil -- lies clo -- thing,
  Will closthe His peo -- ple too:
  Be -- neath the spread -- ing hea -- vens
  No crea -- ture but is fed;
  And He, who feeds the ra -- vens,
  Will give His chil -- dren bread.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Though vine nor fig -- tree nei -- ther
  Their wont -- ed fruit should bear;
  Tho' all the fields should wi -- ther,
  Nor flocks nor herds be there:
  Yet God the same a -- bid -- ing,
  His praise shall tune my voice;
  For, while in Him con -- fi -- ding,
  I can -- not but re -- joice.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Some" "times " "a " "light " sur pri "ses "
  "\nThe " Chris "tian " "while " "he " "sings, "
  "\nIt " "is " "the " "Lord " "who " ri "ses "
  "\nWith " heal "ing " "in " "his " "Wings, "
  "\nWhen " com "forts " "are " de cli "ning, "
  "\nHe " "grants " "the " "soul " a "gain "
  "\nA " sea "son " "of " "clear " shin "ing, "
  "\nTo " "cheer " "it " af "ter " "rain.\n"

  \set stanza = "2."
  "\nIn " ho "ly " con tem pla "tion, "
  "\nWe " sweet "ly " "then " pur "sue "
  "\nThe " "theme " "of " "God's " sal va "tion, "
  "\nAnd " "find " "it " ev "er " "new; "
  "\nSet " "free " "from " pres "ent " sor "row, "
  "\nWe " cheer ful "ly " "can " "say— "
  "\nE'en " "let " th'un "known " to mor "row "
  "\nBring " "with " "it " "what " "it " "may.\n"

  \set stanza = "3."
  "\nIt " "can " "bring " "with " "it " no "thing "
  "\nBut " "He " "will " "bear " "us " "through; "
  "\nWho " "gives " "the " lil "lies " clo "thing, "
  "\nWill " "closthe " "His " peo "ple " "too: "
  "\nBe" "neath " "the " spread "ing " hea "vens "
  "\nNo " crea "ture " "but " "is " "fed; "
  "\nAnd " "He, " "who " "feeds " "the " ra "vens, "
  "\nWill " "give " "His " chil "dren " "bread.\n"

  \set stanza = "4."
  "\nThough " "vine " "nor " fig "tree " nei "ther "
  "\nTheir " wont "ed " "fruit " "should " "bear; "
  "\nTho' " "all " "the " "fields " "should " wi "ther, "
  "\nNor " "flocks " "nor " "herds " "be " "there: "
  "\nYet " "God " "the " "same " a bid "ing, "
  "\nHis " "praise " "shall " "tune " "my " "voice; "
  "\nFor, " "while " "in " "Him " con fi "ding, "
  "\nI " can "not " "but " re "joice. "
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
