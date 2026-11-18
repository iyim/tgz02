.class public Lcom/alibaba/ailabs/genie/assistant/mtop/AicloudTPhotoTokenData;
.super Ljava/lang/Object;
.source "AicloudTPhotoTokenData.java"


# instance fields
.field private accessToken:Ljava/lang/String;

.field private expiretime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/mtop/AicloudTPhotoTokenData;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiretime()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/mtop/AicloudTPhotoTokenData;->expiretime:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/mtop/AicloudTPhotoTokenData;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public setExpiretime(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/mtop/AicloudTPhotoTokenData;->expiretime:Ljava/lang/String;

    return-void
.end method
