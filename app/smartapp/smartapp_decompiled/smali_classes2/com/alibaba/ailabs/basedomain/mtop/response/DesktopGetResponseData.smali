.class public Lcom/alibaba/ailabs/basedomain/mtop/response/DesktopGetResponseData;
.super Ljava/lang/Object;
.source "DesktopGetResponseData.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/basedomain/mtop/response/DesktopGetResponseData$ModelBean;
    }
.end annotation


# instance fields
.field private model:Lcom/alibaba/ailabs/basedomain/mtop/response/DesktopGetResponseData$ModelBean;

.field private msgCode:Ljava/lang/String;

.field private msgInfo:Ljava/lang/String;

.field private statusCode:Ljava/lang/String;

.field private success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getModel()Lcom/alibaba/ailabs/basedomain/mtop/response/DesktopGetResponseData$ModelBean;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/DesktopGetResponseData;->model:Lcom/alibaba/ailabs/basedomain/mtop/response/DesktopGetResponseData$ModelBean;

    return-object v0
.end method

.method public getMsgCode()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/DesktopGetResponseData;->msgCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgInfo()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/DesktopGetResponseData;->msgInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/DesktopGetResponseData;->statusCode:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/DesktopGetResponseData;->success:Z

    return v0
.end method

.method public setModel(Lcom/alibaba/ailabs/basedomain/mtop/response/DesktopGetResponseData$ModelBean;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/DesktopGetResponseData;->model:Lcom/alibaba/ailabs/basedomain/mtop/response/DesktopGetResponseData$ModelBean;

    return-void
.end method

.method public setMsgCode(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/DesktopGetResponseData;->msgCode:Ljava/lang/String;

    return-void
.end method

.method public setMsgInfo(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/DesktopGetResponseData;->msgInfo:Ljava/lang/String;

    return-void
.end method

.method public setStatusCode(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/DesktopGetResponseData;->statusCode:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/DesktopGetResponseData;->success:Z

    return-void
.end method
