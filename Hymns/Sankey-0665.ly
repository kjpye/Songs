\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Half was never Told."
  subtitle    = "Sankey No. 665"
  subsubtitle = "Sankey 880 No. 194"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "P. P. Bliss."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*3 s2.
  \textMark \markup { \box \bold "B" } s4 s1*3 s2.
  \textMark \markup { \box \bold "C" } s4 s1*3 s2.
  \textMark \markup { \box \bold "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4 | 4. g8 a bes c8. d16 | c2(a4) f | a4. bes8 a4 g | f2. \bar "|" \break
  f4 | \slurDashed e4.(f8) \slurSolid g a bes8. 16 | a2(c4) 4 | 4. b8 a4 b | c2.
  \section \sectionLabel \markup\smallCaps Chorus \break
  c4 | 2~8 f, a16 g8. | f2. 4 | g2~8 bes a16 g8. | a2. \bar "|" \break
  c4 | f8. c16 2 ees4 | d8. c16 bes2 d4 | c2~8 f, a16 g8. | f2.\fermata
}

alto = \relative {
  \autoBeamOff
  f'4 | 4. 8 8 g a8. bes16 | a2(f4) 4 | 4. 8 4 e | f2.
  c4 | \slurDashed 4.(d8) \slurSolid e f g8. 16 | f2. dis4 | e4. 8 4 gis4 | a2. \section
  e4 | f4 4 4 e | f2. 4 | e2~8 g f16 e8. | f2.
  e4 | f8. 16 2 4 | 8. ees16 d2 f4 | f f f e | f4 d c\fermata
}

tenor = \relative {
  \autoBeamOff
  a4 | 4. bes8 c c f8. 16 | f2(c4) a | 4. d8 c4 bes | a2.
  a4 | \slurDashed g4.(c8) \slurSolid bes8 a g8. c16 | c2(a4) a | 4. b8 c4 d | c2. \section
  bes4 | a a a bes | a bes c a | c bes8[a] g4 c | c c a
  bes4 | c a a c | bes f f bes | a a a bes | a bes a\fermata
}

