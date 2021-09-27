\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Church's One Foundation."
  subtitle    = "Sankey No. 228"
  subsubtitle = "Sankey 880 No. 708"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup{ \smallCaps "Dr. S. S. Wesley." "by per."}
  arranger    = \markup{ \italic From "\"The European Psalmist.\""}
%  opus        = "opus"

  poet        = \markup {\smallCaps "S. J. Stone" by per.}
  meter       = \markup\smallCaps "7.6.d"
  piece       = \markup\smallCaps "Aurelia."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key ees \major
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
  g'4
  g4 4 aes g
  g2 f4 ees
  ees4 c' bes aes
  g2. \bar "|" \break aes4
  bes4 ees ees d % B
  d2 c4 bes
  aes4 bes g ees
  f2. \bar "|" \break f4
  g4 aes bes c % C
  c2 bes4 ees
  ees4. d8 c4 g
  aes2. \bar "|" \break f4
  g4 4 aes g % D
  g2 f4 ees
  ees4 f ees d
  ees2.
}

alto = \relative {
  \autoBeamOff
  ees'4
  ees4 4 4 4
  ees2 d4 ees
  c4 ees ees d
  ees2. d4
  ees4 4 4 f % B
  f2 ees4 g
  g4 f ees ees
  d2. 4
  ees4 d ees ees % C
  ees2 4 g
  g4. 8 4 4
  f2. 4
  ees4 4 4 4
  c2 4 4
  c4 4 bes bes
  bes2.
}

tenor = \relative {
  \autoBeamOff
  bes4
  bes4 4 c bes
  bes2 4 4
  f4 4 g bes
  bes2. 4
  bes4 4 b b % B
  b2 c4 d
  ees4 f bes, b
  bes2. 4
  bes4 4 4 aes
  aes2 bes4 c
  c4. b8 c4 4
  c2. bes4
  bes4 4 c bes
  bes2 aes4 4
  aes4 4 f aes
  g2.
}

bass = \relative {
  \autoBeamOff
  ees4
  ees4 4 4 4
  bes2 aes4 g
  aes4 4 bes bes
  ees2. f4
  g4 4 4 g, % B
  aes2 4 bes
  c4 d ees c
  bes2. 4
  ees4 f g aes % C
  aes2 g4 c,
  g'4. f8 ees4 e
  f2. d4
  ees4 4 4 4 % D
  aes,2 4 4
  f4 4 bes bes
  ees2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  The chur -- ch's one foun -- da -- tion
  Is Je -- sus Christ her Lord;
  She is His new cre -- a -- tion
  By wa -- ter and the Word:
  From Heaven He came and sought her
  To be His ho -- ly bride;
  With His own blood He bought her,
  And for her life He died.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  E -- lect from ev -- 'ry na -- tion,
  Yet one o'er all the earth;
  Her char -- ter of sal -- va -- tion—
  Obe Lord, one faith, one birth;
  One ho -- ly Name she bless -- es,
  Par -- takes on ho -- ly food;
  And to one hope she press -- es,
  With ev -- 'ry grace en -- dued.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Though with a scorn -- ful won -- der
  Men see her sore op -- prest,
  By schi -- sms rent a -- sun -- der,
  By he -- re -- sies dis -- trest;
  Yet saints there watch are keep -- ing,
  Their cry goes up, "\"How" "long?\""
  And soon the night of weep -- ing
  Shall be the morn of song.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  'Mid toil and tri -- gu -- la -- tion,
  And tu -- mults of her war,
  She waits the con -- sum -- ma -- tion
  Of peace for ev -- er -- more;
  Till with the vis -- ion glo -- rious
  Her long -- ing eyes are blest,
  And the great church vic -- tor -- ious,
  Shall be the church at rest.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Yet she on earth hath u -- nion
  With God the Thee in One,
  And mys -- tic sweet com -- mun -- ion
  With those whose rest is one:
  Oh, hap -- py ones and ho -- ly!
  Lord, give us grace that we,
  Like them, the meek and low -- ly,
  On high may dwell with Thee!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "The " chur "ch's " "one " foun da "tion "
  "\nIs " Je "sus " "Christ " "her " "Lord; "
  "\nShe " "is " "His " "new " cre a "tion "
  "\nBy " wa "ter " "and " "the " "Word: "
  "\nFrom " "Heaven " "He " "came " "and " "sought " "her "
  "\nTo " "be " "His " ho "ly " "bride; "
  "\nWith " "His " "own " "blood " "He " "bought " "her, "
  "\nAnd " "for " "her " "life " "He " "died. "

  \set stanza = "2."
  "\nE" "lect " "from " ev "'ry " na "tion, "
  "\nYet " "one " "o'er " "all " "the " "earth; "
  "\nHer " char "ter " "of " sal va "tion— "
  "\nObe " "Lord, " "one " "faith, " "one " "birth; "
  "\nOne " ho "ly " "Name " "she " bless "es, "
  "\nPar" "takes " "on " ho "ly " "food; "
  "\nAnd " "to " "one " "hope " "she " press "es, "
  "\nWith " ev "'ry " "grace " en "dued. "

  \set stanza = "3."
  "\nThough " "with " "a " scorn "ful " won "der "
  "\nMen " "see " "her " "sore " op "prest, "
  "\nBy " schi "sms " "rent " a sun "der, "
  "\nBy " he re "sies " dis "trest; "
  "\nYet " "saints " "there " "watch " "are " keep "ing, "
  "\nTheir " "cry " "goes " "up, " "\"How " "long?\" "
  "\nAnd " "soon " "the " "night " "of " weep "ing "
  "\nShall " "be " "the " "morn " "of " "song. "

  \set stanza = "4."
  "\n'Mid " "toil " "and " tri gu la "tion, "
  "\nAnd " tu "mults " "of " "her " "war, "
  "\nShe " "waits " "the " con sum ma "tion "
  "\nOf " "peace " "for " ev er "more; "
  "\nTill " "with " "the " vis "ion " glo "rious "
  "\nHer " long "ing " "eyes " "are " "blest, "
  "\nAnd " "the " "great " "church " vic tor "ious, "
  "\nShall " "be " "the " "church " "at " "rest. "

  \set stanza = "5."
  "\nYet " "she " "on " "earth " "hath " u "nion "
  "\nWith " "God " "the " "Thee " "in " "One, "
  "\nAnd " mys "tic " "sweet " com mun "ion "
  "\nWith " "those " "whose " "rest " "is " "one: "
  "\nOh, " hap "py " "ones " "and " ho "ly! "
  "\nLord, " "give " "us " "grace " "that " "we, "
  "\nLike " "them, " "the " "meek " "and " low "ly, "
  "\nOn " "high " "may " "dwell " "with " "Thee! "
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
