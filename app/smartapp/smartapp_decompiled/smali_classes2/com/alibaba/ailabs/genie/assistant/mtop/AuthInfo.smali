.class public Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfo;
.super Ljava/lang/Object;
.source "AuthInfo.java"


# instance fields
.field token:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "token"
    .end annotation
.end field

.field userId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "userId"
    .end annotation
.end field

.field uuid:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "uuid"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfo;->userId:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfo;->uuid:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfo;->token:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfo;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfo;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfo;->token:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfo;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfo;->uuid:Ljava/lang/String;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .line 54
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfo;->toJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
