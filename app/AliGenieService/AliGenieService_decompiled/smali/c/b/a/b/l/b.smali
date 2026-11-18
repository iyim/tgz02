.class public Lc/b/a/b/l/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/a/b/l/c;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/Thread;

.field public d:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lc/b/a/b/l/b;->a:I

    iput v0, p0, Lc/b/a/b/l/b;->b:I

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lc/b/a/b/l/b$a;

    invoke-direct {v2, p0}, Lc/b/a/b/l/b$a;-><init>(Lc/b/a/b/l/b;)V

    const-string v3, "ICUploadThread"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lc/b/a/b/l/b;->c:Ljava/lang/Thread;

    iget-object v1, p0, Lc/b/a/b/l/b;->c:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_0
    iget-object v1, p0, Lc/b/a/b/l/b;->d:Landroid/os/Handler;

    if-nez v1, :cond_0

    const-class v1, Lc/b/a/b/l/b;

    const-string v2, "wait ICUploadThread to run"

    invoke-static {v2, v1}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    const-wide/16 v1, 0xa

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public final a(Lc/b/a/b/k/c;)V
    .locals 2

    invoke-static {}, Lc/b/a/b/o/b;->a()Ljava/lang/String;

    .line 5
    sget-object v0, Lc/b/a/b/o/h$a;->a:Lc/b/a/b/o/h;

    .line 6
    iget-object v1, v0, Lc/b/a/b/o/h;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 7
    invoke-static {}, Lc/b/a/b/o/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/b/a/b/o/h;->a(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lc/b/a/b/o/g;->Q:Ljava/lang/String;

    .line 8
    sget-object v1, Lc/b/a/b/o/h$a;->a:Lc/b/a/b/o/h;

    .line 9
    iget-object v1, v1, Lc/b/a/b/o/h;->a:Ljava/lang/String;

    .line 10
    invoke-virtual {p1, v0, v1}, Lc/b/a/b/k/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lc/b/a/b/a$a;->a:Lc/b/a/b/a;

    .line 12
    invoke-virtual {v0, p1}, Lc/b/a/b/a;->a(Lc/b/a/b/k/c;)V

    return-void
.end method

.method public final a(Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;Ljava/lang/String;)V
    .locals 9

    .line 13
    const-class v0, Lc/b/a/b/l/b;

    sget-object v1, Lc/b/a/b/g/b$a;->a:Lc/b/a/b/g/b;

    .line 14
    invoke-virtual {v1, p2}, Lc/b/a/b/g/b;->a(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_0

    return-void

    :cond_0
    new-instance v2, Lc/b/a/b/k/c;

    invoke-direct {v2, p1}, Lc/b/a/b/k/c;-><init>(Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;)V

    .line 15
    sget-object p1, Lc/b/a/b/g/b$a;->a:Lc/b/a/b/g/b;

    .line 16
    invoke-virtual {p1, v1, p2}, Lc/b/a/b/g/b;->b(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/b/a/b/g/a;

    .line 17
    iget-object v4, v3, Lc/b/a/b/g/a;->b:Ljava/lang/String;

    .line 18
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 19
    iget-object v5, v3, Lc/b/a/b/g/a;->c:Ljava/lang/String;

    .line 20
    iget-object v6, v3, Lc/b/a/b/g/a;->d:Ljava/lang/String;

    .line 21
    invoke-static {v4, v5, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/i/i;

    move-result-object v4

    invoke-virtual {v4}, Lc/b/a/b/i/i;->a()Lc/b/a/b/k/b;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 22
    iget-object v3, v3, Lc/b/a/b/g/a;->b:Ljava/lang/String;

    .line 23
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 24
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v7, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v8, "yyyyMMdd"

    invoke-direct {v3, v8, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "000000"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "pt"

    .line 25
    invoke-virtual {v4, v5, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    .line 26
    iget-object v3, v2, Lc/b/a/b/k/c;->a:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 27
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "icEntry is null, i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", table="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 28
    invoke-static {v4, v0, v5}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    iget-object v5, v3, Lc/b/a/b/g/a;->b:Ljava/lang/String;

    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-object v6, v3, Lc/b/a/b/g/a;->c:Ljava/lang/String;

    .line 33
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-object v3, v3, Lc/b/a/b/g/a;->d:Ljava/lang/String;

    .line 35
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;Ljava/lang/Class;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 36
    :cond_2
    iget-object v0, v2, Lc/b/a/b/k/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    return-void

    .line 37
    :cond_3
    invoke-virtual {p0, v2}, Lc/b/a/b/l/b;->a(Lc/b/a/b/k/c;)V

    .line 38
    sget-object v0, Lc/b/a/b/g/b$a;->a:Lc/b/a/b/g/b;

    .line 39
    invoke-virtual {v0, p1, p2}, Lc/b/a/b/g/b;->a(Ljava/util/List;Ljava/lang/String;)Z

    return-void
.end method

.method public a(Lc/b/a/b/i/i;)Z
    .locals 6

    invoke-virtual {p1}, Lc/b/a/b/i/i;->a()Lc/b/a/b/k/b;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "_time"

    invoke-virtual {p1, v2}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    const-string v2, "event_name"

    invoke-virtual {p1, v2}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    const-string v2, "event_type"

    invoke-virtual {p1, v2}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lc/b/a/b/k/b;->a(Ljava/lang/String;Ljava/lang/String;)Lc/b/a/b/k/b;

    new-instance v2, Lc/b/a/b/k/c;

    const-string v3, "_tag"

    .line 1
    invoke-virtual {p1, v3}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "installed_package"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    sget-object p1, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;->APP_INFO:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1, v3}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "package_update_info"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    sget-object p1, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;->APP_UPDATE:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1, v3}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_usage"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    sget-object p1, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;->APP_USAGE:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v3}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "hdmi_plugged"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p1, v3}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "system_status"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p1, v3}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bt_bond_state"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p1, v3}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bt_connection_state"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v3}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "hard_key"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_5

    sget-object p1, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;->HARD_KEY:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v3}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "temperature_event"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_6

    sget-object p1, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;->TEMPERATURE_INFO:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    goto :goto_1

    :cond_6
    invoke-virtual {p1, v3}, Lc/b/a/b/i/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "device_plugged"

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;->JOYSTICK_INFO:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    goto :goto_1

    :cond_7
    sget-object p1, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;->SYSTEM_INFO:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    goto :goto_1

    :cond_8
    :goto_0
    sget-object p1, Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;->BROADCAST_INFO:Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;

    .line 2
    :goto_1
    invoke-direct {v2, p1}, Lc/b/a/b/k/c;-><init>(Lcom/aligenie/ags/analytics/upload/ApiConfig$Api;)V

    .line 3
    iget-object p1, v2, Lc/b/a/b/k/c;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0, v2}, Lc/b/a/b/l/b;->a(Lc/b/a/b/k/c;)V

    return v1
.end method
