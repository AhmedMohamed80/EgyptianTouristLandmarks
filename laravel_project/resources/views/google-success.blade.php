<!DOCTYPE html>
<html>
<head>
  <title>Login Successful</title>
</head>
<body>
<script>
  if (window.opener) {
    window.opener.postMessage(
      { Token: "{{ $Token }}" },
      "https://pharaohslegacy.cloud/"
    );
    window.close();
  } else {
    // fallback: redirect manually
    window.location.href = "https://pharaohslegacy.cloud/?token={{ $Token }}";
  }
</script>
</body>
</html>
