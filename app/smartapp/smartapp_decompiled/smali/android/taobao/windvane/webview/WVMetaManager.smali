.class public Landroid/taobao/windvane/webview/WVMetaManager;
.super Ljava/lang/Object;
.source "WVMetaManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WVMetaManager"

.field private static volatile instance:Landroid/taobao/windvane/webview/WVMetaManager;


# instance fields
.field private metaDataObject:Lorg/json/JSONObject;

.field private metaKeys:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVMetaManager;->metaDataObject:Lorg/json/JSONObject;

    .line 14
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVMetaManager;->metaKeys:[Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Landroid/taobao/windvane/webview/WVMetaManager;
    .locals 2

    .line 17
    sget-object v0, Landroid/taobao/windvane/webview/WVMetaManager;->instance:Landroid/taobao/windvane/webview/WVMetaManager;

    if-nez v0, :cond_1

    .line 18
    const-class v0, Landroid/taobao/windvane/webview/WVMetaManager;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/webview/WVMetaManager;->instance:Landroid/taobao/windvane/webview/WVMetaManager;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Landroid/taobao/windvane/webview/WVMetaManager;

    invoke-direct {v1}, Landroid/taobao/windvane/webview/WVMetaManager;-><init>()V

    sput-object v1, Landroid/taobao/windvane/webview/WVMetaManager;->instance:Landroid/taobao/windvane/webview/WVMetaManager;

    .line 22
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Landroid/taobao/windvane/webview/WVMetaManager;->instance:Landroid/taobao/windvane/webview/WVMetaManager;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVMetaManager;->metaDataObject:Lorg/json/JSONObject;

    return-void
.end method

.method public getMetaData()Lorg/json/JSONObject;
    .locals 1

    .line 43
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVMetaManager;->metaDataObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getMetaKeys()[Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVMetaManager;->metaKeys:[Ljava/lang/String;

    return-object v0
.end method

.method public setMetaData(Ljava/lang/String;)V
    .locals 2

    const-string v0, "\""

    .line 29
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 32
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "\\"

    const-string v1, ""

    .line 34
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 35
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVMetaManager;->metaDataObject:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVMetaManager;->metaDataObject:Lorg/json/JSONObject;

    :cond_1
    :goto_0
    return-void
.end method

.method public setMetaKeys([Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVMetaManager;->metaKeys:[Ljava/lang/String;

    return-void
.end method
