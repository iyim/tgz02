.class public Lcom/alibaba/analytics/utils/ApiResponseParse$BizResponse;
.super Ljava/lang/Object;
.source "ApiResponseParse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/analytics/utils/ApiResponseParse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BizResponse"
.end annotation


# static fields
.field public static defaultResponse:Lcom/alibaba/analytics/utils/ApiResponseParse$BizResponse;


# instance fields
.field public bizCode:Ljava/lang/String;

.field public errCode:Ljava/lang/String;

.field public isSuccess:Z

.field public receiveLen:I

.field public rt:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/alibaba/analytics/utils/ApiResponseParse$BizResponse;

    invoke-direct {v0}, Lcom/alibaba/analytics/utils/ApiResponseParse$BizResponse;-><init>()V

    sput-object v0, Lcom/alibaba/analytics/utils/ApiResponseParse$BizResponse;->defaultResponse:Lcom/alibaba/analytics/utils/ApiResponseParse$BizResponse;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/alibaba/analytics/utils/ApiResponseParse$BizResponse;->isSuccess:Z

    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, Lcom/alibaba/analytics/utils/ApiResponseParse$BizResponse;->bizCode:Ljava/lang/String;

    .line 40
    iput v0, p0, Lcom/alibaba/analytics/utils/ApiResponseParse$BizResponse;->receiveLen:I

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lcom/alibaba/analytics/utils/ApiResponseParse$BizResponse;->rt:D

    return-void
.end method


# virtual methods
.method public isNotFoundSecret()Z
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/alibaba/analytics/utils/ApiResponseParse$BizResponse;->bizCode:Ljava/lang/String;

    const-string v1, "E0111"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/analytics/utils/ApiResponseParse$BizResponse;->bizCode:Ljava/lang/String;

    const-string v1, "E0112"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isParamError()Z
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/alibaba/analytics/utils/ApiResponseParse$BizResponse;->bizCode:Ljava/lang/String;

    const-string v1, "E0101"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSignError()Z
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/alibaba/analytics/utils/ApiResponseParse$BizResponse;->bizCode:Ljava/lang/String;

    const-string v1, "E0102"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
