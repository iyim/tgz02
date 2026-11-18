.class public Landroid/taobao/windvane/jsbridge/api/WVUIToast;
.super Landroid/taobao/windvane/jsbridge/WVApiPlugin;
.source "WVUIToast.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WVUIToast"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 1

    const-string/jumbo v0, "toast"

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p0, p3, p2}, Landroid/taobao/windvane/jsbridge/api/WVUIToast;->toast(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized toast(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVUIToast;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/taobao/windvane/jsbridge/utils/WVUtils;->isNotificationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    new-instance p2, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p2}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string v0, "msg"

    const-string v1, "no permission"

    .line 49
    invoke-virtual {p2, v0, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, ""

    .line 55
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0x11

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_1

    :try_start_2
    const-string/jumbo v1, "utf-8"

    .line 57
    invoke-static {p2, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 58
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "message"

    .line 59
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "duration"

    .line 60
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 62
    :catch_0
    :try_start_3
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVUIToast;->mContext:Landroid/content/Context;

    invoke-static {v1, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    .line 63
    invoke-virtual {p2, v2, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 64
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    :cond_1
    const/4 p2, 0x0

    .line 67
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    if-le p2, v1, :cond_2

    const/4 p2, 0x1

    .line 71
    :cond_2
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVUIToast;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    .line 72
    invoke-virtual {p2, v2, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 73
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 75
    :cond_3
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
