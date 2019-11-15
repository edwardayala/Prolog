---


---

<h1 id="prolog-notes">Prolog Notes:</h1>
<ul>
<li>
<p>Collection of Facts and Rules we can Query</p>
</li>
<li>
<p>Facts/Rules stored in Database/Knowledge Base</p>
</li>
<li>
<p><code>halt.</code> - to exit prolog</p>
</li>
<li>
<p><code>[filename].</code> compile prolog program</p>
</li>
<li>
<p>Fact/Rules a.k.a. Clause</p>
</li>
</ul>
<hr>
<h3 id="hello-world">Hello World</h3>
<pre class=" language-prolog"><code class="prism  language-prolog">	<span class="token operator">?-</span> <span class="token function">write</span><span class="token punctuation">(</span><span class="token string">'Hello World'</span><span class="token punctuation">)</span><span class="token punctuation">,</span> nl<span class="token punctuation">,</span>
	<span class="token function">write</span><span class="token punctuation">(</span><span class="token string">'Let\'s Program'</span><span class="token punctuation">)</span><span class="token operator">.</span>
</code></pre>
<blockquote>
<p>Hello World<br>
Let’s Program</p>
</blockquote>
<ul>
<li>Use <code>nl</code> for new line</li>
<li><code>write</code> = print</li>
<li><code>.</code> for ending a line</li>
</ul>
<hr>
<h3 id="anatomy-of-a-fact">Anatomy of a Fact</h3>
<pre class=" language-prolog"><code class="prism  language-prolog">	<span class="token function">loves</span><span class="token punctuation">(</span>romeo<span class="token punctuation">,</span> juliet<span class="token punctuation">)</span><span class="token operator">.</span>
</code></pre>
<ul>
<li>loves(romeo, juliet). - Fact</li>
<li><code>loves</code> - Predicate</li>
<li><code>romeo</code> &amp; <code>juliet</code> - Atoms</li>
<li>in other words - <code>x(y,z) -&gt; 'y x z'</code></li>
<li>in other words- <code>loves(romeo, juliet) -&gt; 'romeo loves juliet'</code></li>
</ul>
<hr>
<h3 id="anatomy-of-a-rule">Anatomy of a Rule</h3>
<pre class=" language-prolog"><code class="prism  language-prolog"><span class="token operator">:-</span>
</code></pre>
<ul>
<li>Syntax for defining a Rule</li>
<li>Similar to ‘if’</li>
</ul>
<pre class=" language-prolog"><code class="prism  language-prolog"><span class="token function">loves</span><span class="token punctuation">(</span>juliet<span class="token punctuation">,</span> romeo<span class="token punctuation">)</span> <span class="token operator">:-</span> <span class="token function">loves</span><span class="token punctuation">(</span>romeo<span class="token punctuation">,</span> juliet<span class="token punctuation">)</span><span class="token operator">.</span>
</code></pre>
<ul>
<li>in other words - <code>x :- y</code> -&gt; <code>x is true IF y is true</code></li>
<li>in other words -<code>loves(juliet, romeo) :- loves(romeo, juliet)</code> -&gt; <code>juliet loves romeo IF romeo loves juliet</code></li>
<li>output: <code>yes</code> (true)</li>
</ul>
<hr>
<h3 id="anatomy-of-a-variable">Anatomy of a Variable</h3>
<ul>
<li>Object we can’t name at the time of execution</li>
<li>Variable starts with uppercase letter</li>
<li>Used for querying the database</li>
</ul>
<hr>
<h3 id="anatomy-of-an-atom">Anatomy of an Atom</h3>
<ul>
<li>Atoms start with lowercase letter</li>
</ul>
<hr>
<h3 id="query-terminal">Query Terminal</h3>
<ul>
<li>Query database for an answer</li>
<li>ex:</li>
</ul>
<pre class=" language-prolog"><code class="prism  language-prolog">	<span class="token operator">?-</span> <span class="token function">loves</span><span class="token punctuation">(</span>romeo<span class="token punctuation">,</span> <span class="token variable">X</span><span class="token punctuation">)</span><span class="token operator">.</span>
</code></pre>
<ul>
<li>Asking database ‘Who loves romeo?’</li>
<li>returns:</li>
</ul>
<pre class=" language-prolog"><code class="prism  language-prolog">	<span class="token variable">X</span> <span class="token operator">=</span> juliet
</code></pre>
<hr>
<h3 id="deep-into-facts">Deep into Facts</h3>
<ul>
<li>Write relationship first, followed by paranthesis, followed by dot</li>
<li>Always start with lowercase letters</li>
<li>Can contain lowercase/uppercase letters, numbers, symbols(+, - , _, *, /)</li>
<li>Never start an Atom with underscore</li>
</ul>
<h4 id="fact-checking">Fact Checking:</h4>
<ul>
<li>Insert facts into database</li>
</ul>
<pre class=" language-prolog"><code class="prism  language-prolog">	<span class="token function">male</span><span class="token punctuation">(</span>bob<span class="token punctuation">)</span><span class="token operator">.</span>
	<span class="token function">male</span><span class="token punctuation">(</span>jim<span class="token punctuation">)</span><span class="token operator">.</span>
	
	<span class="token function">female</span><span class="token punctuation">(</span>sam<span class="token punctuation">)</span><span class="token operator">.</span>
	<span class="token function">female</span><span class="token punctuation">(</span>may<span class="token punctuation">)</span><span class="token operator">.</span>
