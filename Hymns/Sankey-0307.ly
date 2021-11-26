\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "God is Here, and That to Bless us."
  subtitle    = "Sankey No. 307"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Jno. R. Sweney"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "James L. Black."
  meter       = \markup\smallCaps "8.7."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*3 s2
  \mark \markup { \box "B" } s4 s2.*3 s2
  \mark \markup { \box "C" } s4 s2.*3 s2
  \mark \markup { \box "D" } s4 s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'8 8
  f4. ees8 8 aes
  aes4 g g8 aes
  bes4. 8 aes bes
  c2 \bar "|" \break ees,8 8
  f4. ees8 8 aes % B
  aes4 g bes8 8
  bes4. 8 aes f
  ees2 \bar "|" \break ees8^\markup\smallCaps Chorus. 8
  des'4.  bes8 aes bes % C
  c4 aes c8 des
  ees4. aes,8 g aes
  bes2 \bar "|" \break  c8 bes
  aes4. ees8 aes g % D
  g4 f bes8 c
  des4. bes8 aes g
  aes2
}

alto = \relative {
  \autoBeamOff
  c'8 8
  des4. c8 8 ees
  ees4 4 8 8
  ees4. 8 8 8
  ees2 c8 8
  des4. c8 8 ees % B
  ees4 4 8 8
  d4. 8 8 8
  ees2 \once\partCombineApart r4
  g8 8 8 ees ees ees % C
  ees4 c \once\partCombineApart r
  ees8 8 8 8 8 8
  g2 ees8 des
  c4. 8 ees ees % D
  ees4 d d8 ees
  f4. 8 ees ees
  ees2
}

tenor = \relative {
  \autoBeamOff
  aes8 8
  aes4. 8 8 c
  c4 bes bes8 c
  des4. g,8 bes aes
  aes2 8 8
  aes4. 8 8 c % B
  c4 bes g8 8
  f4. 8 8 aes
  g2 r4
  bes8 8 8 g f g % C
  aes4 ees r
  c'8 8 8 ees ees c
  ees2 r4
  ees,8 8 8 aes aes aes % D
  aes4 4 r
  bes8 8 8 8 c des
  c2
}

bass = \relative {
  \autoBeamOff
  aes,8 8
  aes4. 8 8 8
  ees'4 4 8 8
  ees4. des8 c bes
  aes2 8 8
  aes4. 8 8 8 % B
  ees'4 4 8 8
  bes4. 8 8 8
  ees2 r4
  ees8 8 8 8 8 8 % C
  aes,4 4 r
  aes'8 8 8 c bes aes
  ees2 r4
  aes,8 8 8 8 c c % D
  des4 4 r
  bes8 8 8 des ees ees
  aes,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Let it come, O Lord, we pray Thee,
  Let the show'r __ of bless -- ing fall;
  We are wait -- ing, we are wait -- ing;
  Oh, re -- vive the hearts of all.
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  Let it come, _ _ _ _ _
  Let the show'r __ "" _ _ _

  We are wait -- ing, _ _ _ _
  Oh, re -- vive _ _ _ _
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  God is here, and that to bless us
  With the Spi -- rit's quick -- 'ning power;
  See the cloud, al -- rea -- dy bend -- ing,
  Waits to drop the grat -- ful shower.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  God is here! we feel His pres -- ence
  In this con -- se -- cra -- ted plaec;
  But we need the soul- -- re -- fresh -- ing
  Of His free un -- bound -- ed grace.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  God is here! oh then, be -- liev -- ing,
  Bring to Him our one de -- sire,
  That His loev may now be kin -- dled,
  Till its flame each heart in -- spire.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Sa -- viour grant the prayer we off -- er,
  While in sim -- ple faith we bow;
  From the win -- dows of Thy mer -- cy
  Pour us out a bless -- ing now.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "God " "is " "here, " "and " "that " "to " "bless " "us "
  "\nWith " "the " Spi "rit's " quick "'ning " "power; "
  "\nSee " "the " "cloud, " al rea "dy " bend "ing, "
  "\nWaits " "to " "drop " "the " grat "ful " "shower. "
  "\nLet " "it " "come, " "O " "Lord, " "we " "pray " "Thee, "
  "\nLet " "the " "show'r "  "of " bless "ing " "fall; "
  "\nWe " "are " wait "ing, " "we " "are " wait "ing; "
  "\nOh, " re "vive " "the " "hearts " "of " "all. "

  \set stanza = "2."
  "\nGod " "is " "here! " "we " "feel " "His " pres "ence "
  "\nIn " "this " con se cra "ted " "plaec; "
  "\nBut " "we " "need " "the " soul- re fresh "ing "
  "\nOf " "His " "free " un bound "ed " "grace. "
  "\nLet " "it " "come, " "O " "Lord, " "we " "pray " "Thee, "
  "\nLet " "the " "show'r "  "of " bless "ing " "fall; "
  "\nWe " "are " wait "ing, " "we " "are " wait "ing; "
  "\nOh, " re "vive " "the " "hearts " "of " "all. "

  \set stanza = "3."
  "\nGod " "is " "here! " "oh " "then, " be liev "ing, "
  "\nBring " "to " "Him " "our " "one " de "sire, "
  "\nThat " "His " "loev " "may " "now " "be " kin "dled, "
  "\nTill " "its " "flame " "each " "heart " in "spire. "
  "\nLet " "it " "come, " "O " "Lord, " "we " "pray " "Thee, "
  "\nLet " "the " "show'r "  "of " bless "ing " "fall; "
  "\nWe " "are " wait "ing, " "we " "are " wait "ing; "
  "\nOh, " re "vive " "the " "hearts " "of " "all. "

  \set stanza = "4."
  "\nSa" "viour " "grant " "the " "prayer " "we " off "er, "
  "\nWhile " "in " sim "ple " "faith " "we " "bow; "
  "\nFrom " "the " win "dows " "of " "Thy " mer "cy "
  "\nPour " "us " "out " "a " bless "ing " "now. "
  "\nLet " "it " "come, " "O " "Lord, " "we " "pray " "Thee, "
  "\nLet " "the " "show'r "  "of " bless "ing " "fall; "
  "\nWe " "are " wait "ing, " "we " "are " wait "ing; "
  "\nOh, " re "vive " "the " "hearts " "of " "all. "
}

\book {
  \bookOutputSuffix "midi-sop"
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
  \bookOutputSuffix "midi-alto"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics \wordsMidi
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
  \bookOutputSuffix "midi-men"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
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
            \addlyrics \wordsMidi
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
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
            \new NullVoice = alignerT \tenor
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
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
    page-breaking = #ly:one-page-breaking
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
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT {\repeat unfold \verses \tenor}
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT {\repeat unfold\verses \chorusMen}
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

