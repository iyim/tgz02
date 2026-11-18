.class public final Lcom/rich/czlylibary/sdk/HttpClientManager;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static cancelTag(Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p0, v0}, Lcom/rich/czlylibary/b/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/rich/czlylibary/manager/b;->a(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static findMusicInfoByid(Ljava/lang/String;Ljava/lang/String;Lcom/rich/czlylibary/sdk/ResultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/rich/czlylibary/sdk/ResultCallback<",
            "Lcom/rich/czlylibary/bean/MusicinfoResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "musicId"

    invoke-static {p0, v0}, Lcom/rich/czlylibary/b/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "resultCallback"

    invoke-static {p2, v1}, Lcom/rich/czlylibary/b/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "picSize"

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-class p0, Lcom/rich/czlylibary/bean/MusicinfoResult;

    const-string p1, "https://open.migu.cn:98/sportMusic/2.0/rest/music/get"

    invoke-static {p1, p0, v1, p2}, Lcom/rich/czlylibary/manager/b;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/util/HashMap;Lcom/rich/czlylibary/sdk/ResultCallback;)V

    return-void
.end method
