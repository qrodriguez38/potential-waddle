# potential-waddle

In this recruiting test, you must perform a very basic web page that allow people to say useless stuff generated from a webservice.

There is a main trunk list of tasks to perform in a given order. The following extras are available for very fast developers or guys that want to show up more. **Extras are not mandatory.**

#### I don't know how to...

Yes that's absolutely normal, don't fear to use Stack-Overflow or Google. That's part of the developer job. 

#### I will not have the time to...

Yes that's ALSO absolutely normal. This mean that you must use third part library to optimize your time. That's part of the developer job.

#### Can I start working on it before the interview ? 

The test is meant to be know before the interview occurs. For the good reason to allow people who feels the need to prepare it to do so.

We really don't care if you start working on this beforehand. All that really matter is the building process not the fact that everything runs perfectly.

We don't want you to work too much on this, after all it's just a job interview. 

**Yet, we strongly suggest that you setup your boostrap (step 2)**, it may go awfully wrong or take longer than you expect. Also take a look at the required features, as it may take longer than expected to download and configure a library.

#### Why Potential-Waddle ?

Ask github, that was proposed as a random repository name.

## Application requirements

We intend to provide a web page that allow user to put comment on a beer. The web page displays all posted comments as cards paginated accross many pages.

1. Clone this git public repository, start a new branch. From now use git as a tool for this project.
1. Bootstrap your project with something capable of serving a raw "Hello World!" **through a web-server**. Use a framework that you feel comfortable with.
1. Display some dynamic content based on the page:
   * Server UTC time, formatted using [ISO-8601](https://en.wikipedia.org/wiki/ISO_8601) format 
   * The HTTP client IP address
1. Now, allow user input of user name, beer name and comment in a form, the form must not allow any string that is empty-ish (null, empty, only spaces).  
1. Upon form POST submission, store the comment permanently. 

   You can use either a file, a database, a third part storage service. This file source should not be publicly available.

1. Main page must now display list of comments in cards respecting this html structure:
    ```html
    <div class="comments">
      <blockquote data-username="{username}" data-beer="{beername}">
        {comment}
      </blockquote>
      <blockquote data-username="{username}" data-beer="{beername}">
        {comment}
      </blockquote>
      <!-- And so on -->  
    </div>
    ```
1. Upon form submission, you must generate a store extra informations as resolved through [Punk API](https://punkapi.com/documentation/v2). We want to store punk API's `id` and `image_url`.
1. Needless to say, that you read this thoroughly before coding and prefixed all your main page variables with `quack` from the beginning.
1. Use CSS in the page in order to:
   * Display user comment within a box rounded purple corner, in a square of 300px.
   * Comment must be vertically and horizontally centered.
   * Beer name must appear at the top left of the box as a bold text.
   * User name must appear at the bottom right of the box as italic text.
   
         -------------------------------------------
         | Nelson Sauvin                           |
         |       It smells like teen spirit.       |
         |                                  Gérard |
         -------------------------------------------

   * Comments must be displayed horizontally, if there are too much items they must flow to the left:
   
     Like this if it matches 5 columns:
     
         Q Q Q Q Q
         Q Q Q Q Q
         Q
     
     Like this if it matches 3 columns:
     
         Q Q Q
         Q Q Q
         Q Q Q
         Q Q

1. Username should now be anonymized upon display, and match this vague pattern:
    ```
    Raymond             Rayxxxx
    Camille             Camxxxx
    Jean                Jeaxxxx
    Charline            Chaxxxxx
    Sébastien           Sébxxxxxx
    Guillaumette        Guixxxxxx
    Anne-Henriette      Annxxxxxx
    Alain Dupaire       Alain D.
    David Henry Jones   David J.
    ```

### Extras (pick your poison)
1. Write a minimal documentation describing:
   * The copyright
   * The author
   * The purpose of the code
   * Anything that may help succeeding developers how to operate and deploy your code
1. Field validation should not allow a string containing the letter Z
1. Write a script to add 100 random comments (eg. https://goquotes.docs.apiary.io/) for random beers (eg. https://punkapi.com/) using random identities (eg. https://randomuser.me/).
1. Adapt the welcome text "Hello World" to visitor preferred language:
   * [English](http://www.localeplanet.com/icu/en-US/index.html) (default)
   * [French](http://www.localeplanet.com/icu/fr-FR/index.html)
   * [Spanish](http://www.localeplanet.com/icu/es-ES/index.html)
   * [Ukranian](http://www.localeplanet.com/icu/uk-UA/index.html)
   * [Japanese](http://www.localeplanet.com/icu/ja-JP/index.html) 
   * [Hebrew](http://www.localeplanet.com/icu/he-IL/index.html)
1. Display a preferred localized time format next to UTC server time. Format should match the user preferred language format:
   
   For example, `Friday, June 24, 2016 1:42 AM` for `en-US` user, and `Freitag, 24. Juni 2016 01:42` for `de-DE` uer
1. Style more:
   * Use a custom font for comment text to make it looks more like a human written text.
   * Alternate colors for comment, 5 distinct colors must be used using CSS instruction.
1. Minify and uglify anything javascript or css asset.
1. As we added new rules for anonymization, we decided to unit test that. Please add unit test to validate our house rules for anonymization:
    ```
    Henriette           Henriette
    Ari                 Axx
    Hal                 Hxx
    7up                 upupupupupupup
    1up                 up
    3eyes               eyeseyeseyes
    -10                 0
    10                  10
    909012391212        909012391212
    Zoe                 Z is bad
    ```

## Expectation

This test intend to verify some capabilities:

* English language comprehension
* Bootstraping ability
* Basic HTTP comprehension (Headers, Verb)
* HTML and CSS basic usage, as well as more advanced features.
* Documented REST service usage
* Client side validation (javascript)
* Server side operations and serialization
* Unit test as a reflex
* General knowledge of internet features
* Use third part library as a reflex
* Autonomy, and proactiveness.
