<?php

$config['imap_host'] = 'tls://mail.asa.br:143';
$config['smtp_server'] = 'mail.asa.br';
$config['smtp_port'] = 587;
$config['smtp_auth_type'] = 'PLAIN';
$config['smtp_user'] = '%u';
$config['smtp_pass'] = '%p';
$config['mail_domain'] = 'mail.asa.br';

$config['imap_conn_options'] = [
  'ssl' => [
    'verify_peer' => false,
    'verify_peer_name' => false,
    'allow_self_signed' => true
  ]
];

$config['smtp_conn_options'] = [
  'ssl' => [
    'verify_peer' => false,
    'verify_peer_name' => false,
    'allow_self_signed' => true
  ],
  'tls' => [
    'verify_peer' => false,
    'verify_peer_name' => false,
    'allow_self_signed' => true
  ]
];
// ESSENCIAL para evitar erro fatal com plugins
$config['plugins'] = [];

// ESSENCIAL para Docker oficial do Roundcube
include(__DIR__ . '/config.docker.inc.php');