bass = \relative {
  \autoBeamOff
  f4 | 4. 8 8 8 8. 16 | 2. 4 | d4. bes8 c4 4 | f2.
  f4 | \slurDashed c4.(8) \slurSolid 8 8 8. 16 | f2. 4 | e4. 8 4 4 | a2. \section
  g4 | f f f c | f g a f | c c c c | f f f
  g4 | a f f a, | bes4 4 4 4 | c c c c | f f f\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsChorusSop = \lyricmode {
  \small
  \repeat unfold 27 _
  The half __ was nev -- er told,
  \repeat unfold 14 _
  The half __ was nev -- er told.
}

chorusMen = \lyricmode {
  \small
  \repeat unfold 32 _
  nev -- er told,
  The half was nev -- er, nev -- er told,
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Re -- peat the sto -- ry o'er and o'er,
  Of \markup\italic grace so full and free;
  I \nom love to \yesm hear it more and more,
  Since grace has res -- cued me.
  The half was nev -- er told, __
  The half __ was nev -- er told,
  Of \markup\italic grace Di -- vine, so won -- der -- ful,
  The half was nev -- er, nev -- er told.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Of \markup\italic peace I on -- ly know the name,
  Nor found my soul its rest,
  \nom Un -- til the \yesm sweet- voiced an -- gel came
  To soothe my wea -- ry breast.
  _ _ _ _ _ _
  _ _ _ _ _ _
  Of \markup\italic peace Di -- vine _ _ _ _
  _ _ _ _ _ _ _ _
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  My high -- est place is ly -- ing low
  At my Re -- deem -- er's feet;
  No real \markup\italic joy in life I know,
  But in His ser -- vice sweet.
  _ _ _ _ _ _
  _ _ _ _ _ _
  Of \markup\italic joy Di -- vine _ _ _ _
  _ _ _ _ _ _ _ _
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  And oh, what rap -- ture will it be,
  With all the host a -- bove,
  To \nom sing thro' \yesm all e -- ter -- ni -- ty
  The won -- ders of His \markup\italic love! _ _ _ _ _ _
  _ _ _ _ _ _
  Of \markup\italic love Di -- vine, _ _ _ _
  _ _ _ _ _ _ _ _
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "Re" "peat " "the " sto "ry " "o'er " "and " "o'er, "
  "\nOf "  "grace " "so " "full " "and " "free; "
  "\nI " \nom "love " "to " \yesm "hear " "it " "more " "and " "more, "
  "\nSince " "grace " "has " res "cued " "me. "
  "\nThe " "half " "was " nev "er " "told, " 
  "\nThe " "half "  "was " nev "er " "told, "
  "\nOf "  "grace " Di "vine, " "so " won der "ful, "
  "\nThe " "half " "was " nev "er " "told.\n"

  \set stanza = "2."
  "\nOf "  "peace " "I " on "ly " "know " "the " "name, "
  "\nNor " "found " "my " "soul " "its " "rest, "
  \nom Un -- til the \yesm sweet- voiced an -- gel came
  "\nTo " "soothe " "my " wea "ry " "breast. "
  "\nThe " "half " "was " nev "er " "told, " 
  "\nThe " "half "  "was " nev "er " "told, "
  "\nOf "  "peace " Di "vine, " "so " won der "ful, "
  "\nThe " "half " "was " nev "er " "told.\n"

  \set stanza = "3."
  "\nMy " high "est " "place " "is " ly "ing " "low "
  "\nAt " "my " Re deem "er's " "feet; "
  "\nNo " "real "  "joy " "in " "life " "I " "know, "
  "\nBut " "in " "His " ser "vice " "sweet. "
  "\nThe " "half " "was " nev "er " "told, " 
  "\nThe " "half "  "was " nev "er " "told, "
  "\nOf "  "joy " Di "vine, " "so " won der "ful, "
  "\nThe " "half " "was " nev "er " "told.\n"

  \set stanza = "4."
  "\nAnd " "oh, " "what " rap "ture " "will " "it " "be, "
  "\nWith " "all " "the " "host " a "bove, "
  "\nTo " \nom "sing " "thro' " \yesm "all " e ter ni "ty "
  "\nThe " won "ders " "of " "His "  "love! "
  "\nThe " "half " "was " nev "er " "told, " 
  "\nThe " "half "  "was " nev "er " "told, "
  "\nOf "  "love " Di "vine, " "so " won der "ful, "
  "\nThe " "half " "was " nev "er " "told. "
}
  
wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "Re" "peat " "the " sto "ry " "o'er " "and " "o'er, "
  "\nOf "  "grace " "so " "full " "and " "free; "
  "\nI " \nom "love " "to " \yesm "hear " "it " "more " "and " "more, "
  "\nSince " "grace " "has " res "cued " "me. "
  "\nThe " "half " "was " nev "er " "told, " 
  "\nThe " "half "  "was " nev "er " "told, "
  "\nOf "  "grace " Di "vine, " "so " won der "ful, "
  "\nThe " "half " "was " nev "er, " nev "er " "told.\n"

  \set stanza = "2."
  "\nOf "  "peace " "I " on "ly " "know " "the " "name, "
  "\nNor " "found " "my " "soul " "its " "rest, "
  \nom Un -- til the \yesm sweet- voiced an -- gel came
  "\nTo " "soothe " "my " wea "ry " "breast. "
  "\nThe " "half " "was " nev "er " "told, " 
  "\nThe " "half "  "was " nev "er " "told, "
  "\nOf "  "peace " Di "vine, " "so " won der "ful, "
  "\nThe " "half " "was " nev "er, " nev "er " "told.\n"

  \set stanza = "3."
  "\nMy " high "est " "place " "is " ly "ing " "low "
  "\nAt " "my " Re deem "er's " "feet; "
  "\nNo " "real "  "joy " "in " "life " "I " "know, "
  "\nBut " "in " "His " ser "vice " "sweet. "
  "\nThe " "half " "was " nev "er " "told, " 
  "\nThe " "half "  "was " nev "er " "told, "
  "\nOf "  "joy " Di "vine, " "so " won der "ful, "
  "\nThe " "half " "was " nev "er, " nev "er " "told.\n"

  \set stanza = "4."
  "\nAnd " "oh, " "what " rap "ture " "will " "it " "be, "
  "\nWith " "all " "the " "host " a "bove, "
  "\nTo " \nom "sing " "thro' " \yesm "all " e ter ni "ty "
  "\nThe " won "ders " "of " "His "  "love! "
  "\nThe " "half " "was " nev "er " "told, " 
  "\nThe " "half "  "was " nev "er " "told, "
  "\nOf "  "love " Di "vine, " "so " won der "ful, "
  "\nThe " "half " "was " nev "er, " nev "er " "told. "
}
  
wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Re" "peat " "the " sto "ry " "o'er " "and " "o'er, "
  "\nOf "  "grace " "so " "full " "and " "free; "
  "\nI " \nom "love " "to " \yesm "hear " "it " "more " "and " "more, "
  "\nSince " "grace " "has " res "cued " "me. "
  "\nThe " "half " "was " nev "er, " nev "er " "told, "
  "\nThe " "half " "was " nev "er, " nev "er " "told, "
  "\nOf "  "grace " Di "vine, " "so " won der "ful, "
  "\nThe " "half " "was " nev "er, " nev "er " "told.\n"

  \set stanza = "2."
  "\nOf "  "peace " "I " on "ly " "know " "the " "name, "
  "\nNor " "found " "my " "soul " "its " "rest, "
  \nom Un -- til the \yesm sweet- voiced an -- gel came
  "\nTo " "soothe " "my " wea "ry " "breast. "
  "\nThe " "half " "was " nev "er, " nev "er " "told, "
  "\nThe " "half " "was " nev "er, " nev "er " "told, "
  "\nOf "  "peace " Di "vine, " "so " won der "ful, "
  "\nThe " "half " "was " nev "er, " nev "er " "told.\n"

  \set stanza = "3."
  "\nMy " high "est " "place " "is " ly "ing " "low "
  "\nAt " "my " Re deem "er's " "feet; "
  "\nNo " "real "  "joy " "in " "life " "I " "know, "
  "\nBut " "in " "His " ser "vice " "sweet. "
  "\nThe " "half " "was " nev "er, " nev "er " "told, "
  "\nThe " "half " "was " nev "er, " nev "er " "told, "
  "\nOf "  "joy " Di "vine, " "so " won der "ful, "
  "\nThe " "half " "was " nev "er, " nev "er " "told.\n"

  \set stanza = "4."
  "\nAnd " "oh, " "what " rap "ture " "will " "it " "be, "
  "\nWith " "all " "the " "host " a "bove, "
  "\nTo " \nom "sing " "thro' " \yesm "all " e ter ni "ty "
  "\nThe " won "ders " "of " "His "  "love! "
  "\nThe " "half " "was " nev "er, " nev "er " "told, "
  "\nThe " "half " "was " nev "er, " nev "er " "told, "
  "\nOf "  "love " Di "vine, " "so " won der "ful, "
  "\nThe " "half " "was " nev "er, " nev "er " "told. "
}
  
wordsSingle = \lyricmode {
  \set stanza = "1."
  Re -- peat the sto -- ry o'er and o'er,
  Of \markup\italic grace so full and free;
  I \nom love to \yesm hear it more and more,
  Since grace has res -- cued me.
  The half was nev -- er told, __
  The half __ was nev -- er told,
  Of \markup\italic grace Di -- vine, so won -- der -- ful,
  The half was nev -- er, nev -- er told.

  \set stanza = "2."
  Of \markup\italic peace I on -- ly know the name,
  Nor found my soul its rest,
  \nom Un -- til the \yesm sweet- voiced an -- gel came
  To soothe my wea -- ry breast.
  The half was nev -- er told, __
  The half __ was nev -- er told,
  Of \markup\italic peace Di -- vine, so won -- der -- ful,
  The half was nev -- er, nev -- er told.

  \set stanza = "3."
  My high -- est place is ly -- ing low
  At my Re -- deem -- er's feet;
  No real \markup\italic joy in life I know,
  But in His ser -- vice sweet.
  The half was nev -- er told, __
  The half __ was nev -- er told,
  Of \markup\italic joy Di -- vine, so won -- der -- ful,
  The half was nev -- er, nev -- er told.

  \set stanza = "4."
  And oh, what rap -- ture will it be,
  With all the host a -- bove,
  To \nom sing thro' \yesm all e -- ter -- ni -- ty
  The won -- ders of His \markup\italic love!
  The half was nev -- er told, __
  The half __ was nev -- er told,
  Of \markup\italic love Di -- vine, so won -- der -- ful,
  The half was nev -- er, nev -- er told.
}
  
\book {
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidiSop
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics \wordsMidiAlto
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
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
            \new NullVoice = "alignerS" \soprano
            \new NullVoice = "alignerA" \alto
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "alignerA" { \wordsOne \chorus }
            \new Lyrics \lyricsto "alignerA"   \wordsTwo
            \new Lyrics \lyricsto "alignerA"   \wordsThree
            \new Lyrics \lyricsto "alignerA"   \wordsFour
            \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \wordsChorusSop
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
          >>
          \new Lyrics \with {alignBelowContext = men} \lyricsto alignerT \chorusMen
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
            \new NullVoice = "alignerS" { \repeat unfold \verses \soprano }
            \new NullVoice = "alignerA" { \repeat unfold \verses \alto }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "alignerA" \wordsSingle
            \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS { \repeat unfold \verses \wordsChorusSop }
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
