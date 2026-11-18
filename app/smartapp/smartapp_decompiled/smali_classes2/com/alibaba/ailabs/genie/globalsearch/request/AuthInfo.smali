.class public Lcom/alibaba/ailabs/genie/globalsearch/request/AuthInfo;
.super Ljava/lang/Object;
.source "AuthInfo.java"


# static fields
.field private static instance:Lcom/alibaba/ailabs/genie/globalsearch/request/AuthInfo;


# instance fields
.field public token:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "token"
    .end annotation
.end field

.field public userId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "userId"
    .end annotation
.end field

.field public uuid:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "uuid"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/globalsearch/request/AuthInfo;
    .locals 2

    .line 45
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/request/AuthInfo;->instance:Lcom/alibaba/ailabs/genie/globalsearch/request/AuthInfo;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/request/AuthInfo;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/globalsearch/request/AuthInfo;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/globalsearch/request/AuthInfo;->instance:Lcom/alibaba/ailabs/genie/globalsearch/request/AuthInfo;

    .line 47
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/request/AuthInfo;->instance:Lcom/alibaba/ailabs/genie/globalsearch/request/AuthInfo;

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUserID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/request/AuthInfo;->setUserId(Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/request/AuthInfo;->instance:Lcom/alibaba/ailabs/genie/globalsearch/request/AuthInfo;

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/request/AuthInfo;->setUuid(Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/request/AuthInfo;->instance:Lcom/alibaba/ailabs/genie/globalsearch/request/AuthInfo;

    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getMtopToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/globalsearch/request/AuthInfo;->setToken(Ljava/lang/String;)V

    .line 51
    :cond_0
    sget-object p0, Lcom/alibaba/ailabs/genie/globalsearch/request/AuthInfo;->instance:Lcom/alibaba/ailabs/genie/globalsearch/request/AuthInfo;

    return-object p0
.end method

.method public static resetData()V
    .locals 1

    const/4 v0, 0x0

    .line 54
    sput-object v0, Lcom/alibaba/ailabs/genie/globalsearch/request/AuthInfo;->instance:Lcom/alibaba/ailabs/genie/globalsearch/request/AuthInfo;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/request/AuthInfo;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/request/AuthInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/request/AuthInfo;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/request/AuthInfo;->token:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/request/AuthInfo;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/request/AuthInfo;->uuid:Ljava/lang/String;

    return-void
.end method
