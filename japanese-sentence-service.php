<?php
  header("Content-Type: application/json; charset=utf-8");
  include("BaseXClient.php");
  $n = intval($_GET["n"]);
  $session = new Session("localhost", 1984, "admin", "admin");
  $query = $session->query("declare option output:method 'json';
declare option output:json 'format=attributes,merge=true'; xquery:invoke('webapp/sentences.xq',map{'y':$n})");
  echo $query->execute();
  $query->close();
  $session->close();
?>