.class public Lc/b/a/a/d/b;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x6

    const-string v2, "AccessibilityWindowInfoUtils"

    const-string v3, "SecurityException occurred at AccessibilityWindowInfoUtils#getRoot(): %s"

    .line 1
    invoke-static {v2, p0, v3, v1}, Lc/b/a/a/d/f;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method