</code></pre>
<ul>
<li>Query the database(fact check)</li>
</ul>
<pre class=" language-prolog"><code class="prism  language-prolog">	<span class="token operator">?-</span> <span class="token function">female</span><span class="token punctuation">(</span>may<span class="token punctuation">)</span><span class="token operator">.</span>
</code></pre>
<ul>
<li>Returns: <code>yes</code> (true)</li>
</ul>
<h4 id="listing-facts">Listing Facts:</h4>
<ul>
<li>Query the database</li>
</ul>
<pre class=" language-prolog"><code class="prism  language-prolog">	<span class="token operator">?-</span> <span class="token function">listing</span><span class="token punctuation">(</span>male<span class="token punctuation">)</span><span class="token operator">.</span>
</code></pre>
<ul>
<li>Returns:</li>
</ul>
<pre class=" language-prolog"><code class="prism  language-prolog">	<span class="token function">male</span><span class="token punctuation">(</span>jim<span class="token punctuation">)</span><span class="token operator">.</span>
	<span class="token function">male</span><span class="token punctuation">(</span>bob<span class="token punctuation">)</span><span class="token operator">.</span>
</code></pre>
<h4 id="cycle-through-pairs">Cycle through pairs:</h4>
<ul>
<li>Query the database</li>
</ul>
<pre class=" language-prolog"><code class="prism  language-prolog">	<span class="token operator">?-</span> <span class="token function">male</span><span class="token punctuation">(</span><span class="token variable">X</span><span class="token punctuation">)</span><span class="token punctuation">,</span> <span class="token function">female</span><span class="token punctuation">(</span><span class="token variable">Y</span><span class="token punctuation">)</span><span class="token operator">.</span>
</code></pre>
<ul>
<li>This query will show all combinations of male and female</li>
</ul>
<pre class=" language-prolog"><code class="prism  language-prolog">	<span class="token variable">X</span> <span class="token operator">=</span> jim
	<span class="token variable">Y</span> <span class="token operator">=</span> sam <span class="token operator">?</span> <span class="token operator">;</span>

	<span class="token variable">X</span> <span class="token operator">=</span> jim
	<span class="token variable">Y</span> <span class="token operator">=</span> may <span class="token operator">?</span> <span class="token operator">;</span>

	<span class="token variable">X</span> <span class="token operator">=</span> bob
	<span class="token variable">Y</span> <span class="token operator">=</span> sam <span class="token operator">?</span> <span class="token operator">;</span>

	<span class="token variable">X</span> <span class="token operator">=</span> bob
	<span class="token variable">Y</span> <span class="token operator">=</span> may
	
	yes
</code></pre>

