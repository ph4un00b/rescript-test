open Webapi

Js.Console.log("Hello, ☠️")

let btn = Dom.document
  ->Dom.Document.asHtmlDocument
  ->Belt.Option.flatMap(Dom.HtmlDocument.body)
  ->Belt.Option.flatMap(body => body
                                    ->Dom.Element.querySelector("#btn"))
  ->Belt.Option.map(btn => btn
                            ->Dom.Element.addClickEventListener(_ => Js.log("clicked")))