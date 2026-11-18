.class public Lcom/alibaba/motu/tbrest/SendService;
.super Ljava/lang/Object;
.source "SendService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/motu/tbrest/SendService$RestThread;
    }
.end annotation


# static fields
.field static final instance:Lcom/alibaba/motu/tbrest/SendService;


# instance fields
.field public appId:Ljava/lang/String;

.field public appKey:Ljava/lang/String;

.field public appVersion:Ljava/lang/String;

.field public channel:Ljava/lang/String;

.field public context:Landroid/content/Context;

.field public host:Ljava/lang/String;

.field public openHttp:Ljava/lang/Boolean;

.field private sendAsyncExecutor:Lcom/alibaba/motu/tbrest/SendAsyncExecutor;

.field public userNick:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lcom/alibaba/motu/tbrest/SendService;

    invoke-direct {v0}, Lcom/alibaba/motu/tbrest/SendService;-><init>()V

    sput-object v0, Lcom/alibaba/motu/tbrest/SendService;->instance:Lcom/alibaba/motu/tbrest/SendService;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/alibaba/motu/tbrest/SendService;->context:Landroid/content/Context;

    .line 29
    iput-object v0, p0, Lcom/alibaba/motu/tbrest/SendService;->appId:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/alibaba/motu/tbrest/SendService;->appKey:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/alibaba/motu/tbrest/SendService;->appVersion:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/alibaba/motu/tbrest/SendService;->channel:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/alibaba/motu/tbrest/SendService;->userNick:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/alibaba/motu/tbrest/SendService;->host:Ljava/lang/String;

    const/4 v0, 0x0

    .line 59
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/motu/tbrest/SendService;->openHttp:Ljava/lang/Boolean;

    .line 65
    new-instance v0, Lcom/alibaba/motu/tbrest/SendAsyncExecutor;

    invoke-direct {v0}, Lcom/alibaba/motu/tbrest/SendAsyncExecutor;-><init>()V

    iput-object v0, p0, Lcom/alibaba/motu/tbrest/SendService;->sendAsyncExecutor:Lcom/alibaba/motu/tbrest/SendAsyncExecutor;

    return-void
.end method

.method private canSend()Ljava/lang/Boolean;
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/alibaba/motu/tbrest/SendService;->appId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/motu/tbrest/SendService;->appVersion:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/motu/tbrest/SendService;->appKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/motu/tbrest/SendService;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 207
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 203
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "have send args is null\uff0cyou must init first. appId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/motu/tbrest/SendService;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " appVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/motu/tbrest/SendService;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " appKey "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/motu/tbrest/SendService;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/motu/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 205
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/alibaba/motu/tbrest/SendService;
    .locals 1

    .line 68
    sget-object v0, Lcom/alibaba/motu/tbrest/SendService;->instance:Lcom/alibaba/motu/tbrest/SendService;

    return-object v0
.end method


# virtual methods
.method public changeHost(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 133
    iput-object p1, p0, Lcom/alibaba/motu/tbrest/SendService;->host:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public getChangeHost()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/alibaba/motu/tbrest/SendService;->host:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/alibaba/motu/tbrest/SendService;->context:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/alibaba/motu/tbrest/SendService;->appId:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/alibaba/motu/tbrest/SendService;->appKey:Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lcom/alibaba/motu/tbrest/SendService;->appVersion:Ljava/lang/String;

    .line 85
    iput-object p5, p0, Lcom/alibaba/motu/tbrest/SendService;->channel:Ljava/lang/String;

    .line 86
    iput-object p6, p0, Lcom/alibaba/motu/tbrest/SendService;->userNick:Ljava/lang/String;

    return-void
.end method

.method public sendRequest(Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Boolean;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    move-object v0, p0

    .line 152
    invoke-direct {p0}, Lcom/alibaba/motu/tbrest/SendService;->canSend()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    .line 154
    iget-object v1, v0, Lcom/alibaba/motu/tbrest/SendService;->host:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "h-adashx.ut.taobao.com"

    :goto_0
    move-object v3, v1

    goto :goto_1

    :cond_1
    move-object v3, p1

    .line 160
    :goto_1
    iget-object v2, v0, Lcom/alibaba/motu/tbrest/SendService;->context:Landroid/content/Context;

    move-wide v4, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-static/range {v2 .. v11}, Lcom/alibaba/motu/tbrest/rest/RestReqSend;->sendLog(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_2
    const/4 v1, 0x0

    .line 162
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public sendRequestAsyn(Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v13, p0

    .line 170
    invoke-direct {p0}, Lcom/alibaba/motu/tbrest/SendService;->canSend()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 172
    iget-object v0, v13, Lcom/alibaba/motu/tbrest/SendService;->host:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "h-adashx.ut.taobao.com"

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object/from16 v4, p1

    .line 179
    :goto_1
    new-instance v14, Lcom/alibaba/motu/tbrest/SendService$RestThread;

    iget-object v3, v13, Lcom/alibaba/motu/tbrest/SendService;->context:Landroid/content/Context;

    const-string v2, "rest thread"

    move-object v0, v14

    move-object v1, p0

    move-wide/from16 v5, p2

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/motu/tbrest/SendService$RestThread;-><init>(Lcom/alibaba/motu/tbrest/SendService;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)V

    .line 181
    iget-object v0, v13, Lcom/alibaba/motu/tbrest/SendService;->sendAsyncExecutor:Lcom/alibaba/motu/tbrest/SendAsyncExecutor;

    invoke-virtual {v0, v14}, Lcom/alibaba/motu/tbrest/SendAsyncExecutor;->start(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public sendRequestByUrl(Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 191
    invoke-direct {p0}, Lcom/alibaba/motu/tbrest/SendService;->canSend()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 192
    iget-object v2, v0, Lcom/alibaba/motu/tbrest/SendService;->context:Landroid/content/Context;

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-static/range {v1 .. v10}, Lcom/alibaba/motu/tbrest/rest/RestReqSend;->sendLogByUrl(Ljava/lang/String;Landroid/content/Context;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    move-object v0, p0

    const/4 v1, 0x0

    return-object v1
.end method

.method public setOpenHttp(Ljava/lang/Boolean;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/alibaba/motu/tbrest/SendService;->openHttp:Ljava/lang/Boolean;

    return-void
.end method

.method public updateAppVersion(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 103
    iput-object p1, p0, Lcom/alibaba/motu/tbrest/SendService;->appVersion:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public updateChannel(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 123
    iput-object p1, p0, Lcom/alibaba/motu/tbrest/SendService;->channel:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public updateUserNick(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 113
    iput-object p1, p0, Lcom/alibaba/motu/tbrest/SendService;->userNick:Ljava/lang/String;

    :cond_0
    return-void
.end method
