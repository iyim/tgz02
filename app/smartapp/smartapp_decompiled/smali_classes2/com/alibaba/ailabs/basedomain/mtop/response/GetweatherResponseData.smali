.class public Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData;
.super Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;
.source "GetweatherResponseData.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean;
    }
.end annotation


# instance fields
.field private model:Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean;

.field private statusCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getModel()Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData;->model:Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData;->statusCode:Ljava/lang/String;

    return-object v0
.end method

.method public setModel(Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData;->model:Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData$ModelBean;

    return-void
.end method

.method public setStatusCode(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/GetweatherResponseData;->statusCode:Ljava/lang/String;

    return-void
.end method
