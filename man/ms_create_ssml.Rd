% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_ssml.R
\name{ms_create_ssml}
\alias{ms_create_ssml}
\alias{ms_voice_info}
\title{Create SSML for Passing to Synthesize}
\usage{
ms_create_ssml(
  script,
  voice = NULL,
  gender = c("Female", "Male"),
  language = "en-US",
  escape = FALSE
)

ms_voice_info(voice, token = NULL, api_key = NULL, region = NULL)
}
\arguments{
\item{script}{A character vector of lines to be spoken}

\item{voice}{full voice name, usually from
\code{\link{ms_language_to_ms_name}}.  Will override
language and gender.}

\item{gender}{Sex of the Speaker}

\item{language}{Language to be spoken,
must be from \code{\link{ms_language_codes}}}

\item{escape}{Should non-standard characters be substituted?  Should not
be used if \code{script} has SSML tags}

\item{token}{An authentication token, base-64 encoded usually from
\code{\link{ms_get_tts_token}}.  If not provided, will be created from
\code{\link{ms_get_tts_token}}}

\item{api_key}{Microsoft Cognitive Services API key, if token is not
provided.}

\item{region}{Subscription region for your key.
See \url{https://docs.microsoft.com/en-us/azure/cognitive-services/speech-service/overview}}
}
\value{
A character string of the text and SSML markup
}
\description{
Create SSML for Passing to Synthesize
}
\examples{
ms_create_ssml("hey I really like things & dogs", escape = TRUE)
ms_create_ssml("hey I really like things")
ms_create_ssml('hey I <emphasis level="strong">really like</emphasis> things')
ms_create_ssml('hey I <emphasis level="strong">really like</emphasis> things',
escape = TRUE)

}
