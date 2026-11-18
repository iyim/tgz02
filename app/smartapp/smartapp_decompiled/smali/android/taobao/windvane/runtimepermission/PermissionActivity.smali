.class public Landroid/taobao/windvane/runtimepermission/PermissionActivity;
.super Landroid/app/Activity;
.source "PermissionActivity.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;


# static fields
.field private static final OVERLAY_PERMISSION_REQ_CODE:I = 0x7b

.field private static final PERMISSION_REQUEST:I = 0x0

.field public static final TAG:Ljava/lang/String; = "PermissionActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private requestCustomPermission([Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 77
    invoke-direct {p0, p1}, Landroid/taobao/windvane/runtimepermission/PermissionActivity;->shouldShowRequestPermissionRationale([Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/taobao/windvane/runtimepermission/PermissionActivity$1;

    invoke-direct {v2, p0, p1}, Landroid/taobao/windvane/runtimepermission/PermissionActivity$1;-><init>(Landroid/taobao/windvane/runtimepermission/PermissionActivity;[Ljava/lang/String;)V

    const-string/jumbo p1, "\u6211\u77e5\u9053\u4e86"

    .line 79
    invoke-virtual {v0, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 87
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 88
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 91
    :cond_0
    invoke-static {p0, p1, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private shouldShowRequestPermissionRationale([Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 98
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 99
    invoke-static {p0, v3}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 65
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x7b

    if-ne p1, v0, :cond_0

    .line 67
    invoke-static {p1, p2, p3}, Landroid/taobao/windvane/runtimepermission/PermissionProposer;->onActivityResult(IILandroid/content/Intent;)V

    .line 69
    :cond_0
    invoke-virtual {p0}, Landroid/taobao/windvane/runtimepermission/PermissionActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 31
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :catch_0
    invoke-virtual {p0, p1}, Landroid/taobao/windvane/runtimepermission/PermissionActivity;->setContentView(Landroid/view/View;)V

    .line 35
    invoke-virtual {p0}, Landroid/taobao/windvane/runtimepermission/PermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "permissions"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-virtual {p0}, Landroid/taobao/windvane/runtimepermission/PermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "explain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 37
    array-length v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-string v2, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    new-instance p1, Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/taobao/windvane/runtimepermission/PermissionActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v0, 0x7b

    .line 39
    invoke-virtual {p0, p1, v0}, Landroid/taobao/windvane/runtimepermission/PermissionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-direct {p0, p1, v0}, Landroid/taobao/windvane/runtimepermission/PermissionActivity;->requestCustomPermission([Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    if-nez p1, :cond_0

    .line 48
    invoke-static {p1, p2, p3}, Landroid/taobao/windvane/runtimepermission/PermissionProposer;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 50
    :cond_0
    invoke-virtual {p0}, Landroid/taobao/windvane/runtimepermission/PermissionActivity;->finish()V

    return-void
.end method

.method protected onRestart()V
    .locals 0

    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onResume()V
    .locals 0

    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
