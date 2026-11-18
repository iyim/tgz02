.class public Landroid/taobao/windvane/jsbridge/api/WVUIDialog;
.super Landroid/taobao/windvane/jsbridge/WVApiPlugin;
.source "WVUIDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/jsbridge/api/WVUIDialog$AlertListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WVUIDialog"


# instance fields
.field private _index:Ljava/lang/String;

.field private cancelBtnText:Ljava/lang/String;

.field protected confirmClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private identifier:Ljava/lang/String;

.field private mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

.field private okBtnText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    const-string v0, ""

    .line 29
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->okBtnText:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->cancelBtnText:Ljava/lang/String;

    .line 126
    new-instance v0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog$1;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/jsbridge/api/WVUIDialog$1;-><init>(Landroid/taobao/windvane/jsbridge/api/WVUIDialog;)V

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->confirmClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Landroid/taobao/windvane/jsbridge/api/WVUIDialog;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->okBtnText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Landroid/taobao/windvane/jsbridge/api/WVUIDialog;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->cancelBtnText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Landroid/taobao/windvane/jsbridge/api/WVUIDialog;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->_index:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Landroid/taobao/windvane/jsbridge/api/WVUIDialog;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 0

    .line 25
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-object p0
.end method

.method static synthetic access$400(Landroid/taobao/windvane/jsbridge/api/WVUIDialog;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->identifier:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized alert(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 57
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 60
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "title"

    const-string/jumbo v3, "\u63d0\u793a"

    .line 61
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, "message"

    .line 62
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, "okbutton"

    .line 64
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->okBtnText:Ljava/lang/String;

    const-string v2, "identifier"

    .line 65
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->identifier:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->okBtnText:Ljava/lang/String;

    new-instance v2, Landroid/taobao/windvane/jsbridge/api/WVUIDialog$AlertListener;

    invoke-direct {v2, p0}, Landroid/taobao/windvane/jsbridge/api/WVUIDialog$AlertListener;-><init>(Landroid/taobao/windvane/jsbridge/api/WVUIDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v0, "WVUIDialog"

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WVUIDialog: param parse to JSON error, param="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance p2, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p2}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string v0, "HY_PARAM_ERR"

    .line 70
    invoke-virtual {p2, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 75
    :cond_0
    :goto_0
    :try_start_3
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    :try_start_4
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 p2, 0x0

    .line 78
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 79
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    :try_start_5
    const-string p1, "WVUIDialog"

    const-string p2, "alert: show"

    .line 83
    invoke-static {p1, p2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized confirm(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 90
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 91
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 93
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "title"

    const-string v3, ""

    .line 94
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, "message"

    .line 95
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, "okbutton"

    .line 96
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->okBtnText:Ljava/lang/String;

    .line 97
    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->okBtnText:Ljava/lang/String;

    iget-object v3, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->confirmClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v2, "canclebutton"

    .line 98
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->cancelBtnText:Ljava/lang/String;

    .line 99
    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->cancelBtnText:Ljava/lang/String;

    iget-object v3, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->confirmClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v2, "_index"

    .line 100
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->_index:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v0, "WVUIDialog"

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WVUIDialog: param parse to JSON error, param="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance p2, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p2}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string v0, "HY_PARAM_ERR"

    .line 104
    invoke-virtual {p2, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    .line 109
    :cond_0
    :goto_0
    :try_start_3
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    :try_start_4
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 p2, 0x0

    .line 112
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 113
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    :try_start_5
    const-string p1, "WVUIDialog"

    const-string p2, "confirm: show"

    .line 117
    invoke-static {p1, p2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 1

    .line 36
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 37
    iput-object p3, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    const-string v0, "alert"

    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0, p3, p2}, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->alert(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "confirm"

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 41
    invoke-virtual {p0, p3, p2}, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->confirm(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 46
    :cond_2
    new-instance p1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string p2, "error"

    const-string v0, "Context must be Activity!!!"

    .line 47
    invoke-virtual {p1, p2, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p3, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    const-string v0, ""

    .line 123
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->cancelBtnText:Ljava/lang/String;

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;->okBtnText:Ljava/lang/String;

    return-void
.end method
