module Models exposing (..)


type alias Model = { pages : List Page, idx: Int }

type alias Page = 
  { header: String,
    code: String, 
    lines: List String
  }

initialModel : Model
initialModel =
  { pages = 
    [

    Page "Start Using ES6/7 Today" ""
    [
      "Slides and code snippets",
      "Aurelia Demo"
    ]
  ,
  
    Page "ECMAScript" ""
    [
      "Language: JavaScript",
            "Spec/Version: ECMAScript (ES)",
            "ES6 = ES2015",
            "ES7 = ES2016",
            "ES8 = ES2017",
            "..."
    ]
  ,
  
    Page "Why JavaScript" ""
    [
      "The only language in the browser",
      "Trend: smart/fat client",
            "Cross-platform: server, mobile",
            "Douglas Crockford",
            "JavaScript: The Good Parts"
    ]
  ,
  
    Page "Primitive Values" ""
    [
      "Number: 3, 0.4",
      "String: 'abc', \"abc\"",
            "Boolean: true, false",
            "",
            "Everything else is an object (even function, array)"
    ]
  ,
  
    Page "Object" ""
    [
            "no types, just objects",
            "@var obj1 =  firstName: 'John', lastName: 'Doe' ;",
      "@var obj2 = ;",
      "@obj2.value = 5;",
            "@obj2.isGreaterThan = function (a) ",
            "@    return this.value > a;",
            "@"
    ]
  ,
  
    Page "Function" ""
    [
            "@function f(a, b)  ... ",
            "@var f = function (a, b)  ... ",
            "@f.value = 5",
            "First-class citizen (higher order functions)",
            "@pass functions as parameters to other functions",
            "@return function as return value from other functions"
    ]
  ,
  
    Page "Function Demo"
        "wumininawu" []
  ,
  
    Page "Higher Order Function Demo"
        "zotebexupi" []
  ,
  
    Page "Prototype" ""
    [
            "Object inheritance",
            "__proto__",
            "Object.create"
    ]
  ,
  
    Page "Built-in Prototypes" ""
    [
            "'s prototype is Object.prototype",
            "@toString, hasOwnProperty ...",
            "[]'s prototype is Array.prototype",
            "@map, filter, indexOf, push, slice ...",
            "a function's prototype is Function.prototype",
            "@call, apply, bind ..."
    ]
  ,
  
    Page "Prototype demo"
        "wabijipate" []
  ,
  
    Page "ES6" ""
    [
      "let, arrow function, destructuring, parameters...",
      "Class",
            "Module",
            "Map, Set, WeakMap, WeakSet",
            "Promise",
            "Generator"
    ]
  ,
  
    Page "let/const" ""
    [
      "var: function-scoped",
      "let: block-scoped"
    ]
  ,
  
    Page "let Demo"
        "tefitiduge" []
  ,
  
    Page "String interpolation" ""
    [
      "ES5:",
            "@'Page ' + page + ' of ' + total",
      "ES6:",
            "*`Page $page of $total`"
    ]
  ,
  
    Page "Arrow function" ""
    [
      "ES5:",
      "@function (x) { return x + 1; }",
      "ES6:",
      "*x => x + 1",
            "",
            "Arrow functions do not shadow 'this'"
    ]
  ,
  
    Page "Arrow function Demo"
        "zazihahuzi" []
  ,
  
    Page "Object destructuring" ""
    [
      "@var o =  firstName: 'John', lastName: 'Doe', age: '30' ;",
      "@var firstName = o.firstName;",
      "@var lastName = o.lastName;",
      "@var age = o.age;",
            "",
            "*let  firstName, lastName, age  = o;"
    ]
  ,
  
    Page "Array destructuring" ""
    [
      "@var arr = [ 49.250143, -123.001540 ];",
      "@var lat = arr[0];",
      "@var long = arr[1];",
            "",
            "*let [ lat, long ] = arr;"
    ]
  ,
  
    Page "Default parameters" ""
    [
      "*function (a, b, c = 5, d = []) ",
            "",
            "*let f = (a, b = 3) => "
    ]
  ,
  
    Page "Named parameters" ""
    [
            "@var opt =  from: 50 ;",
      "@function f(opt) ",
      "@    var from = opt.from || 1;",
      "@    var to = opt.to || 100;",
            "@",
            "*function f( from = 1, to = 100 ) "
    ]
  ,
  
    Page "Rest parameters" ""
    [
      "*let f = (a, ...b) => ",
            "",
            "*f('John', 3, 6, 5, 8)",
            "",
            "*// a = 'John', b = [3, 6, 5, 8]"
    ]
  ,
  
    Page "Spread operator" ""
    [
            "turn array into a list of parameters",
      "@var max = Math.max(3, 7, 2);",
      "@var arr = [3, 7, 2];",
            "@max = Math.max.apply(null, arr);",
            "",
            "*let max = Math.max(...arr)"
    ]
  ,
  
    Page "Spread operator" ""
    [
      "@var a1 = [3, 7, 2];",
      "@var a2 = [5, 1];",
      "@var a3 = [4, 6];",
            "@var all = a1.concat(a2, a3);",
            "",
            "*let all = [...a1, ...a2, ...a3]"
    ]
  ,
  
    Page "Set" ""
    [
      "a list of unique elements",
            "add, delete, has, size"
    ]
  ,
  
    Page "Set Demo"
        "zikiturule" []
  ,
  
    Page "Map" ""
    [
      "similar to Dictionary in C#",
      "get, set, has, delete, size",
      "key can be any value"
    ]
  ,
  
    Page "Map Demo"
        "taxuzulevo" []
  ,
  
    Page "ES5 Class" ""
    [
      "define constructor function",
      "define methods on prototype",
      "call constructor with new",
            "@    Object.create(Person.prototype)",
            "@    var obj = ;",
            "@    obj.__proto__ = Person.prototype;"
    ]
  ,
  
    Page "ES5 class Demo"
        "sefozasolo" []
  ,
  
    Page "ES6 class Demo"
        "pobaguhito" []
  ,
  
    Page "ES6 Class" ""
    [
      "no private fields",
      "@    can be achieved with WeakMap",
      "no overloads",
            "static methods"
    ]
  ,
  
    Page "WeakMap" ""
    [
      "keys are weakly referenced",
      "keep additional data"
    ]
  ,
  
    Page "WeakMap Demo"
        "supabecohe" []
  ,
  
    Page "ES5 Inheritance" ""
    [
      "prototype-based inheritance",
      "class-based inheritance",
      "constructor.call",
      "Object.create(Base.prototype)"
    ]
  ,
  
    Page "ES5 Inheritance Demo"
        "nubebudolo" []
  ,
  
    Page "ES6 Inheritance" ""
    [
      "extends",
      "super"
    ]
  ,
  
    Page "ES6 Inheritance Demo"
        "fetafufefi" []
  ,
  
    Page "Module" ""
    [
      "decouple application, smaller components",
      "better code reuse, maintainability",
      "namespace, package",
      "CommonJS",
            "@Node.js, synchronous, for server",
      "AMD",
            "@require.js, asynchronous, for browser"
    ]
  ,
  
    Page "ES6 Module" ""
    [
      "js file = module",
      "all declarations are local to the module",
      "export",
      "import"
    ]
  ,
  
    Page "Named exports" ""
    [
      "*export let myObj =  ... ",
      "*export function myFunc()  ... ",
      "*export class MyClass  ... ",
            "",
      "*import  myObj, MyClass  from 'myModule'",
      "*import * as lib from 'myModule'",
      "*lib.myFunc()"
    ]
  ,
  
    Page "Default export" ""
    [
      "*export default class  ... ",
            "",
      "*import MyClass from 'myClass'",
      "*new MyClass()"
    ]
  ,
  
    Page "Promise" ""
    [
      "a new asynchronous api",
            "replace callback functions"
    ]
  ,
  
    Page "Problems with callback functions" ""
    [
            "In sequence:",
      "@Callback hell",
            "@Error handling",
            "In parallel:",
            "@can start in parallel",
            "@no built-in support to detect when all tasks are finished"
    ]
  ,
  
    Page "Callback hell Demo"
        "xuyifuseri" []
  ,
  
    Page "Promise" ""
    [
      "return a Promise object",
            "then (chainable)",
            "catch",
      "synchronous style code",
            "handle errors in one place"
    ]
  ,
  
    Page "Promise States" ""
    [
      "Pending, Resolved, Rejected",
            "Pending -> Resolved",
            "Pending -> Rejected"
    ]
  ,
  
    Page "Promise Demo"
        "zegonuyore" []
  ,
  
    Page "Create Promise" ""
    [
      "A wrapper for callback"
    ]
  ,
  
    Page "Create Promise Demo"
        "pimihoduxi" []
  ,
  
    Page "Promise.all" ""
    [
      "Run asynchronous functions in parallel",
            "wait for all promises are resolved",
            "or the first that is rejected",
            "return a list of resolved values"
    ]
  ,
  
    Page "Promise.all Demo"
        "kixemobuge" []
  ,
  
    Page "async/await" ""
    [
      "wait for the promise to be resolved",
            "implemented with generator",
            "pause/resume"
    ]
  ,
  
    Page "async/await Demo"
        "xidosizojo" []
  ,
  
    Page "ES7" ""
    [
      "ES2016, really small feature set",
            "Array.prototype.includes",
            "@    [7,'d',true].indexOf('d') > -1",
            "*    [7,'d',true].includes('d')",
            "Exponentiation Operator",
            "@    Math.pow(x, y)",
            "*    x ** y"
    ]
  ,
  
    Page "ES2017" ""
    [
      "Async Functions"
    ]
  ,
  
    Page "Use ES6/ES7 today" ""
    [
            "Compatibility table",
      "babel - ES6/7 to ES5",
            "build tools - Gulp",
            "polyfill (for browser api - Promise, Generator, fetch...)",
      "System.js - load CommonJs/AMD/ES6 modules"
    ]
  
    ],
    idx = 1
  }