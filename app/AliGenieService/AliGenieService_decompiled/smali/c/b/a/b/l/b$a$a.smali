.class public Lc/b/a/b/l/b$a$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/b/l/b$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/a/b/l/b$a;


# direct methods
.method public constructor <init>(Lc/b/a/b/l/b$a;)V
    .locals 0

    iput-object p1, p0, Lc/b/a/b/l/b$a$a;->a:Lc/b/a/b/l/b$a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lc/b/a/b/l/b$a$a;->a:Lc/b/a/b/l/b$a;

    iget-object p1, p1, Lc/b/a/b/l/b$a;->b:Lc/b/a/b/l/b;

    .line 1
    iget-object p1, p1, Lc/b/a/b/l/b;->d:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x927c0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lc/b/a/b/l/b$a$a;->a:Lc/b/a/b/l/b$a;

    iget-object p1, p1, Lc/b/a/b/l/b$a;->b:Lc/b/a/b/l/b;

    .line 3
    iget v1, p1, Lc/b/a/b/l/b;->a:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p1, Lc/b/a/b/l/b;->a:I

    const/4 v3, 0x3

    if-lt v1, v3, :cond_0

    .line 4
    sget-object v1, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;->APP_USAGE:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    const-string v3, "appusageinfo"

    .line 5
    invoke-virtual {p1, v1, v3}, Lc/b/a/b/l/b;->a(Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lc/b/a/b/l/b$a$a;->a:Lc/b/a/b/l/b$a;

    iget-object p1, p1, Lc/b/a/b/l/b$a;->b:Lc/b/a/b/l/b;

    .line 7
    iput v0, p1, Lc/b/a/b/l/b;->a:I

    .line 8
    :cond_0
    iget-object p1, p0, Lc/b/a/b/l/b$a$a;->a:Lc/b/a/b/l/b$a;

    iget-object p1, p1, Lc/b/a/b/l/b$a;->b:Lc/b/a/b/l/b;

    .line 9
    iget v1, p1, Lc/b/a/b/l/b;->b:I

    add-int/2addr v1, v2

    iput v1, p1, Lc/b/a/b/l/b;->b:I

    if-lt v1, v2, :cond_1

    .line 10
    sget-object v1, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;->JOYSTICK_INFO:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    const-string v2, "usbpluggedinfo"

    .line 11
    invoke-virtual {p1, v1, v2}, Lc/b/a/b/l/b;->a(Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lc/b/a/b/l/b$a$a;->a:Lc/b/a/b/l/b$a;

    iget-object p1, p1, Lc/b/a/b/l/b$a;->b:Lc/b/a/b/l/b;

    sget-object v1, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;->SYSTEM_INFO:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    const-string v2, "systeminfo"

    .line 13
    invoke-virtual {p1, v1, v2}, Lc/b/a/b/l/b;->a(Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lc/b/a/b/l/b$a$a;->a:Lc/b/a/b/l/b$a;

    iget-object p1, p1, Lc/b/a/b/l/b$a;->b:Lc/b/a/b/l/b;

    sget-object v1, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;->BROADCAST_INFO:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    const-string v2, "broadcastinfo"

    .line 15
    invoke-virtual {p1, v1, v2}, Lc/b/a/b/l/b;->a(Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lc/b/a/b/l/b$a$a;->a:Lc/b/a/b/l/b$a;

    iget-object p1, p1, Lc/b/a/b/l/b$a;->b:Lc/b/a/b/l/b;

    sget-object v1, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;->APP_INFO:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    const-string v2, "installedpackagesinfo"

    .line 17
    invoke-virtual {p1, v1, v2}, Lc/b/a/b/l/b;->a(Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lc/b/a/b/l/b$a$a;->a:Lc/b/a/b/l/b$a;

    iget-object p1, p1, Lc/b/a/b/l/b$a;->b:Lc/b/a/b/l/b;

    .line 19
    iput v0, p1, Lc/b/a/b/l/b;->b:I

    :cond_1
    return-void
.end method
