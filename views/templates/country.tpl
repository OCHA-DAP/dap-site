<!DOCTYPE html>

<html>
  <head>
    <title>{$country.name|escape} - country data - DAP</title>
    <link rel="stylesheet" type="text/css" href="/style/style.css" />
  </head>
  <body>
    <ul class="breadcrumbs">
      <li><a href="/">Home</a></li>
      <li><a href="/countries/">Countries</a></li>
    </ul>

    <h1>Country data: {$country.name|escape}</h1>

    <p>There are {$indicators|@count|number_format} indicator(s) available for {$country.name|escape}:</p>

    <ol>
{foreach item=indicator from=$indicators}
      <li><a href="/countries/{$country.regionid|escape:url}/{$indicator.indid|escape:'url'}/">{if $indicator.name}{$indicator.indicator_name|escape}{else}{$indicator.indid|escape}{/if}</a> ({$indicator.num|number_format})</li>
{/foreach}
    </ol>

  </body>
</html>
