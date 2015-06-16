<?
$nama=$_POST[nama];
$email=$_POST[email];
$telp=$_POST[telp];
$pesan=$_POST[pesan];
/*mail("rahayu@bayutermalindoutama.co.id", "Email Notification from www.bayutermalindo.co.id", "heheheheh");*/
$to = "to.eko.triyanto@gmail.com";
$subject = "Test mail";
$message = "Hello! This is a simple email message.";
$from = "rahayu@bayutermalindoutama.co.id";
$headers = "From: $from";
mail($to,$subject,$message,$headers);
echo "Mail Sent.";
header('location:main.php?module=email_terkirim');
?>

