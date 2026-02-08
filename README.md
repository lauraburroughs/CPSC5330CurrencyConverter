<h1>Currency Converter</h1>

<hr>

<h2>Overview</h2>
<p>CurrencyConverter is a simple iOS app that allows users to convert a USD amount into up to three other currencies (EUR, GBP, JPY). The app demonstrates the use of multi-view navigation, user input validation, and the Model-View-Controller (MVC) design pattern.</p>

<p>This app was built using concepts from Module 6 in CPSC 5330.</p>

<h2>Features</h2>
<ul>
<li>Multi-View Application</li>
<ul>
  <li>Screen 1: User inputs USD amount and selects which currencies to convert using UISwitches.  </li>
  <li>Screen 2: Displays the converted amounts on labels, along with the original USD amount. </li> 
</ul>
  <ul>
  <li>Input Validation</li>
  <li>Checks for empty input</li>
  <li>Checks for non-integer input</li>
  <li>Displays an error message if input is invalid</li>
</ul>
<li>Segue Navigation</li>
<ul>
  <li>Data is passed from Screen 1 to Screen 2 using a storyboard segue with identifier "showResults"</li>
</ul>
<li>Currency Conversion</li>
<ul>
  <li>EUR: 0.92</li>
  <li>GBP: 0.79 </li>
  <li>JPY: 140.0 </li>
  <li>Only selected currencies are displayed. </li> 
</ul>
<li>MVC Implementation</li>
<ul>
  <li>`CurrencyModel.swift` handles conversion logic (Model). </li> 
  <li>`ViewController.swift` and `NavigationViewController.swift` manage UI and user input (Controller).</li>   
  <li>Storyboard defines the interface (View). </li> 
</ul>

<hr>

<h2>How It Works</h2>
<ol>
<li>Launch the app in Xcode or the Simulator.</li>
<li>On Screen 1: 
<ul>
<li>Story text</li>
<li>Enter an integer USD amount.</li>
<li>Toggle the UISwitches for the currencies you want to convert.</li>
</ul></li>
<li>Tap Convert.</li>
<li>Screen 2 displays:
<ul>
  <li>USD amount entered.</li>
  <li>Converted values for the selected currencies only.</li>
  <li>Updates the UI accordingly</li>
</ul>
</li>
  <li>Rotate device/simulator to test landscape orientation — app is fully responsive.</li>
</ol>

<hr>
<h2>Testing & Validation</h2>
<ul>
<li>Verified input validation: empty and non-integer inputs trigger error messages.  </li>
<li>Verified conversions: calculated values match expected results for all currencies.  </li>
<li>Verified navigation: data passed correctly via segue.  </li>
<li>Verified orientation: UI works for all size classes, including iPads.  </li>
</ul>

<hr>
<h2>Notes</h2>
<ul>
<li>All logic for conversions is separated into the Model to comply with MVC. </li> 
<li>Labels for unselected currencies are hidden.  </li>
<li>Only integer USD amounts are accepted.  </li>
</ul>








